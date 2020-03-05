<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header text-white text-center bg-info">
				<H3>WELCOME TO ORDER METHOD DATA PAGE</H3>
			</div>
			<div class="card-body">
				<c:choose>
					<c:when test="${!empty list }">
						<a href="excel"><img src="../resources/images/Excel.png"
							height="40" width="40"></a>
						<a href="pdf"><img src="../resources/images/pdf.png"
							height="40" width="40" /></a>
						<a href="charts"><img src="../resources/images/chart.png"
							height="40" width="40" /></a>
						<table class="table table-hover">
							<tr class="text-white text-center bg-success">
								<th>ID</th>
								<th>MODE</th>
								<th>CODE</th>
								<th>TYPE</th>
								<th>ACCEPT</th>
								<th>NOTE</th>
								<th colspan="3">OPERATIONS</th>
							</tr>

							<c:forEach items="${list }" var="ob">
								<tr>
									<td>${ob.orderId }</td>
									<td>${ob.orderMode }</td>
									<td>${ob.orderCode }</td>
									<td>${ob.orderType }</td>
									<td>${ob.orderAccept }</td>
									<td>${ob.description }</td>
									<td><a href="delete?omid=${ob.orderId}" class="btn btn-danger">DELETE
									<!-- <img	src="../resources/images/delete.jpg" height="30" width="30" /> --></a></td>
									<td><a href="edit?omid=${ob.orderId}" class="btn btn-warning">EDIT<!-- <img
											src="../resources/images/edit.png" height="20" width="20" /> --></a></td>
									<td><a href="view?omid=${ob.orderId}" class="btn btn-info">VIEW<!-- <img
											src="../resources/images/view.jpg" height="30" width="30" /> --></a></td>
								</tr>
							</c:forEach>
						</table>
					</c:when>
					<c:otherwise>
						<H4>NO DATA FOUND!</H4>
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