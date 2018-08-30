<%@include file="Header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!--  <div class="container">
  <h2>Categories</h2>
  <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Categories
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#">Men</a></li>
      <li><a href="#">Women</a></li>
      <li><a href="#">Kids</a></li>
      <li><a href="#">Electronics</a></li>
      <li><a href="#">Books</a></li>
    </ul>
  </div>
</div> -->

<form:form action="InsertProduct"
		modelAttribute="product" method="post" enctype="multipart/form-data">
<table align="center">
	
		<tr>
			<td>Product Name</td>
			<td><form:input path="productName" />
		</tr>
		<tr>
			<td>Category</td>
			<td>
			<form:select path="categoryId">
				<form:option value="0" label="--select--"/>
				<form:options items="${categoryList}"/>
			</form:select>
			</td>
		</tr>
		<tr>
			<td>Supplier</td>
			<td><form:input path="supplierId"/></td>
		</tr>
		<tr>
			<td>Price</td>
			<td><form:input path="price"/></td>
		</tr>
		<tr>
			<td>Stock</td>
			<td><form:input path="stock"/></td>
		</tr>

		<tr>
			<td>Product Description</td>
			<td><form:input path="prodDesc"/></td>
		</tr>
		<tr>
			<td>Product Image</td>
			<td>
				<form:input type="file" path="pimage"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="submit" value="Insert Product"/>
			</td>
		</tr>


</table>
	</form:form>
	<table align="center">
	<tr bgcolor="Grey">
	<td>Product Id</td>
	<td>Product Name</td>
	<td>Product Description</td>
	<td>Stock</td>
	<td>Price</td>
	<td>Category Id</td>
	<td>Supplier Id</td>
	<td>Operation</td>
	</tr>
	<c:forEach items="${productlist}" var="product">
	<tr>
	<td>${product.productId}</td>
	<td>${product.productName}</td>
	<td>${product.prodDesc}</td>
	<td>${product.stock}</td>
	<td>${product.price}</td>
    <td>${product.categoryId}</td>
	<td>${product.supplierId}</td>
	<td><a href="<c:url value='/deleteproduct/${product.productId}'/>">delete</a>
	<a href="<c:url value='/editproduct/${product.productId}'/>">edit</a>
	</td>
	</tr>
	</c:forEach>
	
	
	</table>
</body>
</html>