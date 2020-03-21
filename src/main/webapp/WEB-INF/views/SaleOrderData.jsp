<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@include file="UserMenu.jsp"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	<div class="container">
		<div class="card">
			<div class="card-header text-white bg-info text-center">
				<h3>WELCOME TO SALE ORDER DATA PAGE</h3>
			</div>
			<!-- card header -->
			<div class="card-body">
				<c:choose>
					<c:when test="${!empty list }">
						<a href="excel"><img src="../resources/images/Excel.png"
							height="40" width="40"></a>
						<a href="pdf"><img src="../resources/images/pdf.png"
							height="40" width="40" /></a>
						<table class="table table-hover">
							<tr class="text-white bg-success text-center">
								<th>ID</th>
								<th>ORDER CODE</th>
								<th>SHIPMENT CODE</th>
								<th>CUSTOMER</th>
								<th>REF NUMBER</th>
								<th>STOCK MODE</th>
								<th>STOCK SOURCE</th>
								<th>DEFAULT STATUS</th>
								<th>NOTE</th>
								<th colspan="3">OPERATIONS</th>
							</tr>

							<c:forEach items="${list }" var="ob">
								<tr>
									<td>${ob.soid }</td>
									<td>${ob.orderCode }</td>
									<td>${ob.shipOb.shipCode }</td>
									<td>${ob.customer.userCode }</td>
									<td>${ob.refNum }</td>
									<td>${ob.stockMode }</td>
									<td>${ob.stockSource }</td>
									<td>${ob.status }</td>
									<td>${ob.description }</td>
									<td><a href="view?id=${ob.soid }" class="btn btn-info">VIEW</a></td>
									<td><a href="edit?id=
										${ob.soid }"
										class="btn btn-warning">EDIT</a></td>
									<td><a href="delete?id=${ob.soid }" class="btn btn-danger">DELETE</a></td>
								</tr>
							</c:forEach>
						</table>
					</c:when>
					<c:otherwise>
						<h4>NO DATA FOUND!!!!</h4>
					</c:otherwise>
				</c:choose>
			</div>
			<!-- card body -->
			<c:if test="${!empty message }">
				<c:choose>
					<c:when test="${opr eq 'DEL' }">
						<div class="card-footer text-white bg-danger">
							<b>${message }</b>
						</div>
					</c:when>
					<c:otherwise>
						<div class="card-footer text-white bg-info">
							<b>${message }</b>
						</div>
					</c:otherwise>
				</c:choose>
			</c:if>
		</div>
		<!-- card -->
	</div>
	<!-- container -->
</body>
</html>