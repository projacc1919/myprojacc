<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header text-center text-white bg-info">
				<h3>WELCOME TO PART VIEW PAGE</h3>
			</div>
			<form:form action="update" method="post" modelAttribute="part">

				<div class="card-body">
					<div class="row">
						<div class="col-4">
							<label for="partId">ID</label>
						</div>
						<div class="col-4">
							<form:input path="partId" readonly="true" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="partCode">Code</label>
						</div>
						<div class="col-4">
							<form:input path="partCode" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="partLen">Dimension</label>
						</div>
						<div class="col-4">
							<form:input path="partLen" />
							L
							<form:input path="partWid" />
							W
							<form:input path="partHgt" />
							H
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="">Base Cost</label>
						</div>
						<div class="col-4">
							<form:input path="baseCost" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="baseCurr">BASE CURRENCY</label>
						</div>
						<div class="col-4">
							<form:select path="baseCurr" class="form-control">
								<form:option value="-select-">-select-</form:option>
								<form:option value="INR">INR</form:option>
								<form:option value="USD">USD</form:option>
								<form:option value="AUS">AUS</form:option>
								<form:option value="ERU">ERU</form:option>
							</form:select>
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="uomOb.uomId">UOM</label>
						</div>
						<div class="col-4">
							<form:select path="uomOb.uomId" class="form-control">
								<form:option value="">-select-</form:option>
								<form:options items="${uomMap }" />
							</form:select>
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="omSaleOb.orderId">ORDER METHOD</label>
						</div>
						<div class="col-4">
							<form:select path="omSaleOb.orderId" class="form-control">
								<form:option value="">-select-</form:option>
								<form:options items="${omSaleMap }" />
							</form:select>
						</div>
							<form:select path="omPurchaseOb.orderId" class="form-control">
								<form:option value="">-select-</form:option>
								<form:options items="${omPurMap }" />
							</form:select>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>



					<div class="row">
						<div class="col-4">
							<label for="partDesc">Description</label>
						</div>
						<div class="col-4">
							<form:textarea path="partDesc" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>

					<div class="row">
						<div class="col-4"></div>
						<div class="col-4">
							<input type="submit" value="UPDATE" class="btn btn-warning" />
						</div>
					</div>
				</div>
				<!-- card body -->
			</form:form>
		</div>
		<!-- card -->
	</div>
	<!-- container -->
</body>
</html>