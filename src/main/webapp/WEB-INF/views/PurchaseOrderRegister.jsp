<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<body>

<%@include file="UserMenu.jsp"%>


	<div class="container">
		<div class="card">

			<form:form action="save" method="post" modelAttribute="purchaseOrder">

				<div class="card-header text-white text-center bg-info">
					<h3>WELCOME TO PURCHASE ORDER PAGE</h3>
				</div>
				<!-- card-header -->

				<div class="card-body">

					<div class="row">
						<div class="col-4">
							<label for="PurchaseOrderCode">ORDER CODE</label>
						</div>
						<div class="col-4">
							<form:input path="PurchaseOrderCode" class="form-control" />
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
								<form:option value="">-Select-</form:option>
								<form:options items="${shipMap }" />
							</form:select>

						</div>
						<div class="col-4">
							<!-- error msg -->
						</div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="vendor.whId">VENDOR</label>
						</div>
						<div class="col-4">
							<form:select path="vendor.whId" class="form-control">
								<form:option value="">-Select-</form:option>
								<form:options items="${whVenMap }" />
							</form:select>

						</div>
						<div class="col-4">
							<!-- error msg -->
						</div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="refNum">REFERENCE NUMBER</label>
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
							<label for="qualityCheck">QUALITY CHECK</label>
						</div>
						<div class="col-4">
							<form:radiobutton path="qualityCheck" value="Required" />
							Required
							<form:radiobutton path="qualityCheck" value="Not Required" />
							Not Required
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
							<input type="submit" value="Place Order" class="btn btn-success" />
						</div>
					</div>
				</div>
				<!-- card-body -->

			</form:form>

			<c:if test="${!empty message }">
				<div class="card-footer text-white text-center bg-info">
					<b>${message } </b>
				</div>
				<!-- card footer -->
			</c:if>

		</div>
		<!-- card -->
	</div>
	<!-- container -->

</body>
</html>