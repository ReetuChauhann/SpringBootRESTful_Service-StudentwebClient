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
<h3>Here's All Data</h3>
<form action="viewall">
<button>View</button>
</form>
<c:forEach items="${view}" var="z">
<div>
Student Id:      <c:out value="${z.sid}"></c:out><br>
Student Name:    <c:out value="${z.sname}"></c:out><br>
Student RollNo:  <c:out value="${z.sroll}"></c:out><br>
Student Course: <c:out value="${z.scourse}"></c:out><br><hr>
 </div>
</c:forEach>

</body>
</html>