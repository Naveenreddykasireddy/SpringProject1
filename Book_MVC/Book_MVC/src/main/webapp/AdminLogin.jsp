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
	margin-left:400px;
	margin-top:100px;
	width:500px;
	height:300px;
	font-size:30px;
}
 input
{
	height:30px;
	width:300px;
	margin-left:100px;
	border:3px solid black;
	border-radius:7px;
	font-size:20px;
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
<h1>Please Enter the ADMIN details</h1>
<form:form action="AdminLoginSuccessfull" modelAttribute="admin">
<form:label path="email">USER EMAIL:</form:label>
<form:input path="email"/>
<br><br>
<form:label path="password">USER PASSWORD:</form:label>
<form:input path="password"/>
<br><br>
<input type="submit" value="LOGIN" class="submit">
</form:form>
</body>
</html>