<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<body>

	<H3>WELCOME TO SHIPMENT TYPE DATA PAGE</H3>
	
	<c:choose>
		<c:when test="${!empty list }">
	<a href="excel"><img src="../resources/images/Excel.png" height="40" width="40"></a>    <a href="pdf"><img src="../resources/images/pdf.png" height="40" width="40"/></a>   <a href="charts"><img src="../resources/images/chart.png" height="40" width="40"/></a>
			<table border="1">
				<tr>
					<th>ID</th>
					<th>CODE</th>
					<th>GRADE</th>
					<th>MODE</th>
					<th>ENABLE</th>
					<th>NOTE</th>
					<th colspan="3">OPERATION</th>
				</tr>

				<!-- 	for(ShipmentType ob;list){} -->
				<c:forEach items="${list }" var="ob">
					<tr>
						<td>${ob.shipId}</td>
						<td>${ob.shipMode}</td>
						<td>${ob.shipCode}</td>
						<td>${ob.enbShip}</td>
						<td>${ob.shipGrade}</td>
						<td>${ob.shipDesc}</td>
						<td><a href="delete?sid=${ob.shipId}"><img src="../resources/images/delete.jpg" height="30" width="30"/></a></td>
						<td><a href="edit?sid=${ob.shipId}"><img src="../resources/images/edit.png" height="20" width="20"/></a></td>
						<td><a href="view?sid=${ob.shipId}"><img src="../resources/images/view.jpg" height="30" width="30"/></a></td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		<c:otherwise>
			<H4>NO DATA FOUND!</H4>
		</c:otherwise>
	</c:choose>
</body>
</html>