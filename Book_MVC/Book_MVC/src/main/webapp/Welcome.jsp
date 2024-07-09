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
	background:linear-gradient(#a0d2eb,#e5eaf5);
	height:687px;;
}
div
{
	display:flex;
	justify-content:space-around;
}
button
{
	height:100px;
	width:300px;
	font-size: 30px;
	margin-top:200px;
	border:5px solid black;
	border-radius:10px;
}
button:hover
{
	background:blue;
	a{
	color:white;
	}
}
a
{
	text-decoration: none;
}
h1
{
	font-size:50px;
	text-align: center;
	color:Yellow;
}
</style>
</head>
<body>

<h1>WELCOME TO BOOK STATIONARY</h1>
<div>
<button><a href="addAdmin">CREATE ACCOUNT AS A ADMIN</a></button>
<button><a href="AdminLoginCheck">LOGIN AS ADMIN</a></button>
<button><a href="UserPage.jsp">LOGIN AS USER</a></button>

</div>
</body>
</html>