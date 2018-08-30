<%@include file="Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="<c:url value='/perform_login'></c:url>" role="form" method="post">
 <h1 class="well">
 <center>
 <font face="Monotype Corsiva">Login Form</font>
 </center>
 </h1>
	<div class="col-lg-12 well">
	<div class="row">
	<form>
	<div class="col-sm-12">
    <div class="row">
	<div class="col-sm-6 form-group">
	<label>Login Name</label>
    <input type="text" name="username" placeholder="Enter User Name Here.." class="form-control">
	</div>
	</div>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Password </label>
								<input type="password" name="password" placeholder="Enter Password Here.." class="form-control">
							</div>
						</div>	
					<div>
					<input type="submit" class="btn btn-lg btn-info" value="Submit"/>					
					</div>
				</form> 
		</div>
	</div>
</form>


<%@include file="Footer.jsp"%>
</body>
</html>