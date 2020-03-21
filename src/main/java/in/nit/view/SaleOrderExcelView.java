package in.nit.view;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsxView;

import in.nit.model.SaleOrder;

public class SaleOrderExcelView extends AbstractXlsxView {

	@Override
	protected void buildExcelDocument(Map<String, Object> model, 
			Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		response.addHeader("Content-Disposition", "attachment;filename=SaleOrder.xlsx");

		Sheet s=workbook.createSheet("SALE ORDER");

		setHeader(s);

		@SuppressWarnings("unchecked")
		List<SaleOrder> list=(List<SaleOrder>) model.get("list");

		setBody(s,list);

	}

	private void setHeader(Sheet s) {
		Row r=s.createRow(0);

		r.createCell(0).setCellValue("ID");
		r.createCell(1).setCellValue("ORDER CODE");
		r.createCell(2).setCellValue("SHIPMENT CODE");
		r.createCell(3).setCellValue("CUSTOMER");
		r.createCell(4).setCellValue("REF NUMBER");
		r.createCell(5).setCellValue("STOCK MODE");
		r.createCell(6).setCellValue("STOCK SOURCE");
		r.createCell(7).setCellValue("DEFAULT STATUS");
		r.createCell(8).setCellValue("NOTE");

	}

	private void setBody(Sheet s,List<SaleOrder> list) {
		int count=1;

		for(SaleOrder so:list) {
			Row r=s.createRow(count++);

			r.createCell(0).setCellValue(so.getSoid());
			r.createCell(1).setCellValue(so.getOrderCode());
			r.createCell(2).setCellValue(so.getShipOb().getShipCode());
			r.createCell(3).setCellValue(so.getCustomer().getUserCode());
			r.createCell(4).setCellValue(so.getRefNum());
			r.createCell(5).setCellValue(so.getStockMode());
			r.createCell(6).setCellValue(so.getStockSource());
			r.createCell(7).setCellValue(so.getStatus());
			r.createCell(8).setCellValue(so.getDescription());
		}

	}

}