<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="UserMenu.jsp"%>
<!DOCTYPE html>
<html>
<body>
	<div class="container">
		<div class="card">
			<div class="card-header bg-info text-white text-center">
				<h3>WELCOME TO PURCHASE ORDER VIEW PAGE</h3>
			</div>
			<!-- card header -->
			<div class="card-body">
				<a href="excel?id=${ob.poid }"><img
					src="../resources/images/Excel.png" height="40" width="40"></a> <a
					href="pdf?id=${ob.poid }"><img
					src="../resources/images/pdf.png" height="40" width="40"></a>
				<table class="table table-hover">
					<tr>
						<th class="text-white bg-success">ID</th>
						<td>${ob.poid }</td>
					</tr>
					<tr>
						<th class="text-white bg-success">ORDER CODE</th>
						<td>${ob.purchaseOrderCode }</td>
					</tr>
					<tr>
						<th class="text-white bg-success">SHIPMENT CODE</th>
						<td>${ob.shipOb.shipCode }</td>
					</tr>
					<tr>
						<th class="text-white bg-success">VENDOR</th>
						<td>${ob.vendor.userCode }</td>
					</tr>
					<tr>
						<th class="text-white bg-success">REF NUMBER</th>
						<td>${ob.refNum }</td>
					</tr>
					<tr>
						<th class="text-white bg-success">QUALITY CHECK</th>
						<td>${ob.qualityCheck }</td>
					</tr>
					<tr>
						<th class="text-white bg-success">STATUS</th>
						<td>${ob.status }</td>
					</tr>
					<tr>
						<th class="text-white bg-success">NOTE</th>
						<td>${ob.description }</td>
					</tr>

				</table>

			</div>
			<!-- card-body -->
		</div>
		<!-- card -->
	</div>
	<!-- container -->
</body>
</html>