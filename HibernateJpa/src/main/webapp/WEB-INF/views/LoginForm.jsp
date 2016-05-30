<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style >
@keyframes example {
     0%   {background-color:red; left:0px; top:0px;}
     25%  {background-color:yellow; left:365px; top:0px;}   
     50%  {background-color:blue; left:0px; top:0px;} 
}
 </style>   
</head>
<body>
	<form name="myForm" action="${pageContext.request.contextPath}/TestServlet" method="post">
		<div style="display: inline-block;min-width: 50px;">Client (filed containing client name/identifier): </div><input style="border-width: 5px;border-style: ridge;background-color: bisque;"type="text" name="client"><br><br>
		<div style="display: inline-block;min-width: 50px;margin-left: 102px;">Current bank account amount : </div><input style="border-width: 5px;border-style: ridge;background-color: bisque;"type="text" name="currentAccountAmount"><br><br>
		<div style="display: inline-block;min-width: 50px;margin-left: 86px;">Operation  (deposit or withdraw) 
		: </div><input style="border-width: 5px;border-style: ridge;background-color: bisque;"type="text" name="operation"><br><br>
		<div style="display: inline-block;min-width: 50px;margin-left: 173px;">Amount to change : </div><input style="border-width: 5px;border-style: ridge;background-color: bisque;"type="text" name="amountToChange"><br><br>		
		<input type="submit" value="Login" style=" border-width: 3px;border-radius: 29px;background-color: #A29DE0;width: 100px;background-color: #A29DE0;position: relative;-webkit-animation-name: example;-webkit-animation-duration: 6s;animation-name: example;animation-duration: 4s;">		
	</form>
</body>
</html>

