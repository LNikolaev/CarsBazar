<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<html>
	<head>
		<title>Car edit form</title>
	</head>
	<body>
		<h1>
			Car edit form!  
		</h1>
		<form:form method="POST" action="${contextPath}/car/edit" modelAttribute="car">
			<table>
			<tr>				
				<td><input type="hidden" name="id" value="${car.id}"><td>
			</tr>
				<tr>					
					<td>Producer</td>
					<td><input type="text" name="producer" value="${car.producer}"></td>
				</tr>				
				<tr>	
					<td>Model</td>
					<td><input type="text" name="model" value="${car.model}"></td>
				</tr>					
			</table>
			<input type=submit id="btn1" name="Submit"/>
		</form:form>
	</body>
</html>

