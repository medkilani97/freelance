<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Client Profile</title>
</head>
<body>
    <h1>Client Profile</h1>

    <c:if test="${not empty error}">
        <p style="color: red;">${error}</p>
    </c:if>

    <c:if test="${not empty client}">
        <p><strong>Name:</strong> ${client.nom}</p>
        <p><strong>Email:</strong> ${client.email}</p>
        <p><strong>Role:</strong> ${client.role.role}</p>
    </c:if>
</body>
</html>
