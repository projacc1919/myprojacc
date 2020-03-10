<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<body>
<%@include file="UserMenu.jsp" %>
<div class="container">
<div class="card">
<div class="card-header text-white text-center bg-info">
	<h3>WELCOME TO PART VIEW PAGE</h3>
</div>
<div class="card-body">
	<a href="excel?id=${ob.partId}"><img src="../resources/images/Excel.png" height="40" width="40"></a>   <a href="pdf?id=${ob.partId}"><img src="../resources/images/pdf.png" height="40" width="40"></a>
	<table class="table table-hover">
		<tr>
			<th class="text-white text-center bg-success">ID</th>
			<td class="text-center">${ob.partId }</td>
		</tr>
		<tr>
			<th class="text-white text-center bg-success">CODE</th>
			<td class="text-center">${ob.partCode }</td>
		</tr>
		<tr>
			<th class="text-white text-center bg-success">LENGTH</th>
			<td class="text-center">${ob.partLen }</td>
		</tr>
		<tr>
			<th class="text-white text-center bg-success">WIDTH</th>
			<td class="text-center">${ob.partWid }</td>
		</tr>
		<tr>
			<th class="text-white text-center bg-success">HEIGHT</th>
			<td class="text-center">${ob.partHgt }</td>
		</tr>
		<tr>
			<th class="text-white text-center bg-success">COST</th>
			<td class="text-center">${ob.baseCost }</td>
		</tr>
		<tr>
			<th class="text-white text-center bg-success">CURRENCY</th>
			<td class="text-center">${ob.baseCurr }</td>
		</tr>
		<tr>
			<th class="text-white text-center bg-success">UOM</th>
			<td class="text-center">${ob.uomOb.uomModel }</td>
		</tr>
		<tr>
			<th class="text-white text-center bg-success">ORDER METHOD</th>
			<td class="text-center">${ob.omSaleOb.orderCode }</td>
			<td class="text-center">${ob.omPurchaseOb.orderCode }</td>
		</tr>
		<tr>
			<th class="text-white text-center bg-success">NOTE</th>
			<td class="text-center">${ob.partDesc }</td>
		</tr>
	</table>
</div> <!-- card body -->
</div> <!-- card -->
</div> <!-- container -->
</body>
</html>