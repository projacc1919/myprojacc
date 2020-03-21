<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="UserMenu.jsp"%>
<html>
<body>
	<div class="container">

		<div class="card">

			<div class="card-header text-white text-center bg-info">
				<h3>WELCOME TO SALE ORDER VIEW PAGE</h3>
			</div>
			<!-- card-header -->

			<div class="card-body">
				<a href="excel?id=${ob.soid}"><img
					src="../resources/images/Excel.png" height="40" width="40"></a> <a
					href="pdf?id=${ob.soid}"><img src="../resources/images/pdf.png"
					height="40" width="40" /></a>
				<table class="table table-hover">

					<tr>
						<th class="text-white text-center bg-success">ID</th>
						<td>${ob.soid }</td>
					</tr>


					<tr>
						<th class="text-white text-center bg-success">ORDER CODE</th>
						<td>${ob.orderCode }</td>
					</tr>


					<tr>
						<th class="text-white text-center bg-success">SHIPMENT CODE</th>
						<td>${ob.shipOb.shipCode }</td>
					</tr>


					<tr>
						<th class="text-white text-center bg-success">CUSTOMER</th>
						<td>${ob.customer.userCode}</td>
					</tr>


					<tr>
						<th class="text-white text-center bg-success">REF NUMBER</th>
						<td>${ob.refNum }</td>
					</tr>


					<tr>
						<th class="text-white text-center bg-success">STOCK MODE</th>
						<td>${ob.stockMode }</td>
					</tr>


					<tr>
						<th class="text-white text-center bg-success">STOCK SOURCE</th>
						<td>${ob.stockSource }</td>
					</tr>


					<tr>
						<th class="text-white text-center bg-success">DEFAULT STATUS</th>
						<td>${ob.status }</td>
					</tr>


					<tr>
						<th class="text-white text-center bg-success">NOTE</th>
						<td>${ob.description}</td>
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