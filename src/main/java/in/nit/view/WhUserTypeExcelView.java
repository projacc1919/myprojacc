package in.nit.view;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsxView;

import in.nit.model.WhUserType;

public class WhUserTypeExcelView extends AbstractXlsxView {

	@Override
	protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		response.addHeader("ContentDisposition","attachment;filename=whusertype.xlsx");
		
		Sheet s=workbook.createSheet("WH USER TYPE");
		
		setHeader(s);
		
		@SuppressWarnings("unchecked")
		List<WhUserType> list=(List<WhUserType>) model.get("list");
		
		setBody(s,list);
	}
		private void setHeader(Sheet s) {
			Row r=s.createRow(0);
			r.createCell(0).setCellValue("ID");
			r.createCell(1).setCellValue("TYPE");
			r.createCell(2).setCellValue("CODE");
			r.createCell(3).setCellValue("FOR");
			r.createCell(4).setCellValue("EMAIL");
			r.createCell(5).setCellValue("CONTACT");
			r.createCell(6).setCellValue("ID TYPE");
			r.createCell(7).setCellValue("IF OTHER");
			r.createCell(8).setCellValue("ID NUMBER");

	}
		private void setBody(Sheet s,List<WhUserType> list) {
			int count=1;
			for(WhUserType w:list) {
				Row r=s.createRow(count++);
				r.createCell(0).setCellValue(w.getWhId());
				r.createCell(1).setCellValue(w.getUserType());
				r.createCell(2).setCellValue(w.getUserCode());
				r.createCell(3).setCellValue(w.getUserFor());
				r.createCell(4).setCellValue(w.getUserEmail());
				r.createCell(5).setCellValue(w.getUserContact());
				r.createCell(6).setCellValue(w.getUserIdType());
				r.createCell(7).setCellValue(w.getIfOther());
				r.createCell(8).setCellValue(w.getIdNum());
			}
		}

}
