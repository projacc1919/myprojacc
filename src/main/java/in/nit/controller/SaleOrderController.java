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

import in.nit.model.SaleOrder;
import in.nit.service.ISaleOrderService;
import in.nit.service.IShipmentTypeService;
import in.nit.service.IWhUserTypeService;
import in.nit.util.CommonUtil;
import in.nit.view.SaleOrderExcelView;
import in.nit.view.SaleOrderPdfView;

@Controller
@RequestMapping("/sorder")
public class SaleOrderController {

	@Autowired
	private ISaleOrderService service;

	@Autowired
	private IShipmentTypeService shipService;

	@Autowired
	private IWhUserTypeService whUserService;

	private void commonUi(Model model) {
		List<Object[]> shipList=shipService.getShipIdAndCode();
		Map<Integer,String> shipMap= CommonUtil.convert(shipList);
		model.addAttribute("shipMap",shipMap);

		List<Object[]> whCusList=whUserService.getWhUserTypeIdAndCode("Customer");
		Map<Integer,String> whCusMap= CommonUtil.convert(whCusList);
		model.addAttribute("whCusMap",whCusMap);
	}

	@RequestMapping("/register")
	public String showRegPage(Model model) {
		model.addAttribute("saleOrder", new SaleOrder());
		commonUi(model);
		return "SaleOrderRegister";
	}


	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String saveSaleOrder(@ModelAttribute SaleOrder saleOrder, Model model) {
		Integer id=service.saveSaleOrder(saleOrder);
		model.addAttribute("message", "Sale Order '"+id+"' is saved");
		model.addAttribute("saleOrder", new SaleOrder());
		commonUi(model);
		return "SaleOrderRegister";
	}

	@RequestMapping("/all")
	public String showDataPage(Model model) {
		List<SaleOrder> list=service.getAllSaleOrders();
		model.addAttribute("list",list);
		return "SaleOrderData";
	}

	@RequestMapping("/edit")
	public String showEditPage(@RequestParam Integer id, Model model) {
		SaleOrder so=service.getOneSaleOrder(id);
		model.addAttribute("saleOrder", so);
		commonUi(model);
		return "SaleOrderEdit"; 
	}

	@RequestMapping(value="/update",method = RequestMethod.POST)
	public String updateSaleOrder(@ModelAttribute SaleOrder saleOrder, Model model) {
		service.updateSaleOrder(saleOrder);
		model.addAttribute("message","SaleOrder '"+saleOrder.getSoid()+"' updated");
		List<SaleOrder> list=service.getAllSaleOrders();
		model.addAttribute("list",list);
		return "SaleOrderData";
	}

	@RequestMapping("/delete")
	public String deleteSaleOrder(@RequestParam Integer id,Model model) {
		service.deleteSaleOrder(id);
		model.addAttribute("message", "SaleOrder '"+id+"' deleted");
		List<SaleOrder> list=service.getAllSaleOrders();
		model.addAttribute("opr","DEL");
		model.addAttribute("list",list);
		return "SaleOrderData";
	}

	@RequestMapping("/view")
	public String viewSaleOrder(@RequestParam Integer id,Model model) {
		SaleOrder so=service.getOneSaleOrder(id);
		model.addAttribute("ob",so);
		return "SaleOrderView";		
	}

	@RequestMapping("/excel")
	public ModelAndView excelView(@RequestParam(value="id",required = false)Integer id) {
		ModelAndView m=new ModelAndView();
		m.setView(new SaleOrderExcelView());
		if(id==null) {
			List<SaleOrder> list=service.getAllSaleOrders();
			m.addObject("list", list);
		}
		else {
			SaleOrder so=service.getOneSaleOrder(id);
			m.addObject("list",Arrays.asList(so));
		}
		return m;
	}

	@RequestMapping("/pdf")
	public ModelAndView pdfView(@RequestParam(value="id", required = false)Integer id) {
		ModelAndView m=new ModelAndView();
		m.setView(new SaleOrderPdfView());
		if(id==null) {
			List<SaleOrder> list=service.getAllSaleOrders();
			m.addObject("list", list);
		}
		else {
			SaleOrder so=service.getOneSaleOrder(id);
			m.addObject("list",Arrays.asList(so));
		}
		return m;

	}
}
