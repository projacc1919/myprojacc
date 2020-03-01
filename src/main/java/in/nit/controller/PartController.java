package in.nit.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import in.nit.model.Part;
import in.nit.service.IPartService;
import in.nit.view.PartExcelView;
import in.nit.view.PartPdfView;

@Controller
@RequestMapping("/part")
public class PartController {

	@Autowired
	private IPartService service;

	@RequestMapping("/register")
	public String showReg(Model model) {
		model.addAttribute("part", new Part());
		return "PartRegister";
	}

	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String savePart(@ModelAttribute Part part,Model model) {
		Integer id=service.savePart(part);
		String message="Part '"+id+"' is saved";
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
		model.addAttribute("message","Part '"+pid+"' deleted");
		return "PartData";
	}

	@RequestMapping("/edit")
	public String showEditPage(@RequestParam Integer pid, Model model) {
		Part p=service.getOnePart(pid);
		model.addAttribute("part",p);
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
