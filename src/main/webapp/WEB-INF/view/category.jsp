<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="/WEB-INF/view/header.jsp" %>
    <!DOCTYPE html>
    
    <html>

<body>


<div class="container">
  <h2>Add Category</h2>
  <form>
    <div class="form-group">
      <label for="catid">Category ID:</label>
      <input type="catid" class="form-control" id="Ctregory ID" placeholder="Enter Category ID">
    </div>
    <div class="form-group">
      <label for="pwd">Category Name:</label>
      <input type="category name" class="form-control" id="Category name" placeholder="Enter category name">
    </div>
    
    <div class="form-group">
      <label for="pwd">Category Description:</label>
      <input type="category description" class="form-control" id="Category description" placeholder="Enter category description">
    </div>
    
    
    <button type="submit" class="btn btn-default">Add</button>
  </form>
</div>



<h1>List of Categories</h1>
<h3><a href="add.html">Add More Category</a></h3>

<c:if test="${!empty employees}">
 <table align="left" border="1">
  <tr>
   <th>Category ID</th>
   <th>Category Name</th>
   <th>Category Description</th>
  </tr>

  <c:forEach items="${employees}" var="employee">
   <tr>
    <td><c:out value="${category.id}"/></td>
    <td><c:out value="${category.name}"/></td>
    <td><c:out value="${category.description}"/></td>
     </tr>
  </c:forEach>
 </table>
</c:if>

<%@ include file="/WEB-INF/view/footer.jsp" %>
</body>
</html>