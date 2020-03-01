package in.nit.util;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtils;
import org.jfree.chart.JFreeChart;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.springframework.stereotype.Component;

@Component
public class OrderMethodUtil {

	public void generatePie(String path,List<Object[]> data) {
		DefaultPieDataset dataset=new DefaultPieDataset();
		for(Object[] arr:data) {
			dataset.setValue(arr[0].toString(),Double.valueOf(arr[1].toString()));
		}
		
		JFreeChart chart=ChartFactory.createPieChart3D("Order Method Types", dataset,true, true, false);
		
		try {
			ChartUtils.saveChartAsJPEG(new File(path+"/resources/images/ordermethodA.jpg"), chart, 400, 400);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public void generateBar(String path,List<Object[]> data) {
		DefaultCategoryDataset dataset=new DefaultCategoryDataset();
		for(Object[] arr:data) {
			dataset.setValue(Double.valueOf(arr[1].toString()),arr[0].toString(), "");
		}
		
		JFreeChart chart=ChartFactory.createBarChart("Order Method Types", "Types", "COUNT", dataset);
		
		try {
			ChartUtils.saveChartAsJPEG(new File(path+"/resources/images/ordermethodB.jpg"), chart, 400, 400);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}