<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<html>
<body>
	<h1>Add a Category</h1>

	<c:url var="addAction" value="/category/add"></c:url>

	<form:form action="${addAction}" commandName="category">
		<table>
			<tr>
				<td><form:label path="catid">
						<spring:message text="Category ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty category.catid}">
						<td><form:input path="catid" disabled="true" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="catid" patttern =".{6,7}" required="true" title="id should contains 6 to 7 characters" /></td>
					</c:otherwise>
				</c:choose>
			<tr>
			<form:input path="catid" hidden="true"  />
				<td><form:label path="catname">
						<spring:message text="Name" />
					</form:label></td>
				<td><form:input path="catname" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="catdesc">
						<spring:message text="Description" />
					</form:label></td>
				<td><form:input path="catdesc" required="true" /></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty category.catname}">
						<input type="submit"
							value="<spring:message text="Edit Category"/>" />
					</c:if> <c:if test="${empty category.catname}">
						<input type="submit" value="<spring:message text="Add Category"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>
	<h3>Category List</h3>
	<c:if test="${!empty categoryList}">
		<table class="tg" border="1">
			<tr>
				<th width="80">Category ID</th>
				<th width="120">Category Name</th>
				<th width="120">Category Description</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${categoryList}" var="category">
				<tr>
					<td>${category.catid}</td>
					<td>${category.catname}</td>
					<td>${category.catdesc}</td>
					<td><a href="<c:url value='category/edit/${category.catid}' />">Edit</a></td>
					<td><a href="<c:url value='category/remove/${category.catid}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	
	</body></html>