<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body
{
	background-image: linear-gradient(to right top, #d16ba5,
	 #c777b9, #ba83ca, #aa8fd8, #9a9ae1, #8aa7ec, #79b3f4, 
	 #69bff8, #52cffe, #41dfff, #46eefa, #5ffbf1);
	 height:687px;
}
h1
{
	font-size: 50px;
	color:yellow;
	margin-left:350px;
}
form
{
	border:5px solid black;
	margin-left:380px;
	width:500px;
	height:600px;
	font-size:30px;
	margin-top:-10px;
}
 input
{
	height:30px;
	width:300px;
	margin-left:100px;
	border:3px solid black;
	border-radius:7px;
}
 .submit
{
	font-size: 20px;
}
.submit:hover
{
	color:white;
	background-color: blue;
}
</style>

</head>
<body>
<h1>Please Enter the BOOK details</h1>
<form:form action="saveBOOk" modelAttribute="book">
<form:label path="id">BOOK ID:</form:label>
<form:input path="id"/>
<br><br>
<form:label path="name">BOOK NAME:</form:label>
<form:input path="name"/>
<br><br>
<form:label path="price">BOOK PRICE:</form:label>
<form:input path="price"/>
<br><br>
<form:label path="author">BOOK Author:</form:label>
<form:input path="author"/>
<br><br>
<form:label path="description">BOOK DESCRIPTION:</form:label>
<form:input path="description"/>
<br><br>
<input type="submit" Value="ADD" class="submit">
</form:form>

</body>
</html>