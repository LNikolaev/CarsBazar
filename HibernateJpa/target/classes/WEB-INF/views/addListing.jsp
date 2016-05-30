<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>Listing</title>

</head>
<body>
	<h1>Listing!</h1>
	<form:form method="POST" action="${contextPath}/listing/add"
		modelAttribute="listing">
		<table>
			<tr>				
				<td>Cubic capacity</td>
				<td>
					<select name="cubicCapacity">
						<option value="">Select</option>
						<option value="1000">1000</option>
						<option value="1200">1200</option>
						<option value="1400">1400</option>
						<option value="1600">1600</option>
						<option value="1800">1800</option>
						<option value="2000">2000</option>
						<option value="2600">2600</option>
						<option value="3000">3000</option>
						<option value="5000">5000</option>
						<option value="7500">7500</option>
						<option value="8000">8000</option>
						<option value="9000">9000</option>										   
					</select>
				</td>
			</tr>
			<tr>
				<td>Fuel type</td>				
				<td>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="fuelType" value="Petrol">Petrol / Roadster</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="fuelType" value="Diesel">Diesel</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="fuelType" value="Natural Gas">Natural Gas</label>						
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="fuelType" value="Hybrid (petrol/electric)">Hybrid (petrol/electric)</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="fuelType" value="Hybrid (diesel/electric)">Hybrid (diesel/electric)</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="fuelType" value="Electric">Electric</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="fuelType" value="Ethanol (FFV, E85, etc.)">Ethanol (FFV, E85, etc.)</label>					
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="fuelType" value="LPG">LPG</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="fuelType" value="Other">Other</label>
				</td>
			</tr>				
			<tr>
				<td>Transmission</td>
				<td>
					<select name="transmission">
						<option value="Manual gearbox">Manual gearbox</option>
						<option value="Semi-automatic">Semi-automatic</option>
						<option value="Automatic transmission">Automatic transmission</option>										   
					</select>
				</td>
				</tr>
			<tr>
				<td>Vehicle type</td>
				<td>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="vehicleType" value="Cabriolet / Roadster">Cabriolet / Roadster</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="vehicleType" value="Estate Car">Estate Car</label>						
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="vehicleType" value="Off-road Vehicle / Pickup">Off-road Vehicle / Pickup</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="vehicleType" value="Saloon">Saloon</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="vehicleType" value="Small Car">Small Car</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="vehicleType" value="Sports Car / Coupe">Sports Car / Coupe</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="vehicleType" value="Van / Minibus">Van / Minibus</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="vehicleType" value="Other">Other</label>
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
						<option value="2/3">2/3</option>
						<option value="4/5">4/5</option>
						<option value="6/7">6/7</option>										   
					</select>
				</td>
			</tr>
			<tr>	
				<td>Colour</td>
				<td>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="colour" value="Beige">Beige</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="colour" value="Black">Black</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="colour" value="Blue">Blue</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="colour" value="Brown">Brown</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="colour" value="Gold">Gold</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="colour" value="Green">Green</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="colour" value="Grey">Grey</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="colour" value="Orange">Orange</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="colour" value="Purple">Purple</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="colour" value="Red">Red</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="colour" value="Silver">Silver</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="colour" value="White">White</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="colour" value="Yellow">Yellow</label>
					<label class="radio-inline" style="margin-left: 20px;"><input type="radio" name="colour" value="Metallic">Metallic</label>
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
						<option value="New">New</option>
						<option value="Used">Used</option>
						<option value="Pre-Registration">Pre-Registration</option>										  
					</select>
				</td>
			</tr>			
			<tr>
				<td>Features</td>
				<td>					
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Auxiliary heating" > Auxiliary heating</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Bluetooth">Bluetooth</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="CD player">CD player</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Central locking">Central locking</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Cruise control">Cruise control</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Electric heated seats">Electric heated seats</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Electric seat adjustment">Electric seat adjustment</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Electric side mirror">Electric side mirror</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Electric windows">Electric windows</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Hands-free kit">Hands-free kit</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Head-up display">Head-up display</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Isofix (child seat anchor points)">Isofix (child seat anchor points)</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="MP3 interface">MP3 interface</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Multifunction steering wheel">Multifunction steering wheel</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Navigation system">Navigation system</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="On-board computer">On-board computer</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Power Assisted Steering">Power Assisted Steering</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Rain sensor">Rain sensor</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Ski bag">Ski bag</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Start-stop system">Start-stop system</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Sunroof">Sunroof</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Tuner/radio">Tuner/radio</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Ventilated Seats">Ventilated Seats</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="ABS">ABS</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Adaptive Cruise Control">Adaptive Cruise Control</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Adaptive lighting">Adaptive lighting</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Blind Spot Monitor">Blind Spot Monitor</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Collision Avoidance System">Collision Avoidance System</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Daytime running lights">Daytime running lights</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="ESP">ESP</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Fog lamp">Fog lamp</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Four wheel drive">Four wheel drive</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Immobilizer">Immobilizer</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Keyless Entry">Keyless Entry</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Lane Departure Warning System">ane Departure Warning Syste</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="LED Headlights">LED Headlights</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Light sensor">Light sensor</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Traction control">Traction control</div>
					<div style="margin-left: 6px;display: inline-table;"><input type="checkbox" name="features" value="Xenon headlights">Xenon headlights</div>
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
				<td><input type="text" name="dateListing" value="${listing.dateListing}" placeholder="YYYY-MM-dd"><td>
			</tr>
			<tr>				
				<textarea rows="4" cols="50" name="moreInformation" placeholder="Enter text here.."></textarea>
			</tr>
		</table>		
		<input type=submit id="btn1" value="Submit" />
	</form:form>
</body>
</html>

