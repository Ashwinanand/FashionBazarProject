<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="Header.jsp" %>

 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form action="reg" modelAttribute="user" method="post" enctype="multipart/form-data">
	
				
					<span class="login100-form-title p-b-49">
						Sign_Up
					</span>

				
					
					<div class="wrap-input100 validate-input m-b-23">
						
<form:input class="input100" path="username" placeholder="Type your username"/>
											
					</div>
					
					<div class="wrap-input100 validate-input m-b-23">
						<form:input class="input100"  path="emailId"   placeholder="Type your email-id"/>
						</div>
					
					<div class="wrap-input100 validate-input m-b-23">
						<form:input class="input100"  path="mobileNo"   placeholder="mobile no"/>
						</div>
							<div class="wrap-input100 validate-input m-b-23">
						<form:input class="input100"  path="customerName"   placeholder="customer"/>
						</div>
					    <div class="wrap-input100 validate-input">
					<form:input class="input100" path="password" placeholder="Type your password"/>
						</div>
					<br/>
				

   	<div class="wrap-input100 validate-input m-b-23">
					 <input class="input100" type="text" name="address" path="address"  placeholder="Type your Address"/>
						
					</div>
					<form:hidden path="role" value="ROLE_USER"/> 
					<form:hidden path="enabled" value="TRUE"/> 
					<br/><br/>
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Sign_Up
							</button>
						</div>
					</div>

					<div class="flex-col-c p-t-155">
						<span class="txt1 p-b-17">
							Or Sign_In Using
						</span>

						<a href="login" class="txt2">
							Log_In
						</a>
					</div>
				</form:form>
</body>
<%@include file="Footer.jsp" %>

</html>
