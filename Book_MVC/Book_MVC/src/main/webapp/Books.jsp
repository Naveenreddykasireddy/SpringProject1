<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<h1>All Book Details</h1><br><br>
<table border="2px" style="border-collapse:collapse; ">
<tr>
<th>BOOK ID</th>
<th>BOOK NAME</th>
<th>BOOK PRICE</th>
<th>BOOK AUTHOR</th>
<th class="button">ACTION</th>
</tr>
<c:forEach items="${listOfBooks}" var="book">

<tr>
<td>${book.id}</td>
<td>${book.name}</td>
<td>${book.price}</td>
<td>${book.author}</td>
<td>
<div class="edit">
<a href="updateBookById/${book.id}"><button class="update">UPDATE</button></a>
<a href="deleteBookbyId/${book.id}"><button class="delete">DELETE</button></a>
</div>
</td>
</tr>             

</c:forEach>

</table>
</body>
</html>