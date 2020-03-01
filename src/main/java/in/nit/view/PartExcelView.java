package in.nit.view;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsxView;

import in.nit.model.Part;

public class PartExcelView extends AbstractXlsxView {

	@Override
	protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		response.addHeader("Content-Disposition", "attachment;filename=part.xslx");
		
		Sheet s=workbook.createSheet("PART");

		setHeader(s);
		
		@SuppressWarnings("unchecked")
		List<Part> list=(List<Part>) model.get("list");
		
		setBody(s,list);
	}
	
	private void setHeader(Sheet s) {
		Row r=s.createRow(0);
		r.createCell(0).setCellValue("ID");
		r.createCell(1).setCellValue("CODE");
		r.createCell(2).setCellValue("DIMENSION");
		r.createCell(3).setCellValue("COST");
		r.createCell(4).setCellValue("CURRENCY");
		r.createCell(5).setCellValue("NOTE");
	}
	
	private void setBody(Sheet s,List<Part> list) {
		int count=1;
		for (Part p : list) {
			Row r=s.createRow(count++);
			r.createCell(0).setCellValue(p.getPartId());
			r.createCell(1).setCellValue(p.getPartCode());
			r.createCell(2).setCellValue(p.getPartDim().toString());
			r.createCell(3).setCellValue(p.getBaseCost());
			r.createCell(4).setCellValue(p.getBaseCurr());
			r.createCell(5).setCellValue(p.getPartDesc());
		}
	}

}
