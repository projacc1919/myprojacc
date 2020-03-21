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

import in.nit.model.PurchaseOrder;

public class PurchaseOrderPdfView extends AbstractPdfView {

	@Override
	protected void buildPdfDocument(Map<String, Object> model, 
			Document document, PdfWriter writer,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		response.addHeader("Content-Disposition", "attachment;filename=purchaseOrder.pdf");
		
		Paragraph p=new Paragraph("WELCOME TO PURCHASE ORDER TYPE");
		
		document.add(p);
		
		@SuppressWarnings("unchecked")
		List<PurchaseOrder> list=(List<PurchaseOrder>) model.get("list");
		
		PdfPTable t=new PdfPTable(8);
		t.addCell("ID");
		t.addCell("ORDER CODE");
		t.addCell("SHIPMENT CODE");
		t.addCell("VENDOR");
		t.addCell("REF NUMBER");
		t.addCell("QUALITY CHECK");
		t.addCell("STATUS");
		t.addCell("NOTE");
		
		for(PurchaseOrder po:list) {
			t.addCell(po.getPoid().toString());
			t.addCell(po.getPurchaseOrderCode());
			t.addCell(po.getShipOb().getShipCode());
			t.addCell(po.getVendor().getUserCode());
			t.addCell(po.getRefNum());
			t.addCell(po.getQualityCheck());
			t.addCell(po.getStatus());
			t.addCell(po.getDescription());
		}

		document.add(t);
		
		document.add(new Paragraph(new Date().toString()));
	}

}
