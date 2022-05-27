<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:if test="${view==null}">
<h3 style="color: red;">Not Found!</h3>
</c:if>
Student Id:      <c:out value="${view.sid}"></c:out><br><br>
Student Name:    <c:out value="${view.sname}"></c:out><br><br>
Student RollNo:  <c:out value="${view.sroll}"></c:out><br><br>
 Student Course: <c:out value="${view.scourse}"></c:out><br><br>
</body>
</html>