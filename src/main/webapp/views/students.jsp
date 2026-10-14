<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Students</title>
</head>
<body>
<h2>Students</h2>
<table border="1">
    <tr><th>ID</th><th>Name</th><th>Email</th></tr>
    <c:forEach var="s" items="${students}">
        <tr>
            <td>${s.id}</td>
            <td>${s.name}</td>
            <td>${s.email}</td>
        </tr>
    </c:forEach>
</table>
<p><a href="${pageContext.request.contextPath}/students">Add student</a></p>
</body>
</html>
src/main/webapp/views/addStudent.jsp — small form
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add student</title>
</head>
<body>
<h2>Add student</h2>
<form action="${pageContext.request.contextPath}/students" method="post">
    Name: <input type="text" name="name" required/><br/>
    Email: <input type="email" name="email"/><br/>
    <input type="submit" value="Add"/>
</form>
<p><a href="${pageContext.request.contextPath}/students">Back to list</a></p>
</body>
</html>