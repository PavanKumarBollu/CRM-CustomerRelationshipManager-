<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager </h2>
		</div>
	</div>
	
	<div id="container" >
		<div id="content">
		<!-- Button to Add New Customer -->
		<input type="button" value="AddNewCustomer" class="add-button" onclick="window.location.href=showForm; return false;" />
		
		
			<table>
				<tr>
					<th>FirstName</th>
					<th>LastName</th>
					<th>Email</th>
					<th>Action</th>
				<tr>
				<c:forEach items="${allCustomer}" var="customer" >
					<tr>
						<td>${customer.firstName}</td>
						<td>${customer.lastName}</td>
						<td>${customer.email}</td>
					</tr>
					
				</c:forEach>
				
			
			</table>
		
		</div>
	
	</div>
</body>
</html>