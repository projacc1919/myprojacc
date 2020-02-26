<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<body>
	<H3>WELCOME TO UOM EDIT PAGE</H3>

	<form:form action="update" method="post" modelAttribute="uom">
		<pre>
UOM Id:
<form:input path="uomId" readOnly="true"/>

UOM Type:
<form:select path="uomType">
	<form:option value="">-select-</form:option>
	<form:option value="Packaging">Packaging</form:option>
	<form:option value="No Packaging">No Packaging</form:option>
	<form:option value="NA">-NA-</form:option>
</form:select>

UOM Model:
<form:input path="uomModel" />

Description:
<form:textarea path="uomDesc" />

<input type="submit" value="Update UOM" />
</pre>
	</form:form>
</body>
</html>