<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<body>

	<%@include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header text-center bg-info text-white">

				<H3>WELCOME TO WH USER TYPE REGISTRATION PAGE</H3>
			</div>
			<div class="card-body">

				<form:form action="update" method="post" modelAttribute="whusertype">


					<div class="row">
						<div class="col-4">
							<label for="whId">User Id</label>
						</div>
						<div class="col-4">
							<form:input path="whId" readOnly="true" class="form-control" />
						</div>
						<div class="col-4"></div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="Vendor">User Type</label>
						</div>
						<div class="col-4">
							<form:radiobutton path="userType" value="Vendor" />
							Vendor
							<form:radiobutton path="userType" value="Customer" />
							Customer
						</div>
						<div class="col-4" id="userTypeError"></div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="userCode">User Code</label>
						</div>
						<div class="col-4">
							<form:input path="userCode" class="form-control" />
						</div>
						<div class="col-4" id="userCodeError"></div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="userFor">User For</label>
						</div>
						<div class="col-4">
							<form:input path="userFor" readonly="true" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="userEmail">User Email</label>
						</div>
						<div class="col-4">
							<form:input path="userEmail" class="form-control" />
						</div>

						<div class="col-4" id="userEmailError"></div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="userContact">User Contact</label>
						</div>
						<div class="col-4">
							<form:input path="userContact" class="form-control" />
						</div>
						<div class="col-4" id="userContactError"></div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="userIdType">User ID Type</label>
						</div>
						<div class="col-4">
							<form:select path="userIdType" class="form-control">
								<form:option value="">-select-</form:option>
								<form:option value="PAN Card">PAN Card</form:option>
								<form:option value="Aadhar">Aadhar</form:option>
								<form:option value="Voter ID">Voter ID</form:option>
								<form:option value="Other">Other</form:option>
							</form:select>
						</div>
						<div class="col-4" id="userIdTypeError"></div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="ifOther">*If Other</label>
						</div>
						<div class="col-4">
							<form:input path="ifOther" readonly="true" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>




					<div class="row">
						<div class="col-4">
							<label for="idNum">ID Number</label>
						</div>
						<div class="col-4">
							<form:input path="idNum" class="form-control" />
						</div>
						<div class="col-4" id="idNumError"></div>
					</div>

					<div class="row">
						<div class="col-4"></div>
						<div class="col-4">
							<input type=submit value="Update" id="Update"
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
		$(document).ready(
				function() {

					$("#userTypeError").hide();
					$("#userCodeError").hide();
					$("#userEmailError").hide();
					$("#userContactError").hide();
					$("#userIdTypeError").hide();
					$("#idNumError").hide();

					var userTypeError = false;
					var userCodeError = false;
					var userEmailError = false;
					var userContactError = false;
					var userIdTypeError = false;
					var idNumError = false;

					$('input[name="userType"][type="radio"]').change(
							function() {
								validate_userType();
								autoFill_userFor();
							});

					$("#userCode").keyup(function() {
						validate_userCode();
					});

					$("#userEmail").keyup(function() {
						validate_userEmail();
					});

					$("#userContact").keyup(function() {
						validate_userContact();
					});
					$("#userIdType").change(function() {
						validate_userIdType();
					});

					$("#idNum").keyup(function() {
						validate_idNum();
					});

					function autoFill_userFor() {
						var val = $(
								'input[name="userType"][type="radio"]:checked')
								.val();

						if (val == 'Vendor') {
							$("#userFor").val("Purchase");
							$("#userFor").css("color", "red");
						} else if (val == 'Customer') {
							$("#userFor").val("Sale");
							$("#userFor").css("color", "green");
						}
					}

					function validate_userType() {
						var val = $(
								'input[name="userType"][type="radio"]:checked')
								.length;

						if (val == 0) {
							$("#userTypeError").show();
							$("#userTypeError").html(
									"Choose one <b>User Type</b>");
							$("#userTypeError").css("color", "red");
							userTypeError = false;
						} else {
							$("#userTypeError").hide();
							userTypeError = true;
						}
						return userTypeError;
					}

					function validate_userCode() {
						var val = $("#userCode").val();

						if (val == '') {
							$("#userCodeError").show();
							$("#userCodeError").html("Enter <b>User code</b>");
							$("#userCodeError").css("color", "red");
							userCodeError = false;
						} else {
							$("#userCodeError").hide();
							userCodeError = true;
						}
						return userCodeError;
					}

					function validate_userEmail() {
						var val = $("#userEmail").val();

						if (val == '') {
							$("#userEmailError").show();
							$("#userEmailError")
									.html("Enter <b>user Email</b>");
							$("#userEmailError").css("color", "red");
							userEmailError = false;
						} else {
							$("#userEmailError").hide();
							userEmailError = true;
						}
						return userEmailError;
					}

					function validate_userContact() {
						var val = $("#userContact").val();

						if (val == '') {
							$("#userContactError").show();
							$("#userContactError").html(
									"Enter <b>User contact</b>");
							$("#userContactError").css("color", "red");
							userContactError = false;
						} else {
							$("#userContactError").hide();
							userContactError = true;
						}
						return userContactError;
					}

					function validate_userIdType() {
						var val = $("#userIdType").val();

						if (val == '') {
							$("#userIdTypeError").show();
							$("#userIdTypeError").html(
									"Choose an <b>User ID Type</b>");
							$("#userIdTypeError").css("color", "red");
							userIdTypeError = false;
						} else {
							$("#userIdTypeError").hide();
							userIdTypeError = true;
						}

						if (val == 'Other') {
							$("#ifOther").attr("readonly", false);
						} else {
							$("#ifOther").val('');
							$("#ifOther").attr("readonly", true);

						}

						return userIdTypeError;
					}

					function validate_idNum() {
						var val = $("#idNum").val();

						if (val == '') {
							$("#idNumError").show();
							$("#idNumError").html("Enter <b>ID number</b>");
							$("#idNumError").css("color", "red");
							idNumError = false;
						} else {
							$("#idNumError").hide();
							idNumError = true;
						}
						return idNumError;
					}

					$("#Update").click(
							function() {

								userTypeError = false;
								userCodeError = false;
								userEmailError = false;
								userContactError = false;
								userIdTypeError = false;
								idNumError = false;

								validate_userType();
								validate_userCode();
								validate_userEmail();
								validate_userContact();
								validate_userIdType();
								validate_idNum();

								if (userTypeError && userCodeError
										&& userEmailError && userContactError
										&& userIdTypeError && idNumError) {
									return true;
								} else {
									return false;
								}
							});
				});
	</script>
</body>
</html>