<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update here!</title>
</head>
<body>
<c:if test="${result=='success'}">
<h3 style="color: green;">Updated!</h3>
</c:if>
<c:if test="${result=='failed'}">
<h3 style="color: red;"> Not Updated!</h3>
</c:if>
<form action="updatebyids">
 Select id here!: <select name="sid">
<c:forEach items="${ids}" var="u">
<option>${u}</option>
</c:forEach>
</select><hr>
Student Name:   <input type="text" name="sname" required/><br><br>
Student Rollno: <input type="number" name="sroll" required/><br><br>
Student Course: <input type="text" name="scourse" required/><br><br>
                <button>Update</button>

</form>

</body>
</html>