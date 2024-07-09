<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Please Enter the BOOK details</h1>
<form:form action="saveUser" modelAttribute="user">
<form:label path="id">USER ID:</form:label>
<form:input path="id"/>
<br><br>
<form:label path="name">USER NAME:</form:label>
<form:input path="name"/>
<br><br>
<form:label path="email">USER EMAIL:</form:label>
<form:input path="email"/>
<br><br>
<form:label path="password">USER PASSWORD:</form:label>
<form:input path="password"/>
<br><br>
<input type="submit" Value="ADD">
</form:form>
</body>
</html>