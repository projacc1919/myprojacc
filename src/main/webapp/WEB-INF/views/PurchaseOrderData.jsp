<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="UserMenu.jsp"%>
</head>
<body>
	<div class="container">
		<div class="card">

			<div class="card-header text-white text-center bg-info">
				<h3>WELCOME TO PURCHASE ORDER DATA PAGE</h3>
			</div>
			<!-- card-footer -->
			<div class="card-body">
				<c:choose>
					<c:when test="${!empty list }">
						<a href="excel"><img src="../resources/images/Excel.png"
							height="40" width="40"></a>
						<a href="pdf"><img src="../resources/images/pdf.png"
							height="40" width="40" /></a>
						<table class="table table-hover">
							<tr class="text-white text-center bg-success">
								<th>ID</th>
								<th>ORDER CODE</th>
								<th>SHIPMENT CODE</th>
								<th>VENDOR</th>
								<th>REF NUMBER</th>
								<th>QUALITY CHECK</th>
								<th>STATUS</th>
								<th>NOTE</th>
								<th colspan="3">OPERATIONS</th>
							</tr>

							<c:forEach items="${list }" var="ob">
								<tr>
									<td>${ob.poid }</td>
									<td>${ob.purchaseOrderCode }</td>
									<td>${ob.shipOb.shipCode }</td>
									<td>${ob.vendor.userCode }</td>
									<td>${ob.refNum }</td>
									<td>${ob.qualityCheck }</td>
									<td>${ob.status }</td>
									<td>${ob.description }</td>
									<td><a href="delete?poid=${ob.poid }"
										class="btn btn-danger">DELETE</a></td>
									<td><a href="view?poid=${ob.poid }" class="btn btn-info">VIEW</a></td>
									<td><a href="edit?poid=${ob.poid }"
										class="btn btn-warning">EDIT</a></td>
								</tr>
							</c:forEach>
						</table>
					</c:when>
					<c:otherwise>
						<h4>NO DATA FOUND!!</h4>
					</c:otherwise>
				</c:choose>
			</div>
			<!-- card body -->

			<c:if test="${!empty message }">
				<c:choose>
					<c:when test="${opr eq 'DEL' }">
						<div class="card-footer bg-danger text-white">
							<b>${message }</b>
						</div>
						<!-- card-footer -->
					</c:when>
					<c:otherwise>
						<div class="card-footer bg-info text-white">
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