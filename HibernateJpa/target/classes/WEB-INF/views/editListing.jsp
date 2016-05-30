<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="featuresList" value="${featuresTest}"/>
<c:set var="getCurrentFeature" value="${listing.features}"/>

<html>
<head>
	<title>Listing</title>
</head>
<body>
<h1>
	Listing!  
</h1>
	<form:form method="POST" action="${contextPath}/listing/edit" modelAttribute="listing">
		<table>
			<tr>				
				<td><input type="hidden" name="id" value="${listing.id}"><td>
			</tr>
			<tr>				
				<td>Cubic capacity</td>
				<td>
					<select name="cubicCapacity">
						<option value="">Select</option>
						<option <c:if test="${listing.cubicCapacity eq 1000 }">selected="selected"</c:if> value="1000">1000</option>
						<option <c:if test="${listing.cubicCapacity eq 1200 }">selected="selected"</c:if> value="1200">1200</option>
						<option <c:if test="${listing.cubicCapacity eq 1400 }">selected="selected"</c:if> value="1400">1400</option>
						<option <c:if test="${listing.cubicCapacity eq 1600 }">selected="selected"</c:if> value="1600">1600</option>
						<option <c:if test="${listing.cubicCapacity eq 1800 }">selected="selected"</c:if> value="1800">1800</option>
						<option <c:if test="${listing.cubicCapacity eq 2000 }">selected="selected"</c:if> value="2000">2000</option>
						<option <c:if test="${listing.cubicCapacity eq 2600 }">selected="selected"</c:if> value="2600">2600</option>
						<option <c:if test="${listing.cubicCapacity eq 3000 }">selected="selected"</c:if> value="3000">3000</option>
						<option <c:if test="${listing.cubicCapacity eq 5000 }">selected="selected"</c:if> value="5000">5000</option>
						<option <c:if test="${listing.cubicCapacity eq 7500 }">selected="selected"</c:if> value="7500">7500</option>
						<option <c:if test="${listing.cubicCapacity eq 8000 }">selected="selected"</c:if> value="8000">8000</option>
						<option <c:if test="${listing.cubicCapacity eq 9000 }">selected="selected"</c:if> value="9000">9000</option>										   
					</select>
				</td>
			</tr>
			<tr>
				<td>Fuel type</td>				
				<td>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.fuelType eq 'Petrol' }">checked="checked"</c:if> name="fuelType" value="Petrol / Roadster">Petrol / Roadster</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.fuelType eq 'Diesel' }">checked="checked"</c:if> name="fuelType" value="Diesel">Diesel</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.fuelType eq 'Natural Gas' }">checked="checked"</c:if> name="fuelType" value="Natural Gas">Natural Gas</label>						
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.fuelType eq 'Hybrid (petrol/electric)' }">checked="checked"</c:if> name="fuelType" value="Hybrid (petrol/electric)">Hybrid (petrol/electric)</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.fuelType eq 'Hybrid (diesel/electric)' }">checked="checked"</c:if> name="fuelType" value="Hybrid (diesel/electric)">Hybrid (diesel/electric)</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.fuelType eq 'Electric' }">checked="checked"</c:if> name="fuelType" value="Electric">Electric</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.fuelType eq 'Ethanol (FFV, E85, etc.)' }">checked="checked"</c:if> name="fuelType" value="Ethanol (FFV, E85, etc.)">Ethanol (FFV, E85, etc.)</label>					
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.fuelType eq 'LPG' }">checked="checked"</c:if> name="fuelType" value="LPG">LPG</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.fuelType eq 'Other' }">checked="checked"</c:if> name="fuelType" value="Other">Other</label>
				</td>
			</tr>	
			<tr>
				<td>Transmission</td>
				<td>
					<select name="transmission">
						<option <c:if test="${listing.transmission eq 'Manual gearbox' }">selected="selected"</c:if> value="Manual gearbox">Manual gearbox</option>
						<option <c:if test="${listing.transmission eq 'Semi-automatic' }">selected="selected"</c:if> value="Semi-automatic">Semi-automatic</option>
						<option <c:if test="${listing.transmission eq 'Automatic transmission' }">selected="selected"</c:if> value="Automatic transmission">Automatic transmission</option>										   
					</select>
				</td>
			</tr>
			<tr>	
				<td>Vehicle type</td>					
				<td>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.vehicleType eq 'Cabriolet / Roadster' }">checked="checked"</c:if> name="vehicleType" value="Cabriolet / Roadster">Cabriolet / Roadster</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.vehicleType eq 'Estate Car' }">checked="checked"</c:if> name="vehicleType" value="Estate Car">Estate Car</label>						
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.vehicleType eq 'Off-road Vehicle / Pickup' }">checked="checked"</c:if> name="vehicleType" value="Off-road Vehicle / Pickup">Off-road Vehicle / Pickup</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.vehicleType eq 'Saloon' }">checked="checked"</c:if> name="vehicleType" value="Saloon">Saloon</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.vehicleType eq 'Small Car' }">checked="checked"</c:if> name="vehicleType" value="Small Car">Small Car</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.vehicleType eq 'Sports Car / Coupe' }">checked="checked"</c:if> name="vehicleType" value="Sports Car / Coupe">Sports Car / Coupe</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.vehicleType eq 'Van / Minibus' }">checked="checked"</c:if> name="vehicleType" value="Van / Minibus">Van / Minibus</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.vehicleType eq 'Other' }">checked="checked"</c:if> name="vehicleType" value="Other">Other</label>
				</td>
			</tr>					
			<tr>	
				<td>Power</td>
				<td><input type="text" name="power" value="${listing.power}"><td>
			</tr>	
			<tr>	
				<td>Km</td>
				<td><input type="text" name="km" value="${listing.km}" ><td>
			</tr>	
			<tr>	
				<td>Doors Number</td>
				<td>
					<select name="doorsNumber">
						<option <c:if test="${listing.doorsNumber eq '2/3' }">selected="selected"</c:if> value="2/3">2/3</option>
						<option <c:if test="${listing.doorsNumber eq '4/5' }">selected="selected"</c:if> value="4/5">4/5</option>
						<option <c:if test="${listing.doorsNumber eq '6/7' }">selected="selected"</c:if> value="6/7">6/7</option>										   
					</select>
				</td>
			</tr>
			<tr>	
				<td>Colour</td>
				<td>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.colour eq 'Beige' }">checked="checked"</c:if> name="colour" value="Beige">Beige</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.colour eq 'Black' }">checked="checked"</c:if> name="colour" value="Black">Black</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.colour eq 'Blue' }">checked="checked"</c:if> name="colour" value="Blue">Blue</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.colour eq 'Brown' }">checked="checked"</c:if> name="colour" value="Brown">Brown</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.colour eq 'Gold' }">checked="checked"</c:if> name="colour" value="Gold">Gold</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.colour eq 'Green' }">checked="checked"</c:if> name="colour" value="Green">Green</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.colour eq 'Grey' }">checked="checked"</c:if> name="colour" value="Grey">Grey</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.colour eq 'Orange' }">checked="checked"</c:if> name="colour" value="Orange">Orange</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.colour eq 'Purple' }">checked="checked"</c:if> name="colour" value="Purple">Purple</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.colour eq 'Red' }">checked="checked"</c:if> name="colour" value="Red">Red</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.colour eq 'Silver' }">checked="checked"</c:if> name="colour" value="Silver">Silver</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.colour eq 'White' }">checked="checked"</c:if> name="colour" value="White">White</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.colour eq 'Yellow' }">checked="checked"</c:if> name="colour" value="Yellow">Yellow</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" <c:if test="${listing.colour eq 'Metallic' }">checked="checked"</c:if> name="colour" value="Metallic">Metallic</label>
				</td>
			</tr>
			<tr>	
				<td>Year</td>
				<td><input type="text" name="year" value="${listing.year}" placeholder="YYYY" pattern = "(19[3-9]\d)|(20([0-1]\d))"><td>
			</tr>
			<tr>	
				<td>Car condition</td>
				<td>
					<select name="carCondition">
						<option <c:if test="${listing.carCondition eq 'New' }">selected="selected"</c:if> value="New">New</option>
						<option <c:if test="${listing.carCondition eq 'Used' }">selected="selected"</c:if> value="Used">Used</option>
						<option <c:if test="${listing.carCondition eq 'Pre-Registration' }">selected="selected"</c:if> value="Pre-Registration">Pre-Registration</option>										  
					</select>
				</td>
			</tr>	
			<tr>
			<td>Features</td>
			<td>					
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Auxiliary heating')}">checked="checked"</c:if> name="features" value="Auxiliary heating"> Auxiliary heating</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Bluetooth')}">checked="checked"</c:if> name="features" value="Bluetooth">Bluetooth</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'CD player')}">checked="checked"</c:if> name="features" value="CD player">CD player</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Central locking')}">checked="checked"</c:if> name="features" value="Central locking">Central locking</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Cruise control')}">checked="checked"</c:if> name="features" value="Cruise control">Cruise control</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Electric heated seats')}">checked="checked"</c:if> name="features" value="Electric heated seats">Electric heated seats</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Electric seat adjustment')}">checked="checked"</c:if> name="features" value="Electric seat adjustment">Electric seat adjustment</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Electric side mirror')}">checked="checked"</c:if> name="features" value="Electric side mirror">Electric side mirror</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Electric windows')}">checked="checked"</c:if> name="features" value="Electric windows">Electric windows</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Hands-free kit')}">checked="checked"</c:if> name="features" value="Hands-free kit">Hands-free kit</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Head-up display')}">checked="checked"</c:if> name="features" value="Head-up display">Head-up display</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Isofix (child seat anchor points)')}">checked="checked"</c:if> name="features" value="Isofix (child seat anchor points)">Isofix (child seat anchor points)</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'MP3 interface')}">checked="checked"</c:if> name="features" value="MP3 interface">MP3 interface</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Multifunction steering wheel')}">checked="checked"</c:if> name="features" value="Multifunction steering wheel">Multifunction steering wheel</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Navigation system')}">checked="checked"</c:if> name="features" value="Navigation system">Navigation system</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'On-board computer')}">checked="checked"</c:if> name="features" value="On-board computer">On-board computer</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Power Assisted Steering')}">checked="checked"</c:if> name="features" value="Power Assisted Steering">Power Assisted Steering</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Rain sensor')}">checked="checked"</c:if> name="features" value="Rain sensor">Rain sensor</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Ski bag')}">checked="checked"</c:if> name="features" value="Ski bag">Ski bag</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Start-stop system')}">checked="checked"</c:if> name="features" value="Start-stop system">Start-stop system</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Sunroof')}">checked="checked"</c:if> name="features" value="Sunroof">Sunroof</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Tuner/radio')}">checked="checked"</c:if> name="features" value="Tuner/radio">Tuner/radio</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Ventilated Seats')}">checked="checked"</c:if> name="features" value="Ventilated Seats">Ventilated Seats</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'ABS')}">checked="checked"</c:if> name="features" value="ABS">ABS</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Adaptive Cruise Control')}">checked="checked"</c:if> name="features" value="Adaptive Cruise Control">Adaptive Cruise Control</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Adaptive lighting')}">checked="checked"</c:if> name="features" value="Adaptive lighting">Adaptive lighting</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Blind Spot Monitor')}">checked="checked"</c:if> name="features" value="Blind Spot Monitor">Blind Spot Monitor</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Collision Avoidance System')}">checked="checked"</c:if> name="features" value="Collision Avoidance System">Collision Avoidance System</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Daytime running lights')}">checked="checked"</c:if> name="features" value="Daytime running lights">Daytime running lights</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'ESP')}">checked="checked"</c:if> name="features" value="ESP">ESP</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Fog lamp')}">checked="checked"</c:if> name="features" value="Fog lamp">Fog lamp</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Four wheel drive')}">checked="checked"</c:if> name="features" value="Four wheel drive">Four wheel drive</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Immobilizer')}">checked="checked"</c:if> name="features" value="Immobilizer">Immobilizer</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Keyless Entry')}">checked="checked"</c:if> name="features" value="Keyless Entry">Keyless Entry</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Lane Departure Warning System')}">checked="checked"</c:if> name="features" value="Lane Departure Warning System">ane Departure Warning Syste</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'LED Headlights')}">checked="checked"</c:if> name="features" value="LED Headlights">LED Headlights</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Light sensor')}">checked="checked"</c:if> name="features" value="Light sensor">Light sensor</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Traction control')}">checked="checked"</c:if> name="features" value="Traction control">Traction control</div>
				<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" <c:if test="${fn:contains(getCurrentFeature, 'Xenon headlights')}">checked="checked"</c:if> name="features" value="Xenon headlights">Xenon headlights</div>
			</td>
			</tr>
			<tr>	
				<td>Price</td>
				<td><input type="text" name="price" value="${listing.price}"><td>
			</tr>	
			<tr>
				<td>Contact</td>															
				<td style="margin-bottom: 6px; margin-right: 5px;display: inline"><input type="email" name="contact" style="margin-right: 5px;" placeholder="Email"></td>				
				<td style="margin-bottom: 6px; margin-right: 5px;display: inline"><input type="tel" name="contact" style="margin-right: 5px;" placeholder="Telephone"></td>				
				<td style="margin-bottom: 6px; margin-right: 5px;display: inline"><input type="url" name="contact" style="margin-right: 5px;" placeholder="Homepage"></td>
			</tr>
			<tr>	
				<td>Date listing</td>
				<td><input type="text" name="dateListing" value="${listing.dateListing}"><td>
			</tr>
			<tr>				
				<td><textarea rows="4" cols="50" name="moreInformation" placeholder="Enter text here..">${listing.moreInformation}</textarea></td>
			</tr>			
		</table>
		<input type=submit id="btn1" value="Submit"/>
	</form:form>
</body>
</html>

