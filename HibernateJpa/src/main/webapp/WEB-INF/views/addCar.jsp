<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<html>
	<script type="text/javascript">
		var contextPath = "${contextPath}";
	</script>
	<head>
		<title>Car addition</title>
		<link href="<c:url value="${contextPath}/resources/css/main.css" />" rel="stylesheet">
		
    	<script src="<c:url value="${contextPath}/resources/js/jquery-1.12.4.min.js" />"></script>
   		<script src="<c:url value="${contextPath}/resources/js/main.js" />"></script>
	</head>
	<body>
		<h1>
			Car addition!  
		</h1>	

 		
 		<form:form method="POST" action="${contextPath}/car/add" modelAttribute="car">
			<table>
				<tr>					
					<td>Producer</td>	
					<td>
						<select name="producer" id="producerSelect">
						  <option value="">Select</option>			  
						</select>
					</td>										
				</tr> 
				
				<tr>
				<td>Model</td>
					<td>
						<select name="model" id="modelSelect"">						
						  <option value="---">Select</option>
						</select>				
					</td>	
				</tr>
			</table>
			<input type=submit id="btn1" name="Submit"/>
		</form:form>
		<h2>2. Test JS</h2>
 		<div id="msg"></div>		
	</body>
</html>

