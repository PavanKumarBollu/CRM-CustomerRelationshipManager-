<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>
	<div id="container">
		<h3>Save Customer</h3>
		<c:form action="saveCustomer" method="Post" modelAttribute="customer">
		<!-- Hidden Field for the updating purpose -->
		<c:hidden path="id"/>
			<table>
				<tbody>
					<tr>
						<td>First Name</td>
						<td><c:input path="firstName" /></td>
					</tr>
					<tr>
						<td>Last Name</td>
						<td><c:input path="lastName" /></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><c:input path="email" /></td>
					</tr>
					<tr>
						<td></td>
						<td>
							<input type="submit" value="Save" class="save" />
						</td>
					</tr>
				</tbody>
			</table>

		</c:form>

	</div>



</body>
</html>