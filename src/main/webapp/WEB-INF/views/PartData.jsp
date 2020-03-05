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
				<h3>WELCOME TO PART DATA PAGE</h3>
			</div>
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
								<th>CODE</th>
								<th>LENGTH</th>
								<th>WIDTH</th>
								<th>HEIGHT</th>
								<th>COST</th>
								<th>CURRENCY</th>
								<th>NOTE</th>
								<th colspan="3">OPERATIONS</th>
							</tr>

							<c:forEach items="${list }" var="ob">
								<tr>
									<td>${ob.partId }</td>
									<td>${ob.partCode }</td>
									<td>${ob.partLen }</td>
									<td>${ob.partWid }</td>
									<td>${ob.partHgt }</td>
									<td>${ob.uomOb.uomModel}</td>
									<td>${ob.baseCost }</td>
									<td>${ob.baseCurr }</td>
									<td>${ob.partDesc }</td>
									<td><a href="delete?pid=${ob.partId }"
										class="btn btn-danger">DELETE<!-- <img src="../resources/images/delete.jpg" height="30" width="30"/> --></a></td>
									<td><a href="edit?pid=${ob.partId }"
										class="btn btn-warning">EDIT<!-- <img src="../resources/images/edit.png" height="20" width="20"/> --></a></td>
									<td><a href="view?pid=${ob.partId }" class="btn btn-info">VIEW<!-- <img src="../resources/images/view.jpg" height="30" width="30"/> --></a></td>
								</tr>
							</c:forEach>
						</table>
					</c:when>
					<c:otherwise>
						<H4>NO DATA FOUND!!!</H4>
					</c:otherwise>
				</c:choose>
			</div>
			<!-- card-body -->
			<c:if test="${!empty message }">
				<c:choose>
					<c:when test="${opr eq 'DEL' }">
						<div class="card-footer text-white bg-danger">
							<b ${message}></b>
						</div>
					</c:when>
					<c:otherwise>
						<div class="card-footer text-white bg-info">
							<b ${message}></b>
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