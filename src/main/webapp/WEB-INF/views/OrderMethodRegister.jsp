<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header bg-info text-white text-center">
				<H3>WELCOME TO ORDER METHOD REGISTRATION PAGE</H3>
			</div>
			<div class="card-body">
				<form:form action="save" method="post" modelAttribute="orderMethod">

					<div class="row">
						<div class="col-4">
							<label for="orderMode">Order Mode</label>
						</div>
						<div class="col-4">
							<form:radiobutton path="orderMode" value="Sale" />
							Sale
							<form:radiobutton path="orderMode" value="Purchase" />
							Purchase
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="orderCode">Order Code</label>
						</div>
						<div class="col-4">
							<form:input path="orderCode" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="orderType">Order Type</label>
						</div>
						<div class="col-4">
							<form:select path="orderType" class="form-control">
								<form:option value="select">-select-</form:option>
								<form:option value="FIFO">FIFO</form:option>
								<form:option value="LIFO">LIFO</form:option>
								<form:option value="FCFO">FCFO</form:option>
								<form:option value="FEFO">FEFO</form:option>
							</form:select>
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="orderAccept">Order Accept</label>
						</div>
						<div class="col-4">
							<form:checkbox path="orderAccept" value="Multi-model" />
							Multi-Model
							<form:checkbox path="orderAccept" value="Accept return" />
							Accept Return
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>



					<div class="row">
						<div class="col-4">
							<label for="description">Description</label>
						</div>
						<div class="col-4">
							<form:textarea path="description" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>

					<div class="row">
						<div class="col-4"></div>
						<div class="col-4">
							<input type="submit" value="CREATE ORDER METHOD"
								class="btn btn-success" /> <input type="reset" value="CLEAR"
								class="btn btn-danger" />
						</div>
					</div>
				</form:form>
			</div>
			<!-- card body -->

			<c:if test="${!empty message }">
				<div class="card-footer text-white text-center bg-info">
					<b> ${message } </b>
				</div>
			</c:if>
		</div>
		<!-- card -->
	</div>
	<!-- container -->
</body>
</html>