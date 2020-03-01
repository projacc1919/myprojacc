<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<body>
	<h3>WELCOME TO PART VIEW PAGE</h3>
	<a href="excel?id=${ob.partId}"><img src="../resources/images/Excel.png" height="40" width="40"></a>   <a href="pdf?id=${ob.partId}"><img src="../resources/images/pdf.png" height="40" width="40"></a>
	<table border="1">
		<tr>
			<th>ID</th>
			<td>${ob.partId }</td>
		</tr>
		<tr>
			<th>CODE</th>
			<td>${ob.partCode }</td>
		</tr>
		<tr>
			<th>DIMENSION</th>
			<td>${ob.partDim }</td>
		</tr>
		<tr>
			<th>COST</th>
			<td>${ob.baseCost }</td>
		</tr>
		<tr>
			<th>CURRENCY</th>
			<td>${ob.baseCurr }</td>
		</tr>
		<tr>
			<th>NOTE</th>
			<td>${ob.partDesc }</td>
		</tr>
	</table>
</body>
</html>