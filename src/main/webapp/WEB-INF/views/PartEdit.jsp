<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<body>
	<h3>WELCOME TO PART VIEW PAGE</h3>
	<form:form action="update" method="post" modelAttribute="part">
		<pre>
		
ID: <form:input path="partId" readonly="true" />

Code: <form:input path="partCode" />

Dimension: <form:checkbox path="partDim" value="W" />W  <form:checkbox
				path="partDim" value="L" />L  <form:checkbox path="partDim"
				value="H" />H

Base Cost: <form:input path="baseCost" />

Base Currency: <form:select path="baseCurr">
		<form:option value="-select-">-select-</form:option>
		<form:option value="INR">INR</form:option>
		<form:option value="USD">USD</form:option>
		<form:option value="AUS">AUS</form:option>
		<form:option value="ERU">ERU</form:option>
			</form:select>
			
			
Description: <form:textarea path="partDesc" />
<input type="submit" value="UPDATE" />
</pre>
	</form:form>
	${message}
</body>
</html>