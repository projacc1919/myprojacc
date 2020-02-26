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

import in.nit.model.WhUserType;

public class WhUserTypePdfView extends AbstractPdfView {

	@SuppressWarnings("unchecked")
	@Override
	protected void buildPdfDocument(Map<String, Object> model, Document document, PdfWriter writer,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		response.addHeader("Content-Disposition", "attachment;filename=whusertype.pdf");
		
		Paragraph p=new Paragraph("WELCOME TO WH USER TYPE PDF VIEW");
		document.add(p);
		
		List<WhUserType> list=(List<WhUserType>) model.get("list");
		
		PdfPTable t=new PdfPTable(9);
		t.addCell("ID");
		t.addCell("TYPE");
		t.addCell("CODE");
		t.addCell("FOR");
		t.addCell("EMAIL");
		t.addCell("CONTACT");
		t.addCell("ID TYPE");
		t.addCell("IF OTHER");
		t.addCell("ID NUMBER");
		
		for(WhUserType w:list) {
			t.addCell(w.getWhId().toString());
			t.addCell(w.getUserType());
			t.addCell(w.getUserCode());
			t.addCell(w.getUserFor());
			t.addCell(w.getUserEmail());
			t.addCell(w.getUserContact());
			t.addCell(w.getUserIdType());
			t.addCell(w.getIfOther());
			t.addCell(w.getIdNum());
		}
		
		document.add(t);
		document.add(new Paragraph(new Date().toString()));
	}

}
