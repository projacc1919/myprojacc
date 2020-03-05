<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header text-white text-center bg-info">
				<H3>WELCOME TO ORDER METHOD VIEW PAGE</H3>
			</div>
			<div class="card-body">
				<a href="excel?id=${ob.orderId }"><img
					src="../resources/images/Excel.png" height="40" width="40"></a> <a
					href="pdf?id=${ob.orderId }"><img
					src="../resources/images/pdf.png" height="40" width="40"></a>
				<table class="table table-hover">
					<tr>
						<th class="text-center bg-success text-white">ID</th>
						<td class="text-center">${ob.orderId }</td>
					</tr>
					<tr>
						<th class="text-center bg-success text-white">MODE</th>
						<td class="text-center">${ob.orderMode }</td>
					</tr>

					<tr>
						<th class="text-center bg-success text-white">CODE</th>
						<td class="text-center">${ob.orderCode }</td>
					</tr>
					<tr>
						<th class="text-center bg-success text-white">TYPE</th>
						<td class="text-center">${ob.orderType }</td>
					</tr>
					<tr>
						<th class="text-center bg-success text-white">ACCEPT</th>
						<td class="text-center">${ob.orderAccept }</td>
					</tr>
					<tr>
						<th class="text-center bg-success text-white">NOTE</th>
						<td class="text-center">${ob.description }</td>
					</tr>
				</table>
			</div>
			<!-- card body -->
		</div>
		<!-- card -->
	</div>
	<!-- container -->
</body>
</html>