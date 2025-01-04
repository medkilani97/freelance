<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <spring:url value="src/bootstrap" var="bts"></spring:url>
    <link rel="stylesheet" href="${bts}/css/bootstrap.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Propositions List</title>
</head>
<body>
<h2>List of Propositions</h2>

<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>Project ID</th>
            <th>Freelancer ID</th>
            <th>Montant</th>
            <th>Duree</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="prop" items="${propositions}">
            <tr>
                <td>${prop.id}</td>
                <td>${prop.proj.id}</td>
                <td>${prop.freelancer.id}</td>
                <td>${prop.montant}</td>
                <td>${prop.duree}</td>
                <td>${prop.description}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>
