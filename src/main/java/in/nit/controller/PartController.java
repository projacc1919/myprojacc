package in.nit.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import in.nit.model.Part;
import in.nit.service.IOrderMethodService;
import in.nit.service.IPartService;
import in.nit.service.IUomService;
import in.nit.util.CommonUtil;
import in.nit.view.PartExcelView;
import in.nit.view.PartPdfView;

@Controller
@RequestMapping("/part")
public class PartController {

	@Autowired
	private IPartService service;
	
	@Autowired
	private IUomService uomService;
	
	@Autowired
	private IOrderMethodService orderService;

	private void commonUi(Model model) {
		List<Object[]> uomlist=uomService.getuomIdAnduomModel();
		Map<Integer,String> uomMap=CommonUtil.convert(uomlist);
		model.addAttribute("uomMap",uomMap);
		
		List<Object[]> omSaleList=orderService.getOrderIdAndCode("Sale");
		Map<Integer,String> omSaleMap=CommonUtil.convert(omSaleList);
		model.addAttribute("omSaleMap", omSaleMap);
		
		List<Object[]> omPurList=orderService.getOrderIdAndCode("Purchase");
		Map<Integer,String> omPurMap= CommonUtil.convert(omPurList);
		model.addAttribute("omPurMap", omPurMap);
		
	}
	
	
	@RequestMapping("/register")
	public String showReg(Model model) {
		model.addAttribute("part", new Part());
		commonUi(model);
		return "PartRegister";
	}

	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String savePart(@ModelAttribute Part part,Model model) {
		Integer id=service.savePart(part);
		String message="Part '"+id+"' is saved";
		model.addAttribute("part", new Part());
		commonUi(model);
		model.addAttribute("message",message);
		return "PartRegister";

	}

	@RequestMapping("/all")
	public String getAllParts(Model model) {
		List<Part> list=service.getAllParts();
		model.addAttribute("list",list);
		return "PartData";

	}

	@RequestMapping("/delete")
	public String deletePart(@RequestParam Integer pid, Model model) {
		service.deletePart(pid);
		List<Part> list=service.getAllParts();
		model.addAttribute("list",list);
		model.addAttribute("opr","DEL");
		model.addAttribute("message","Part '"+pid+"' deleted");
		return "PartData";
	}

	@RequestMapping("/edit")
	public String showEditPage(@RequestParam Integer pid, Model model) {
		Part p=service.getOnePart(pid);
		model.addAttribute("part",p);
		commonUi(model);
		return "PartEdit";
	}

	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String updatePart(@ModelAttribute Part part,Model model) {
		service.updatePart(part);
		model.addAttribute("message", "Part '"+part.getPartId()+"' updated");
		List<Part> list=service.getAllParts();
		model.addAttribute("list",list);
		return "PartData";
	}

	@RequestMapping("/view")
	public String showView(@RequestParam Integer pid,Model model) {
		Part p=service.getOnePart(pid);
		model.addAttribute("ob", p);
		return "PartView";
	}

	@RequestMapping("/excel")
	public ModelAndView showExcel(@RequestParam(value="id", required = false)Integer id) {
		ModelAndView m=new ModelAndView();
		m.setView(new PartExcelView());
		if(id==null) {
			List<Part> list=service.getAllParts();
			m.addObject("list",list);
		}
		else {
			Part p=service.getOnePart(id);
			m.addObject("list", Arrays.asList(p));
		}
		return m;
	}

	@RequestMapping("/pdf")
	public ModelAndView showPdf(@RequestParam(value="id", required = false)Integer id) {
		ModelAndView m=new ModelAndView();
		m.setView(new PartPdfView());

		if(id==null) {
			List<Part> list=service.getAllParts();
			m.addObject("list",list);
		}
		else {
			Part p=service.getOnePart(id);
			m.addObject("list",Arrays.asList(p));
		}
		return m;
	}
}
