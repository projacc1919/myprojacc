<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<body>
	<%@include file="UserMenu.jsp"%>

	<div class="container">

		<div class="card">

			<div
				class="card-header bg-primary text-center text-white text-uppercase">
				<H3>WELCOME TO UOM DATA PAGE</H3>
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
							<tr class=" text-center bg-success text-white">
								<th>ID</th>
								<th>TYPE</th>
								<th>MODEL</th>
								<th>NOTE</th>
								<th colspan="3">OPERATIONS</th>
							</tr>

							<!-- 	for(Uom ob;list){} -->
							<c:forEach items="${list }" var="ob">
								<tr>
									<td>${ob.uomId}</td>
									<td>${ob.uomType}</td>
									<td>${ob.uomModel}</td>
									<td>${ob.uomDesc}</td>
									<td><a href="delete?uid=${ob.uomId}" class="btn btn-danger">DELETE<!-- <img
											src="../resources/images/delete.jpg" height="30" width="30" /> --></a></td>
									<td><a href="edit?uid=${ob.uomId}" class="btn btn-warning">EDIT<!-- <img
											src="../resources/images/edit.png" height="20" width="20" /> --></a></td>
									<td><a href="view?uid=${ob.uomId}" class="btn btn-info">VIEW<!-- <img
											src="../resources/images/view.jpg" height="30" width="30" /> --></a></td>
								</tr>
							</c:forEach>
						</table>
					</c:when>
					<c:otherwise>
						<H4>NO DATA FOUND!</H4>
					</c:otherwise>
				</c:choose>
			</div> <!-- card body -->
			<c:if test="${!empty message }">
				<c:choose>
					<c:when test="${opr eq 'DEL' }">
						<div class="card-footer bg-danger text-white">
							<b>${message }</b>
						</div>
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