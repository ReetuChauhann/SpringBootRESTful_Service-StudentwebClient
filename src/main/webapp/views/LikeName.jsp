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
<c:if test="${likestudents==null}">          <!--  have to ask -->
<h3 style="color: red;">No Student Found</h3>
</c:if>
<c:forEach items="${likestudents}" var="x">
<div>
Student Id:      <c:out value="${x.sid}"></c:out><br>
Student Name:    <c:out value="${x.sname}"></c:out><br>
Student RollNo:  <c:out value="${x.sroll}"></c:out><br>
 Student Course: <c:out value="${x.scourse}"></c:out><br><hr>
 </div>
</c:forEach>
</body>
</html>