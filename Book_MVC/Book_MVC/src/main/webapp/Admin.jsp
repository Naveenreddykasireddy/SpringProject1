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
	height:50px;
	width:150px;
	font-size:25px;
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
</style>
</head>
<body>
<div>
<button><a href="Welcome.jsp">HOME</a></button>
<button><a href="getAllBookList">BOOKS</a></button>
<button><a href="addBook">ADD:BOOK</a></button>
<button><a href="usersdetailspage">USERS</a></button>
<button><a href="Welcome.jsp">LOGOUT</a></button>
</div>
</body>

</html>