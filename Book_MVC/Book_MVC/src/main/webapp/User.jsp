<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	
body
{
	background:linear-gradient(#845EC2);
	height:100vhpx;;
}
div
{
	display:flex;
	justify-content:space-around;
}
button
{
	height:50px;
	width:200px;
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
h1
{
	margin-left:480px;
	font-size: 50px;
	color:yellow;
	
}
body
{
	background-image: linear-gradient(to right top, #051937,
	 #004d7a, #008793, #00bf72, #a8eb12);
	height:710px;
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
.button 
{
	width:300px;
}
.edit
{
	display: flex;
	justify-content: space-between;
}
.edit .update
{
	border:2px solid white;
	background-color:green;
}
.edit .delete
{
	border:2px solid white;
	background-color:red;
}
</style>
</head>
<body>
<h1>Welcome To the User Page</h1>
<div>

<button><a href="Welcome.jsp">HOME</a></button>
<button><a href="addUser">ADD USER</a></button>
</div>

<h1>All USER Details</h1><br><br>
<table border="2px" style="border-collapse:collapse; ">
<tr>
<th>USER ID</th>
<th>USER NAME</th>
<th>USER PRICE</th>
<th>USER AUTHOR</th>
<th class="button">ACTION</th>
</tr>
<c:forEach items="${usersList}" var="user">

<tr>
<td>${user.id}</td>
<td>${user.name}</td>
<td>${user.email}</td>
<td>${user.password}</td>
<td>
<div class="edit">
<a href="updateUserbyId/${user.id}"><button class="update">UPDATE</button></a>
<a href="deleteUserbyId/${user.id}"><button class="delete">DELETE</button></a>
</div>
</td>
</tr>

</c:forEach>

</table>

</body>
</html>