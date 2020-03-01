<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<body>
	<h3>WELCOME TO PART DATA PAGE</h3>
	<c:choose>
		<c:when test="${!empty list }">
		<a href="excel"><img src="../resources/images/Excel.png" height="40" width="40"></a>    <a href="pdf"><img src="../resources/images/pdf.png" height="40" width="40"/></a>
			<table border="1">
				<tr>
					<th>ID</th>
					<th>CODE</th>
					<th>DIMENSION</th>
					<th>COST</th>
					<th>CURRENCY</th>
					<th>NOTE</th>
					<th colspan="3">OPERATIONS</th>
				</tr>

				<c:forEach items="${list }" var="ob">
					<tr>
						<td>${ob.partId }</td>
						<td>${ob.partCode }</td>
						<td>${ob.partDim }</td>
						<td>${ob.baseCost }</td>
						<td>${ob.baseCurr }</td>
						<td>${ob.partDesc }</td>
						<td><a href="delete?pid=${ob.partId }"><img src="../resources/images/delete.jpg" height="30" width="30"/></a></td>
						<td><a href="edit?pid=${ob.partId }"><img src="../resources/images/edit.png" height="20" width="20"/></a></td>
						<td><a href="view?pid=${ob.partId }"><img src="../resources/images/view.jpg" height="30" width="30"/></a></td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		<c:otherwise>
			<H4>NO DATA FOUND!!!</H4>
		</c:otherwise>
	</c:choose>
	${message }
</body>
</html>