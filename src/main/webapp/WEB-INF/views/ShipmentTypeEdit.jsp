<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<body>

	<h3>Welcome to Shipment Type Edit Page</h3>

	<form:form action="update" method="post" modelAttribute="shipmentType">
		<pre>

Shipment Id:
	<form:input path="shipId" readOnly="true"/>

Shipment Mode:
<form:select path="shipMode">
	<form:option value="">-select-</form:option>
	<form:option value="Air">Air</form:option>
	<form:option value="Truck">Truck</form:option>
	<form:option value="Ship">Ship</form:option>
	<form:option value="Train">Train</form:option>
</form:select>

Shipment Code:
<form:input path="shipCode" />

Enable Shipment:
<form:select path="enbShip">
	<form:option value="">-select-</form:option>
	<form:option value="Yes">Yes</form:option>
	<form:option value="No">No</form:option>
</form:select>

Shipment Grade:
<form:radiobutton path="shipGrade" value="A" />A
<form:radiobutton path="shipGrade" value="B" />B
<form:radiobutton path="shipGrade" value="C" />C

Description:
<form:textarea path="shipDesc" />

<input type=submit value="Update" />
</pre>

	

	</form:form>
</body>
</html>