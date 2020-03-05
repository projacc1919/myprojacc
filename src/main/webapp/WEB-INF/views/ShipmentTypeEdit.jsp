<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header text-center bg-primary text-white">
				<H3>WELCOME TO SHIPMENT TYPE EDIT PAGE</H3>
			</div>

			<div class="card-body">
				<form:form action="update" method="post"
					modelAttribute="shipmentType">

					<div class="row">
						<div class="col-4">
							<label for="shipId">Shipment Id</label>
						</div>
						<div class="col-4">
							<form:input path="shipId" readOnly="true" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="shipMode">Shipment Mode</label>
						</div>
						<div class="col-4">
							<form:select path="shipMode" class="form-control">
								<form:option value="">-select-</form:option>
								<form:option value="Air">Air</form:option>
								<form:option value="Truck">Truck</form:option>
								<form:option value="Ship">Ship</form:option>
								<form:option value="Train">Train</form:option>
							</form:select>
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="shipCode">Shipment Code</label>
						</div>
						<div class="col-4">
							<form:input path="shipCode" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="enbShip">Enable Shipment</label>
						</div>
						<div class="col-4">
							<form:select path="enbShip" class="form-control">
								<form:option value="">-select-</form:option>
								<form:option value="Yes">Yes</form:option>
								<form:option value="No">No</form:option>
							</form:select>
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="shipGrade">Shipment Grade</label>
						</div>
						<div class="col-4">
							<form:radiobutton path="shipGrade" value="A" />
							A
							<form:radiobutton path="shipGrade" value="B" />
							B
							<form:radiobutton path="shipGrade" value="C" />
							C
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="shipDesc">Description</label>
						</div>
						<div class="col-4">
							<form:textarea path="shipDesc" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>

					<div class="row">
						<div class="col-4"></div>
						<div class="col-4">
							<input type=submit value="Update" class="btn btn-warning" />
						</div>
					</div>

				</form:form>
			</div>
			<!-- card body end -->
		</div>
		<!-- card end -->
	</div>
	<!-- container end -->
</body>
</html>