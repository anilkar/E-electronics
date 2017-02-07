<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="/WEB-INF/view/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
     </head>
<body> 
<h1>Welcome Admin</h1>
<!-- Header End====================================================================== -->
<div id="top-bar" class="container">		
				<div class="span8">
						<ul class="user-menu">				
						
					
							<b><li><a href="<c:url value="getAllCategories" />">category</a></li></b>
							<b><li><a href="<c:url value="getAllSuplliers" />">Supplier</a></li></b>		
							<b><li><a href="<c:url value="product"/>">Product</a></li></b>	
							
					
							</ul>
			</div>
			
			
		
</div>
		
		<div class="container">
		<c:if test="${isCategoryClicked==true}">
			<c:import url="../view/category.jsp"></c:import>
		</c:if>
	</div>

	<div class="container">
		<c:if test="${isSupplierClicked }">
			<c:import url="../view/supplier.jsp"></c:import>
		</c:if>
	</div>

	<div class="container">
		<c:if test="${isProductClicked==true}">
			<c:import url="../view/product.jsp"></c:import>
		</c:if>
	</div>
		
		</div>
		
		



		
<!-- Footer ================================================================== -->
	<%@ include file="/WEB-INF/view/footer.jsp" %>
</body>
</html>