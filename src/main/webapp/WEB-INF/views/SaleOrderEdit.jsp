<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%@include file="UserMenu.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<body>
	<div class="container">
		<div class="card">
			<div class="card-header text-info text-center bg-info">
				<h3>WELCOME TO SALE ORDER EDIT PAGE</h3>
			</div>
			<!-- card-header -->

			<div class="card-body">
				<form:form action="update" method="post" modelAttribute="saleOrder">
					<div class="row">
						<div class="col-4">
							<label for="soid">ID</label>
						</div>
						<div class="col-4">
							<form:input path="soid" readonly="true" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error msg -->
						</div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="orderCode">ORDER CODE</label>
						</div>
						<div class="col-4">
							<form:input path="orderCode" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error msg -->
						</div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="shipOb.shipId">SHIPMENT CODE</label>
						</div>
						<div class="col-4">
							<form:select path="shipOb.shipId" class="form-control">
								<form:option value="">-select-</form:option>
								<form:options items="${shipMap }" />
							</form:select>
						</div>
						<div class="col-4">
							<!-- error msg -->
						</div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="customer.whId">CUSTOMER</label>
						</div>
						<div class="col-4">
							<form:select path="customer.whId" class="form-control">
								<form:option value="">-select-</form:option>
								<form:options items="${whCusMap }" />
							</form:select>
						</div>
						<div class="col-4">
							<!-- error msg -->
						</div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="refNum">REF NUMBER</label>
						</div>
						<div class="col-4">
							<form:input path="refNum" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error msg -->
						</div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="stockMode">STOCK MODE</label>
						</div>
						<div class="col-4">
							<form:radiobutton path="stockMode" value="Grade" />
							Grade
							<form:radiobutton path="stockMode" value="Margin" />
							Margin
						</div>
						<div class="col-4">
							<!-- error msg -->
						</div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="stockSource">STOCK SOURCE</label>
						</div>
						<div class="col-4">
							<form:select path="stockSource" class="form-control">
								<form:option value="">-select-</form:option>
								<form:option value="Open">Open</form:option>
								<form:option value="Avail">Avail</form:option>
								<form:option value="Refund">Refund</form:option>
							</form:select>
						</div>
						<div class="col-4">
							<!-- error msg -->
						</div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="status">DEFAULT STATUS</label>
						</div>
						<div class="col-4">
							<form:input path="status" readonly="true" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error msg -->
						</div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="description">DESCRIPTION</label>
						</div>
						<div class="col-4">
							<form:textarea path="description" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error msg -->
						</div>
					</div>
					<div class="row">
						<div class="col-4"></div>
						<div class="col-4">
							<input type="submit" value="Edit Sale Order"
								class="btn btn-warning" />
						</div>
					</div>
				</form:form>

			</div>
			<!-- card-body -->
		</div>
		<!-- card -->
	</div>
	<!-- container -->
</body>
</html>