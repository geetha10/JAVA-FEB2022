<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> jstl demo</h1>

<h2> Displaying variables</h2>
	<p> <c:out value="${petname }" /></p>
	<p> ${petname } is ${age} years old. </p>
	
	
<h2> c:if </h2>
	<c:if test="${alive==true }">
		<p> ${petname } is alive </p>
	</c:if>	
	
<h2> if-else -- c:choose, c:when, c:otherwise</h2>
	<c:choose>
		<c:when test="${petname.length() > 5}">
			<p> This is a long name </p>
		</c:when>
		<c:otherwise>
			<p> The name is easy to remember </p>
		</c:otherwise>
	</c:choose>
	
<h2> For loop - c:forEach</h2>
	<ol>
		<c:forEach var="pet" items="${pets }">
			<li>${pet } </li>
		</c:forEach>
	</ol>

	
</body>
</html>