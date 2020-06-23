<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">
		<div class="card">

			<div
				class="card-header bg-primary text-center text-white text-uppercase">

				<H3>WELCOME TO UOM EDIT PAGE</H3>
			</div>
			<div class="card-body">
				<form:form action="update" method="post" modelAttribute="uom">

					<div class="row">
						<div class="col-4">
							<label for="uomId">UOM Id</label>
						</div>
						<div class="col-4">
							<form:input path="uomId" readOnly="true" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>


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
							<label for="uomDesc">Description</label>
						</div>
						<div class="col-4">
							<form:textarea path="uomDesc" class="form-control" />
						</div>
						<div class="col-4" id="uomDescError"></div>
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
			<!-- card body end -->
		</div>
		<!-- card end -->
	</div>
	<!-- container end -->

	<script>
		$(document).ready(function() {

			$("#uomTypeError").hide();
			$("#uomModelError").hide();
			$("#uomDescError").hide();

			var uomTypeError = false;
			var uomModelError=false;
			var uomDescError=false;


			$("#uomType").change(function() {
				validate_uomType();
			});

			$("#uomModel").keyup(function(){
				validate_uomModel();
				});
			
			$("#uomDesc").keyup(function(){
				validate_uomDesc();
				});

			function validate_uomType() {

				var val = $("#uomType").val();

				if (val == '') {
					$("#uomTypeError").show();
					$("#uomTypeError").html("Choose one <b>UOM type</b>");
					$("#uomTypeError").css("color", "red");

					uomTypeError = false;

				} else {
					$("#uomTypeError").hide();
					uomTypeError = true;
				}
				return uomTypeError;
			}

			function validate_uomModel(){

				var val=$("#uomModel").val();

				if(val==''){
					$("#uomModelError").show();
					$("#uomModelError").html("Enter <b>UOM model</b>");
					$("#uomModelError").css("color","red");

					uomModelError=false;
					}
				else{
					$("#uomModelError").hide();
					uomModelError=true;

					}
				return uomModelError;
				}

			function validate_uomDesc(){

				var val=$("#uomDesc").val();

				if(val==''){
					$("#uomDescError").show();
					$("#uomDescError").html("Enter <b>UOM Description</b>");
					$("#uomDescError").css("color","red");

					uomDescError=false;
					}
				else{
					$("#uomDescError").hide();
					uomDescError=true;
					}
				return uomDescError;
				}

			$("#Update").click(function() {

				uomTypeError = false;
				uomModelError=false;
				uomDescError=false;

				validate_uomType();
				validate_uomModel();
				validate_uomDesc();

				if (uomTypeError && uomModelError && uomDescError) {
					return true;
				} else {
					return false;
				}

			});

		});
	</script>
</body>
</html>