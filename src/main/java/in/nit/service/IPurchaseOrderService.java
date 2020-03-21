package in.nit.service;

import java.util.List;

import in.nit.model.PurchaseOrder;

public interface IPurchaseOrderService {
	
	public Integer savePurchaseOrder(PurchaseOrder ob);
	public List<PurchaseOrder> getAllPurchaseOrders();
	public void deletePurchaseOrder(Integer id);
	public PurchaseOrder getOnePurchaseOrder(Integer id);
	public void updatePurchaseOrder(PurchaseOrder ob);
}
