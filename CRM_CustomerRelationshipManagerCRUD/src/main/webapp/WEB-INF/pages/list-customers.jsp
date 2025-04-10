<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/add-customer-style.css" />
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>

	<div id="container">
		<div id="content">
			<!-- Button to Add New Customer -->
			<input type="button" value="AddNewCustomer" class="add-button"
				onclick="window.location.href='${pageContext.request.contextPath}/customer/showForm' ; return false;" />


			<table>
				<tr>
					<th>FirstName</th>
					<th>LastName</th>
					<th>Email</th>
					<th>Action</th>
				<tr>
					<c:forEach items="${allCustomer}" var="customer">

						<c:url var="updateLink" value="/customer/showFormForUpdate">
							<c:param name="customerId" value="${customer.id}" />
						</c:url>

						<c:url var="deleteLink" value="/customer/showFormForDelete">
							<c:param name="customerId" value="${customer.id}" />
						</c:url>
						<tr>
							<td>${customer.firstName}</td>
							<td>${customer.lastName}</td>
							<td>${customer.email}</td>
							<td><a href="${updateLink}">Update</a> 
														 | 
								<a href="${deleteLink}" onclick="if(!(confirm('Are You Sure u want to delete the customer '))) return false;">Delete</a></td>
						</tr>

					</c:forEach>
			</table>

		</div>

	</div>
</body>
</html>