<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
	<%@include file="UserMenu.jsp"%>

	<div class="container">

		<div class="card">

			<div
				class="card-header bg-primary text-center text-white text-uppercase">
				<H3>WELCOME TO SHIPMENT TYPE VIEW PAGE</H3>
			</div>

			<div class="row">
				<div class="col-6">
				<div class="row text-right">
					<div class="col-3">
						<a href="excel?id=${ob.shipId}"><img
							src="../resources/images/Excel.png" height="40" width="40"></a>
					</div>
					<div class="col-3">
						<a href="pdf?id=${ob.shipId}"><img
							src="../resources/images/pdf.png" height="40" width="40"></a>
					</div>
				</div>
				</div>
				<div class="col-6"><!-- nothing --></div>
			</div>

			<div class=card-body>
				<table class="table table-hover">
					<tr>
						<th class="bg-success text-white text-center"><b>ID</b></th>
						<td class="text-center">${ob.shipId}</td>
					</tr>
					<tr>
						<th class="bg-success text-white text-center"><b>MODE</b></th>
						<td class="text-center">${ob.shipMode}</td>
					</tr>
					<tr>
						<th class="bg-success text-white text-center"><b>CODE</b></th>
						<td class="text-center">${ob.shipCode }</td>
					</tr>
					<tr>
						<th class="bg-success text-white text-center"><b>ENABLE</b></th>
						<td class="text-center">${ob.enbShip }</td>
					</tr>
					<tr>
						<th class="bg-success text-white text-center"><b>GRADE</b></th>
						<td class="text-center">${ob.shipGrade }</td>
					</tr>
					<tr>
						<th class="bg-success text-white text-center"><b>NOTE</b></th>
						<td class="text-center">${ob.shipDesc }</td>
					</tr>
				</table>

			</div>
			<!-- card body -->
		</div>
		<!-- card end -->
	</div>
	<!-- container end -->
</body>
</html>