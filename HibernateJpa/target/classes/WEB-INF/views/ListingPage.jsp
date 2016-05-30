<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>Cars Register</title>
</head>
<body>	
	<br><br>
	<h2>Listing Register!</h2>
	<a href="${contextPath}${addListingUrl}">Add Listing</a>
	<table border="1">
		<thead>
			<tr>
				<th>Id</th>			
				<th>Cubic capacity</th>				
				<th>Fuel type</th>				
				<th>Transmission</th>				
				<th>Vehicle type</th>				
				<th>Power</th>				
				<th>Km</th>				
				<th>Doors Number</th>				
				<th>Colour</th>				
				<th>Year</th>				
				<th>Car condition</th>	
				<th>Features</th>			
				<th>Price</th>				
				<th>Contact</th>				
				<th>Date listing</th>
				<th>More information</th>				
				<th>Operation</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<c:forEach items="${listings}" var="listing">
					<tr>
						<td>${listing.id}</td>
						<td>${listing.cubicCapacity}</td>
						<td>${listing.fuelType}</td>
						<td>${listing.transmission}</td>
						<td>${listing.vehicleType}</td>
						<td>${listing.power}</td>
						<td>${listing.km}</td>
						<td>${listing.doorsNumber}</td>
						<td>${listing.colour}</td>
						<td>${listing.year}</td>
						<td>${listing.carCondition}</td>
						<td>${listing.features}</td>						
						<td>${listing.price}</td>
						<td>${listing.contact}</td>
						<td>${listing.dateListing}</td>
						<td>${listing.moreInformation}</td>
						<td>
							<a href="${contextPath}/listing/edit?listingId=${listing.id}">edit</a>
							<a href="${contextPath}/listing/delete?listingId=${listing.id}">delete</a>
						</td>
					</tr>
				</c:forEach>
			</tr>
			<tr></tr>
		</tbody>
	</table>		
</body>
</html>