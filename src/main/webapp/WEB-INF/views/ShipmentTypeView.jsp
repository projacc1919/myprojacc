<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
	<H3>WELCOME TO SHIPMENT TYPE VIEW PAGE</H3>
	
	<a href="excel?id=${ob.shipId}"><img src="../resources/images/Excel.png" height="40" width="40"></a>   <a href="pdf?id=${ob.shipId}"><img src="../resources/images/pdf.png" height="40" width="40"></a>
	<table border="1">
		<tr>
			<th>ID</th>
			<td>${ob.shipId}</td>
		</tr>
		<tr>
			<th>MODE</th>
			<td>${ob.shipMode}</td>
		</tr>
		<tr>
			<th>CODE</th>
			<td>${ob.shipCode }</td>
		</tr>
		<tr>
			<th>ENABLE</th>
			<td>${ob.enbShip }</td>
		</tr>
		<tr>
			<th>GRADE</th>
			<td>${ob.shipGrade }</td>
		</tr>
		<tr>
			<th>NOTE</th>
			<td>${ob.shipDesc }</td>
		</tr>
	</table>

</body>
</html>