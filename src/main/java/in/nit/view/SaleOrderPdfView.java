package in.nit.view;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.document.AbstractPdfView;

import com.lowagie.text.Document;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;

import in.nit.model.SaleOrder;

public class SaleOrderPdfView extends AbstractPdfView {

	@Override
	protected void buildPdfDocument(Map<String, Object> model, 
			Document document, PdfWriter writer,
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		response.addHeader("Content-Disposition","attachment;filename=SaleOrder.pdf");

		Paragraph p=new Paragraph("WELCOME TO SALE ORDER FILE");

		document.add(p);

		PdfPTable t=new PdfPTable(9);
		t.addCell("ID");
		t.addCell("ORDER CODE");
		t.addCell("SHIPMENT CODE");
		t.addCell("CUSTOMER");
		t.addCell("REF NUMBER");
		t.addCell("STOCK MODE");
		t.addCell("STOCK SOURCE");
		t.addCell("DEFAULT STATUS");
		t.addCell("NOTE");

		@SuppressWarnings("unchecked")
		List<SaleOrder> list=(List<SaleOrder>) model.get("list");

		for(SaleOrder so:list) {
			t.addCell(so.getSoid().toString());
			t.addCell(so.getOrderCode());
			t.addCell(so.getShipOb().getShipCode());
			t.addCell(so.getCustomer().getUserCode());
			t.addCell(so.getRefNum());
			t.addCell(so.getStockMode());
			t.addCell(so.getStockSource());
			t.addCell(so.getStatus());
			t.addCell(so.getDescription());
		}

		document.add(t);

		document.add(new Paragraph(new Date().toString()));

	}

}
