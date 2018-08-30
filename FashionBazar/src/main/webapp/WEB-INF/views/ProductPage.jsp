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
<h4 align="center">Select your Wear</h4>
<div class="container">
	<table class="table table-hover">
	<thead>
<c:forEach items="${listProducts}" var="product">
	
		<td>
			<img src="<c:url value="/resources/images/${product.productId}.jpg"/>" width="100" height="100"/>
			<br/>
			<a href="<c:url value="/productDesc/${product.productId}"/>">${product.productName}</a>
			<br/>INR. ${product.price} /-
		</td>
	
</c:forEach>
	</thead>
</table>
</div>

<%@include file="Footer.jsp"%>
</body>
</html>