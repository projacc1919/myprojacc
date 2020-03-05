<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header bg-info text-center text-white">
				<H3>WELCOME TO WH USER TYPE VIEW PAGE</H3>
			</div>

			<div class="card-body">
				<a href="excel?id=${ob.whId}"><img
					src="../resources/images/Excel.png" height="40" width="40"></a> <a
					href="pdf?id=${ob.whId}"><img src="../resources/images/pdf.png"
					height="40" width="40"></a>
				<table class="table table-hover">
					<tr>
						<th class="text-white bg-success text-center">ID</th>
						<td class="text-center">${ob.whId}</td>
					</tr>
					<tr>
						<th class="text-white bg-success text-center">TYPE</th>
						<td class="text-center">${ob.userType}</td>
					</tr>
					<tr>
						<th class="text-white bg-success text-center">CODE</th>
						<td class="text-center">${ob.userCode}</td>
					</tr>
					<tr>
						<th class="text-white bg-success text-center">FOR</th>
						<td class="text-center">${ob.userFor}</td>
					</tr>
					<tr>
						<th class="text-white bg-success text-center">EMAIL</th>
						<td class="text-center">${ob.userEmail}</td>
					</tr>
					<tr>
						<th class="text-white bg-success text-center">CONTACT</th>
						<td class="text-center">${ob.userContact}</td>
					</tr>
					<tr>
						<th class="text-white bg-success text-center">ID TYPE</th>
						<td class="text-center">${ob.userIdType}</td>
					</tr>
					<tr>
						<th class="text-white bg-success text-center">IF OTHER</th>
						<td class="text-center">${ob.ifOther}</td>
					</tr>
					<tr>
						<th class="text-white bg-success text-center">ID NUM</th>
						<td class="text-center">${ob.idNum}</td>
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