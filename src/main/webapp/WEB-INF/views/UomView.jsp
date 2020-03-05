<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
<%@include file="UserMenu.jsp" %>
<div class="container">
<div class="card">
<div class="card-header text-center bg-info text-white">
	<H3>WELCOME TO UOM VIEW PAGE</H3>
</div>
<div class="card-body">
	<a href="excel?id=${ob.uomId}"><img src="../resources/images/Excel.png" height="40" width="40"></a>   <a href="pdf?id=${ob.uomId}"><img src="../resources/images/pdf.png" height="40" width="40"></a>
	<table class="table table-hover">
	
		<tr>
			<th class="bg-success text-white text-center">ID</th>
			<td class="text-center">${ob.uomId}</td>
		</tr>
		<tr>
			<th class="bg-success text-white text-center">TYPE</th>
			<td class="text-center">${ob.uomType}</td>
		</tr>
		<tr>
			<th class="bg-success text-white text-center">MODEL</th>
			<td class="text-center">${ob.uomModel}</td>
		</tr>
		<tr>
			<th class="bg-success text-white text-center">NOTE</th>
			<td class="text-center">${ob.uomDesc}</td>
		</tr>
	</table>
</div>	<!-- card body -->
</div> <!-- card -->
</div> <!-- container -->
</body>
</html>