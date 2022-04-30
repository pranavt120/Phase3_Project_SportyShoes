<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<style>
	.box{
		height:200px;
		width:200px;
		background-image:url("images/bg11.png");
	}
	.contain{
		padding:0px 10%
	}
</style>
<body>
<jsp:include page="components/header1.jsp" ></jsp:include>
<jsp:include page="components/topbar.jsp" ></jsp:include>
<div class="contain">

<table class="table table-striped table-bordered table-hover" style="margin-top: 85px;">
	<thead class="thead-dark">
		<th>Name</th>
		<th>Price</th>
		<th>Action</th>
	</thead>
	<tbody>
		<c:forEach items="${list}" var="item">
 			<tr>
 			   <td>${item.name }</td>	
 			   <td>${item.price }</td>
 			   <td><a class="btn btn-warning" href="cartadditem?id=${item.ID}">Add To Cart</a></td>
 				
 				
 			</tr>
 		</div>
 	</c:forEach>
	</tbody>
</table>

</div>
<jsp:include page="components/footer.jsp"></jsp:include>
</body>
</html>