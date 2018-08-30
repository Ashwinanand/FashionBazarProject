<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<%@include file="Header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"></head><body>
<form:form action="InsertCategory" modelAttribute="category" method="post" enctype="multipart/form-data">
<table>
<tr>
<td>Category Name</td>
<td><form:input path="categoryName"/></td>
</tr>
<tr>
<td>Category Description</td>
<td><form:input path="cateogryDesc"/></td>
</tr>
<tr>
<td><input type="submit" value="submit"></td>
</tr>
</table>
</form:form>
<!-- <style>table, th, td {
    border: 1px solid black;
</style> -->
<table>
<tr>
<td>Category Id</td>
<td>Category Name</td>
<td>Operation</td>
</tr>
<c:forEach items="${categorylist}" var="category">
<tr>
<td>${category.categoryId}</td>
<td>${category.categoryName}</td>
<td><a href="<c:url value='/deletecategory/${category.categoryId}'/>">delete</a>
<a href="<c:url value='/editcategory/${category.categoryId}'/>">edit</a></td> 
</tr>
</c:forEach>
</table>
</body>
</html>