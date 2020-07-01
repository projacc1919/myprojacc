<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
						<div class="col-4" id="orderModeError"></div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="orderCode">Order Code</label>
						</div>
						<div class="col-4">
							<form:input path="orderCode" class="form-control" />
						</div>
						<div class="col-4" id="orderCodeError"></div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="orderType">Order Type</label>
						</div>
						<div class="col-4">
							<form:select path="orderType" class="form-control">
								<form:option value="">-select-</form:option>
								<form:option value="FIFO">FIFO</form:option>
								<form:option value="LIFO">LIFO</form:option>
								<form:option value="FCFO">FCFO</form:option>
								<form:option value="FEFO">FEFO</form:option>
							</form:select>
						</div>
						<div class="col-4" id="orderTypeError"></div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="orderAccept">Order Accept</label>
						</div>
						<div class="col-4">
							<form:checkbox path="orderAccept" value="Multi-model" />
							Multi-model
							<form:checkbox path="orderAccept" value="Accept return" />
							Accept return
						</div>
						<div class="col-4" id="orderAcceptError"></div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="description">Description</label>
						</div>
						<div class="col-4">
							<form:textarea path="description" class="form-control" />
						</div>
						<div class="col-4" id="descriptionError"></div>
					</div>

					<div class="row">
						<div class="col-4"></div>
						<div class="col-4">
							<input type="submit" value="Update" id="Update"
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

	<script>
		$(document)
				.ready(
						function() {

							$("#orderModeError").hide();
							$("#orderCodeError").hide();
							$("#orderTypeError").hide();
							$("#orderAcceptError").hide();
							$("#descriptionError").hide();

							var orderModeError = false;
							var orderCodeError = false;
							var orderTypeError = false;
							var orderAcceptError = false;
							var descriptionError = false;

							$('input[name="orderMode"][type="radio"]').change(
									function() {
										validate_orderMode();
									});

							$("#orderCode").keyup(function() {
								validate_orderCode();
							});

							$("#orderType").change(function() {
								validate_orderType();
							});

							$('input[name="orderAccept"][type=checkbox]')
									.change(function() {
										validate_orderAccept();
									});

							$("#description").keyup(function() {
								validate_description();
							});

							function validate_orderMode() {
								var len = $('input[name="orderMode"][type="radio"]:checked').length;

								if (len == 0) {
									$("#orderModeError").show();
									$("#orderModeError").html(
											"Choose an <b>Order Mode</b>");
									$("#orderModeError").css("color", "red");
									orderModeError = false;
								} else {
									$("#orderModeError").hide();
									orderModeError = true;
								}
								return orderModeError;
							}

							function validate_orderCode() {
								var val = $("#orderCode").val();

								if (val == '') {
									$("#orderCodeError").show();
									$("#orderCodeError").html(
											"Enter <b>Order Code</b>");
									$("#orderCodeError").css("color", "red");
									orderCodeError = false;
								} else {
									$("#orderCodeError").hide();
									orderCodeError = true;
								}
								return orderCodeError;
							}

							function validate_orderType() {
								var val = $("#orderType").val();

								if (val == '') {
									$("#orderTypeError").show();
									$("#orderTypeError").html(
											"Choose an <b>Order Type</b>");
									$("#orderTypeError").css("color", "red");
									orderTypeError = false;

								} else {
									$("#orderTypeError").hide();
									orderTypeError = true;
								}
								return orderTypeError;
							}

							function validate_orderAccept() {
								var len = $('input[name="orderAccept"][type="checkbox"]:checked').length;

								if (len == 0) {
									$("#orderAcceptError").show();
									$("#orderAcceptError")
											.html(
													"Choose at least one <b>Order Accept</b>");
									$("#orderAcceptError").css("color", "red");
									orderAcceptError = false;
								} else {
									$("#orderAcceptError").hide();
									orderAcceptError = true;
								}
								return orderAcceptError;
							}

							function validate_description() {
								var val = $("#description").val();

								if (val == '') {
									$("#descriptionError").show();
									$("#descriptionError").html(
											"Enter <b>Description</b>");
									$("#descriptionError").css("color", "red");
									descriptionError = false;
								} else {
									$("#descriptionError").hide();
									descriptionError = true;
								}
								return descriptionError;
							}

							$("#Update").click(
									function() {

										orderModeError = false;
										orderCodeError = false;
										orderTypeError = false;
										orderAcceptError = false;
										descriptionError = false;

										validate_orderMode();
										validate_orderCode();
										validate_orderType();
										validate_orderAccept();
										validate_description();

										if (orderModeError && orderCodeError
												&& orderTypeError
												&& orderAcceptError
												&& descriptionError) {
											return true;
										} else {
											return false;
										}
									});
						});
	</script>
</body>
</html>