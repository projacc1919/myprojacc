<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<body>
<H3>WELCOME TO ORDER METHOD REGISTRATION PAGE</H3>
<form:form action="save" method="post" modelAttribute="orderMethod">
<pre>
Order Mode:
<form:radiobutton path="orderMode" value="Sale"/>Sale
<form:radiobutton path="orderMode" value="Purchase"/>Purchase

Order Code:
<form:input path="orderCode"/>

Order Type:
<form:select path="orderType">
	<form:option value="select">-select-</form:option>
	<form:option value="FIFO">FIFO</form:option>
	<form:option value="LIFO">LIFO</form:option>
	<form:option value="FCFO">FCFO</form:option>
	<form:option value="FEFO">FEFO</form:option>
</form:select>

Order Accept:
<form:checkbox path="orderAccept" value="Multi-model"/>Multi-Model
<form:checkbox path="orderAccept" value="Accept return"/>Accept Return

Description:
<form:textarea path="description"/>

<input type="submit" value="CREATE ORDER METHOD"/>
</pre>
</form:form>
${message }
</body>
</html>