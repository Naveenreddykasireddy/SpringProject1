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
	height:500px;
	font-size:30px;
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
<h1>The present deatils of USER</h1>
<table border="1px" style="border-collapse:collapse;">
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

<h1>Please Enter the update details</h1>
<form:form action="updateUser" modelAttribute="updateUser">
<form:label path="id">USER ID:</form:label><br>
<form:input path="id"/>
<br><br>
<form:label path="name">USER NAME:</form:label><br>
<form:input path="name"/>
<br><br>
<form:label path="email">USER EMAIL:</form:label><br>
<form:input path="email"/>
<br><br>
<form:label path="password">USER PASSWORD:</form:label><br>
<form:input path="password"/>
<br><br>
<input type="submit" Value="UPDATE" class="submit">
</form:form>
</body>
</body>
</html>