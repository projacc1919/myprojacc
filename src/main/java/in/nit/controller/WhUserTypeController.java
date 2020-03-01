package in.nit.controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import in.nit.model.WhUserType;
import in.nit.service.IWhUserTypeService;
import in.nit.util.WhUserTypeUtil;
import in.nit.view.WhUserTypeExcelView;
import in.nit.view.WhUserTypePdfView;

@Controller
@RequestMapping("/whusertype")
public class WhUserTypeController {
	
	@Autowired
	private IWhUserTypeService service;

	@Autowired
	private ServletContext context;
	
	@Autowired
	private WhUserTypeUtil util;
	
	@RequestMapping("/register")
	public String showRegPage(Model model) {
		model.addAttribute("whusertype",new WhUserType());
		return "WhUserTypeRegister";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String saveWhUserType(@ModelAttribute WhUserType whusertype, Model model) {
		Integer id=service.saveWhUserType(whusertype);
		String message="WH User Type '"+id+"' saved";
		model.addAttribute("message", message);
		model.addAttribute("whusertype", new WhUserType());
		return "WhUserTypeRegister";
		
	}
	
	@RequestMapping("/all")
	public String getAllWhUserType(Model model){
		List<WhUserType> list=service.getAllWhUserType();
		model.addAttribute("list",list);
		return "WhUserTypeData";
	}
	
	@RequestMapping("/delete")
	public String deleteWhUserType(@RequestParam("wid")Integer id, Model model) {
		service.deleteWhUserType(id);
		String message="WH User Type '"+id+"' Deleted";
		model.addAttribute("message",message);
		List<WhUserType> list=service.getAllWhUserType();
		model.addAttribute("list",list);
		return "WhUserTypeData";
	}
	
	@RequestMapping("/edit")
	public String editWhUser(@RequestParam("wid")Integer id,Model model) {
		WhUserType w=service.getOneWhUserType(id);
		model.addAttribute("whusertype",w);
		return "WhUserTypeEdit";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String updateWhUser(@ModelAttribute WhUserType whusertype, Model model) {
		service.updateWhUserType(whusertype);
		String message="WH User Type '"+whusertype.getWhId()+"' updated";
		model.addAttribute("message",message);
		List<WhUserType> list=service.getAllWhUserType();
		model.addAttribute("list",list);
		return "WhUserTypeData";
	}
	
	@RequestMapping("/view")
	public String viewWhUserData(@RequestParam("wid")Integer id, Model model) {
		WhUserType w=service.getOneWhUserType(id);
		model.addAttribute("ob",w);
		return "WhUserTypeView";
	}
	
	@RequestMapping("/excel")
	public ModelAndView showExcel(@RequestParam(value="id",required=false)Integer id) {
		ModelAndView m=new ModelAndView();
		m.setView(new WhUserTypeExcelView());
		if(id==null) {
		List<WhUserType> list=service.getAllWhUserType();
		m.addObject("list",list);
		}
		else {
			WhUserType w=service.getOneWhUserType(id);
			m.addObject("list",Arrays.asList(w));
		}
		return m;
		
	}
	
	@RequestMapping("/pdf")
	public ModelAndView showPdf(@RequestParam(value="id",required=false)Integer id) {
		ModelAndView m=new ModelAndView();
		m.setView(new WhUserTypePdfView());
		if(id==null) {
		List<WhUserType> list=service.getAllWhUserType();
		m.addObject("list", list);
		}
		else {
			WhUserType w=service.getOneWhUserType(id);
			m.addObject("list", Arrays.asList(w));
		}
		return m;
	}
	
	@RequestMapping("/chart")
	public String showChart() {
		List<Object[]> list=service.getWhUserIdTypeCount();
		String path=context.getRealPath("/");
		util.generatePie(path, list);
		util.generateBar(path,list);
		return "WhUserTypeCharts";
	}
}
