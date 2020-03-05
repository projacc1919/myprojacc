<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header text-white text-center bg-info">
				<H3>WELCOME TO ORDER METHOD EDIT PAGE</H3>
			</div>

			<div class="card-body">
				<form:form action="update" method="post"
					modelAttribute="orderMethod">

					<div class="row">
						<div class="col-4">
							<label for="orderId">ID</label>
						</div>
						<div class="col-4">
							<form:input path="orderId" readonly="true" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>

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
							<input type="submit" value="UPDATE ORDER METHOD"
								class="btn btn-warning" />
						</div>
					</div>
				</form:form>
			</div>
			<!-- card body -->
		</div>
		<!-- card -->
	</div>
	<!-- container -->
</body>
</html>