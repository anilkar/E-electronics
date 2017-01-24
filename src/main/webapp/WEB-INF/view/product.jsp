<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>
Add a Product </h1>
<c:url var="addAction" value="product/add" ></c:url>
<form:form action="${pageContext.request.contextPath}/product/add" commandName="product" enctype="multipart/form-data">
<table>
<c:if test="${!empty product.name}">
<tr>
<td>
<form:label path="ID"><spring:message text="ID"/></form:label>
</td>
<td>
<form:input path="ID" readonly="true" size="8" disabled="true" /><form:hidden path="ID" />
</td>
</tr>
</c:if>
<tr>
<td>
<form:label path="name"><spring:message text="Name"/></form:label>
</td>
<td>
<form:input path="name"/>
</td>
</tr>
<tr>
<td>
<form:label path="description"><spring:message text="Description"/></form:label>
</td>
<td>
<form:input path="description" />
</td>
</tr>
<tr>
<td>
<form:label path="price"><spring:message text="Price"/></form:label>
</td>
<td>
<form:input path="price" />
</td>
</tr>
<tr>
<td><form:label path="image">Image</form:label></td>
<td><form:input type="file" path="image" /></td>
</tr>
<br>
<br>
<br>
<tr>
<td colspan="2">
<c:if test="${!empty product.name}">
<input type="submit"
value="<spring:message text="Edit Product"/>" />
</c:if>
<c:if test="${empty product.name}">
<input type="submit"
value="<spring:message text="Add Product"/>" />
</c:if>
</td>
</tr>
</table>
</form:form>
<br>
<br>
<br>
<br>
<c:if test="${!empty listproduct}">
<table border="1" id="myTable" class="display table" width="100%" >
<tr>
<th>Serial No</td>
<th>Name</th>
<th>Price</th>
<th>Description</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<c:forEach items="${listproduct}" var="p">
<tr>
<td>${p.ID}</td>
<td>${p.name}</td>
<td>${p.price}</td>
<td>${p.description}</td>
<td><a href="<c:url value='/edit/${p.ID}' />" >Edit</a></td>
<td><a href="<c:url value='/remove/${p.ID}' />" >Delete</a></td>
</tr>
</c:forEach>
</table>
</c:if>
</body>
</html>