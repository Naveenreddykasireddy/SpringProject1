<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body
{
	background-image: linear-gradient(to right top, #051937,
	 #004d7a, #008793, #00bf72, #a8eb12);
	height:710px;
}
h1
{
	margin-left:480px;
	font-size: 50px;
	color:yellow;	
}
table
{
	border:4px solid black;
	margin-left:350px;
	width:900px;
	padding:10px;
}
td,th
{
	border:4px solid black;
	color:white;
}
</style>

</head>
<body>
<h2>USER IS UPDATED SUCCESSFULLY</h2><br><br>
<table border="2px" style="border-collapse:collapse;">
<tr>
<th>USER ID</th>
<th>USER NAME</th>
<th>USER EMAIL</th>
<th>USER PASSWORD</th>
</tr>
<tr>
<td>${u.id}</td>
<td>${u.name}</td>
<td>${u.email}</td>
<td>${u.password}</td>
</tr>

</table>
</body>
</html>