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
						<div class="col-4">
							<!-- error message -->
						</div>
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
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>
					<div class="row">
						<div class="col-4">
							<label for="userCode">User Code</label>
						</div>
						<div class="col-4">
							<form:input path="userCode" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>
					<div class="row">
						<div class="col-4">
							<label for="userFor">User For</label>
						</div>
						<div class="col-4">
							<form:input path="userFor" class="form-control" />
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
							<input type=submit value="UPDATE USER" class="btn btn-warning" />
						</div>
					</div>
				</form:form>
				</div> <!-- card body -->
			</div>
			<!-- card -->
		</div>
		<!-- container -->
</body>
</html>