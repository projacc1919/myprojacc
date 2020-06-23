<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header text-center bg-info text-white">
				<H3>WELCOME TO WH USER TYPE REGISTRATION PAGE</H3>
			</div>
			<div class="card-body">
				<form:form action="save" method="post" modelAttribute="whusertype">

					<div class="row">

						<div class="col-4">
							<label for="userType">User Type</label>
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
							<form:input path="userFor" class="form-control" readonly="true" />
						</div>

						<div class="col-4" id="userForError"></div>
					</div>

					<div class="row">

						<div class="col-4">
							<label for="userEmail">User Email</label>
						</div>

						<div class="col-4">
							<form:input path="userEmail" class="form-control" />
						</div>

						<div class="col-4">
							<!-- error message -->
						</div>
					</div>


					<div class="row">

						<div class="col-4">
							<label for="userContact">User Contact</label>
						</div>

						<div class="col-4">
							<form:input path="userContact" class="form-control" />
						</div>

						<div class="col-4">
							<!-- error message -->
						</div>
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

						<div class="col-4">
							<!-- error message -->
						</div>
					</div>

					<div class="row">

						<div class="col-4">
							<label for="ifOther">*If Other</label>
						</div>

						<div class="col-4">
							<form:input path="ifOther" class="form-control" />
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

						<div class="col-4">
							<!-- error message -->
						</div>
					</div>

					<div class="row">
						<div class="col-4"></div>
						<div class="col-4">
							<input type=submit value="CREATE USER" id="Create"
								class="btn btn-success" /> <input type="reset" value="CLEAR"
								class="btn btn-danger">
						</div>
					</div>
				</form:form>
			</div>
			<!-- card body -->
			<c:if test="${!empty message }">
				<div class="card-header bg-info text-center text-white">
					<b> ${message} </b>
				</div>
			</c:if>
		</div>
		<!-- card -->
	</div>
	<!-- container -->

	<script>
		$(document)
				.ready(
						function() {

							$("#userTypeError").hide();
							$("#userCodeError").hide();

							var userTypeError = false;
							var userCodeError = false;

							$('input[name="userType"][type="radio"]').change(
									function() {
										validate_userType();
										autoFill_userFor();
									});

							$("#userCode").keyup(function() {
								validate_userCode();

							});

							function autoFill_userFor() {
								var val = $(
										'input[name="userType"][type="radio"]:checked')
										.val();

								if (val == "Vendor") {
									$("#userFor").val("Purchase");
									$("#userFor").css("color", "blue");
								} else if (val == "Customer") {
									$("#userFor").val("Sale");
									$("#userFor").css("color", "green");

								}
							}

							function validate_userType() {
								var val = $('input[name="userType"][type="radio"]:checked').length;

								if (val == 0) {
									$("#userTypeError").show();
									$("#userTypeError").html(
											"Select one <b>User Type</b>");
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
									$("#userCodeError").html(
											"Enter <b> Wh User Code</b>");
									$("#userCodeError").css("color", "red");

									userCodeError = false;
								} else {
									$("#userCodeError").hide();
									userCodeError = true;
								}
								return userCodeError;
							}

							$("#Create").click(
									function() {

										userTypeError = false;
										userCodeError = false;

										validate_userType();
										validate_userCode();

										if (userTypeError && userCodeError
												&& userForError) {
											return true;
										} else {
											return false;
										}
									});

						});
	</script>

</body>
</html>