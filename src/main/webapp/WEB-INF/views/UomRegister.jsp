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

			<div
				class="card-header bg-primary text-center text-white text-uppercase">
				<H3>WELCOME TO UOM REGISTRATION PAGE</H3>
			</div>

			<div class="card-body">
				<form:form action="save" method="post" modelAttribute="uom">

					<div class="row">
						<div class="col-4">
							<label for="uomType">UOM Type</label>
						</div>
						<div class="col-4">
							<form:select path="uomType" class="form-control">
								<form:option value="">-select-</form:option>
								<form:option value="Packaging">Packaging</form:option>
								<form:option value="No Packaging">No Packaging</form:option>
								<form:option value="NA">-NA-</form:option>
							</form:select>
						</div>
						<div class="col-4" id="uomTypeError"></div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="uomModel">UOM Model</label>
						</div>
						<div class="col-4">
							<form:input path="uomModel" class="form-control" />
						</div>
						<div class="col-4" id="uomModelError"></div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="uomDesc">DESCRIPTION</label>
						</div>
						<div class="col-4">
							<form:textarea path="uomDesc" class="form-control" />
						</div>
						<div class="col-4" id="uomDescError"></div>
					</div>

					<div class="row">
						<div class="col-4"></div>
						<div class="col-4">
							<input type="submit" value="Create" id="Create"
								class="btn btn-success" /> <input type="reset" value="Clear"
								class="btn btn-danger" />
						</div>
					</div>
				</form:form>
			</div>
			<!-- card body end -->

			<c:if test="${!empty message }">
				<div class="card-footer bg-info text-white text-center">
					<b>${message}</b>
				</div>
			</c:if>
		</div>
		<!-- card end -->
	</div>
	<!-- container end -->

	<script>
		$(document)
				.ready(
						function() {

							$("#uomTypeError").hide();
							$("#uomModelError").hide();
							$("#uomDescError").hide();

							var uomTypeError = false;
							var uomModelError = false;
							var uomDescError = false;

							$("#uomType").change(function() {
								validate_uomType();
							});

							$("#uomModel").keyup(function() {
								validate_uomModel();
							});

							$("#uomDesc").keyup(function() {
								validate_uomDesc();
							});

							function validate_uomType() {
								var val = $("#uomType").val();

								if (val == '') {
									$("#uomTypeError").show();
									$("#uomTypeError").html(
											"Choose a <b>UOM Type</b>");
									$("#uomTypeError").css("color", "red");

									uomTypeError = false;
								} else {
									$("#uomTypeError").hide();
									uomTypeError = true;
								}
								return uomTypeError;
							}

							function validate_uomModel() {
								var val = $("#uomModel").val();

								if (val == '') {
									$("#uomModelError").show();
									$("#uomModelError").html(
											"Enter <b>UOM Model</b>");
									$("#uomModelError").css("color", "red");

									uomModelError = false;
								} else {
									$("#uomModelError").hide();
									uomModelError = true;
								}
								return uomModelError;
							}

							function validate_uomDesc() {
								var val = $("#uomDesc").val();

								if (val == '') {
									$("#uomDescError").show();
									$("#uomDescError").html(
											"Enter description for <b>UOM</b>");
									$("#uomDescError").css("color", "red");

									uomDescError = false;
								} else {
									$("#uomDescError").hide();
									uomDescError = true;
								}
								return uomDescError;
							}

							$("#Create").click(
									function() {

										uomTypeError = false;
										uomModelError = false;
										uomDescError = false;

										validate_uomType();
										validate_uomModel();
										validate_uomDesc();

										if (uomTypeError && uomModelError
												&& uomDescError) {
											return true;

										} else {
											return false;
										}

									});
						});
	</script>
</body>
</html>