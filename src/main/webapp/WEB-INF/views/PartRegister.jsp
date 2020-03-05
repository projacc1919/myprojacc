<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<body>
	<%@include file="UserMenu.jsp"%>
	<div card="container">
		<div class="card">
			<div class="card-header text-center text-white bg-info">
				<H3>WELCOME TO PART REGISTRATION PAGE</H3>
			</div>
			<div class="card-body">
				<form:form action="save" method="post" modelAttribute="part">

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
							<label for="partLen">Dimensions</label>
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
							<label for="baseCost">Base Cost</label>
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
							<label for="baseCurr">Base Currency</label>
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
								<form:option value="">-SELECT-</form:option>
								<form:options items="${uomList }" itemValue="uomId"
									itemLabel="uomModel" />
							</form:select>
						</div>
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
							<input type="submit" value="CREATE" class="btn btn-success" /> <input
								type="reset" value="CLEAR" class="btn btn-danger" />
						</div>
					</div>
				</form:form>
			</div>
			<!-- card-body -->
			<c:if test="${!empty message }">
				<div class="card-footer text-white bg-info">
					<b>${message }</b>
				</div>
			</c:if>
		</div>
		<!-- card -->
	</div>
	<!-- container -->
</body>
</html>