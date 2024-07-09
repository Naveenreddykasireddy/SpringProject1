<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style type="text/css">

body
{
	background-image: linear-gradient(to right top, #051937,
	 #004d7a, #008793, #00bf72, #a8eb12);
	height:710px;
}
div
{
	display:flex;
	justify-content:space-around;
}
button
{
	height:50px;
	width:150px;
	font-size:25px;
	border:5px solid black;
	border-radius:10px;
	margin-top:300px;
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
</style>

<body>
<div>
<button><a href="Welcome.jsp">HOME</a></button>
<button><a href="getAllBookList">BOOKS</a></button>
<button><a href="usersDetails">USERS</a></button>
<button><a href="Welcome.jsp">LOGOUT</a></button>
</div>
</body>
</html>