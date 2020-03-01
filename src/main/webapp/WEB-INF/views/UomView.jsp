<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
	<H3>WELCOME TO UOM VIEW PAGE</H3>
	
	<a href="excel?id=${ob.uomId}"><img src="../resources/images/Excel.png" height="40" width="40"></a>   <a href="pdf?id=${ob.uomId}"><img src="../resources/images/pdf.png" height="40" width="40"></a>
	<table border="1">
	
		<tr>
			<th>ID</th>
			<td>${ob.uomId}</td>
		</tr>
		<tr>
			<th>TYPE</th>
			<td>${ob.uomType}</td>
		</tr>
		<tr>
			<th>MODEL</th>
			<td>${ob.uomModel}</td>
		</tr>
		<tr>
			<th>NOTE</th>
			<td>${ob.uomDesc}</td>
		</tr>
	</table>
</body>
</html>