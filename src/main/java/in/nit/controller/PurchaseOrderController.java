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

import in.nit.model.PurchaseOrder;
import in.nit.service.IPurchaseOrderService;
import in.nit.service.IShipmentTypeService;
import in.nit.service.IWhUserTypeService;
import in.nit.util.CommonUtil;
import in.nit.view.PurchaseOrderExcelView;
import in.nit.view.PurchaseOrderPdfView;

@Controller
@RequestMapping("/porder")
public class PurchaseOrderController {

	@Autowired
	private IPurchaseOrderService service;

	@Autowired
	private IShipmentTypeService shipService;

	@Autowired
	private IWhUserTypeService whUserTypeService;

	/*
	 * private PurchaseOrder po =new PurchaseOrder();
	 */
	private void commonUi(Model model) {
		List<Object[]> shipList= shipService.getShipIdAndCode();
		Map<Integer,String> shipMap= CommonUtil.convert(shipList);
		model.addAttribute("shipMap", shipMap);


		List<Object[]> whVenList=whUserTypeService.getWhUserTypeIdAndCode("Vendor");
		Map<Integer,String> whVenMap= CommonUtil.convert(whVenList);
		model.addAttribute("whVenMap", whVenMap);
	}

	@RequestMapping("/register")
	public String showPage(Model model) {

		/* po.setStatus("Open"); */
		model.addAttribute("purchaseOrder", new PurchaseOrder());
		commonUi(model);
		return "PurchaseOrderRegister";
	}

	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String savePage(@ModelAttribute PurchaseOrder purchaseOrder,Model model) {
		Integer id=service.savePurchaseOrder(purchaseOrder);
		String msg="Purchase Order '"+id+"' saved";
		model.addAttribute("message",msg);
		commonUi(model);
		model.addAttribute("purchaseOrder", new PurchaseOrder());
		return "PurchaseOrderRegister";
	}

	@RequestMapping("/all")
	public String getAllData(Model model) {
		List<PurchaseOrder> list= service.getAllPurchaseOrders();
		model.addAttribute("list", list);
		return "PurchaseOrderData";
	}

	@RequestMapping("delete")
	public String deleteData(@RequestParam Integer poid, Model model) {
		service.deletePurchaseOrder(poid);
		model.addAttribute("opr","DEL");
		model.addAttribute("message","PurchaseOrder '"+poid+"' deleted");
		return "PurchaseOrderData";
	}

	@RequestMapping("/view")
	public String viewOnePurchaseOrder(@RequestParam Integer poid, Model model) {
		PurchaseOrder ob=service.getOnePurchaseOrder(poid);
		model.addAttribute("ob",ob);
		return "PurchaseOrderView";
	}

	@RequestMapping("/edit")
	public String editPurchaseOrder(@RequestParam Integer poid,Model model) {
		PurchaseOrder ob= service.getOnePurchaseOrder(poid);
		model.addAttribute("purchaseOrder",ob);
		commonUi(model);
		return "PurchaseOrderEdit";
	}

	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String updatePurchaseOrder(@ModelAttribute PurchaseOrder purchaseOrder, Model model) {
		service.updatePurchaseOrder(purchaseOrder);
		model.addAttribute("message","PurchaseOrder '"+purchaseOrder.getPoid()+"' updated");
		List<PurchaseOrder> list=service.getAllPurchaseOrders();
		model.addAttribute("list",list);
		return "PurchaseOrderData";
	}

	@RequestMapping("/excel")
	public ModelAndView showExcelView(@RequestParam(value="id", required = false)Integer id) {
		ModelAndView m=new ModelAndView();
		m.setView(new PurchaseOrderExcelView());
		if(id==null) {
			List<PurchaseOrder> list=service.getAllPurchaseOrders();
			m.addObject("list",list);
		}
		else {
			PurchaseOrder po=service.getOnePurchaseOrder(id);
			m.addObject("list", Arrays.asList(po));
		}
		return m;
	}
	
	@RequestMapping("/pdf")
	public ModelAndView showPdfView(@RequestParam(value="id",required = false)Integer id) {
		ModelAndView m=new ModelAndView();
		m.setView(new PurchaseOrderPdfView());
		if(id==null) {
			List<PurchaseOrder> list=service.getAllPurchaseOrders();
			m.addObject("list",list);
		}
		else {
			PurchaseOrder po=service.getOnePurchaseOrder(id);
			m.addObject("list",Arrays.asList(po));
		}
		return m;
	}
}
