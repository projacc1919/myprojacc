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
						<div class="col-4" id="shipModeError"></div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="shipCode">Shipment Code</label>
						</div>
						<div class="col-4">
							<form:input path="shipCode" class="form-control" />
						</div>
						<div class="col-4" id="shipCodeError"></div>
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
						<div class="col-4" id="enbShipError"></div>
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
						<div class="col-4" id="shipGradeError"></div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="shipDesc">Description</label>
						</div>
						<div class="col-4">
							<form:textarea path="shipDesc" class="form-control" />
						</div>
						<div class="col-4" id="shipDescError"></div>
					</div>

					<div class="row">
						<div class="col-4"></div>
						<div class="col-4">
							<input type=submit value="Update" id="Update" class="btn btn-warning" />
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
		$(document).ready(
				function() {
					$("#shipModeError").hide();
					$("#shipCodeError").hide();
					$("#enbShipError").hide();
					$("#shipGradeError").hide();
					$("#shipDescError").hide();
					
					var shipModeError = false;
					var shipCodeError = false;
					var enbShipError=false;
					var shipGradeError=false;
					var shipDescError=false;

					
					$("#shipMode").change(function() {
						validate_shipMode();
					});
					$("#shipCode").keyup(function() {
						validate_shipCode();
					});
					$("#enbShip").change(function(){
						validate_enbShip();
						});
					$('input[name="shipGrade"][type="radio"]').change(function(){
						validate_shipGrade();
						});
					$("#shipDesc").keyup(function(){
						validate_shipDesc();
						});
					
					
					function validate_shipMode() {
						var val = $("#shipMode").val();

						if (val == '') {
							$("#shipModeError").show();
							$("#shipModeError").html(
									"Choose at least one <b>Ship Mode</b>");
							$("#shipModeError").css("color", "red");
							shipModeError = false;
						} else {
							$("#shipModeError").hide();
							shipModeError = true;
						}
						return shipModeError;
					}
					
					function validate_shipCode() {
						var val = $("#shipCode").val();
						if (val == '') {
							$("#shipCodeError").show();
							$("#shipCodeError").html("Enter <b>Ship Code</b>");
							$("#shipCodeError").css("color", "red");
							shipCodeError = false;
						} else {
							$("#shipCodeError").hide();
							shipCodeError = true;
						}
						return shipCodeError;
					}
					
					function validate_enbShip(){
						var val=$("#enbShip").val();
						if(val==''){
							$("#enbShipError").show();
							$("#enbShipError").html("Choose at least <b>one option</b>");
							$("#enbShipError").css("color","red");
							enbShipError=false;
							}else{
								$("#enbShipError").hide();
								enbShipError=true;
								}
						return enbShipError;
						}

					function validate_shipGrade(){
						var len=$('input[name="shipGrade"][type="radio"]:checked').length;
						if(len==0){
							$("#shipGradeError").show();
							$("#shipGradeError").html("Select one <b>one grade</b>");
							$("#shipGradeError").css("color","red");
							shipGradeError=false;
							}else{
								$("#shipGradeError").hide();
								shipGradeError=true;
								}
						return shipGradeError;
						}

					function validate_shipDesc(){
						var val=$("#shipDesc").val();
						if(val==''){
							$("#shipDescError").show();
							$("#shipDescError").html("Enter <b>description</b>");
							$("#shipDescError").css("color","red");
							shipDescError=false;
							}else{
								$("#shipDescError").hide();
								shipDescError=true;
								}
						return shipDescError;
						}
					
					
					$("#Update").click(function() {
						shipModeError = false;
						shipCodeError = false;
						enbShipError=false;
						shipGradeError=false;
						shipDescError=false;

						validate_shipMode();
						validate_shipCode();
						validate_enbShip();
						validate_shipGrade();
						validate_shipDesc();

						if(shipModeError && shipCodeError && enbShipError && shipGradeError && shipDescError) {
							return true;
						} else{
							return false;
							}
					});
				});
	</script>
	
</body>
</html>