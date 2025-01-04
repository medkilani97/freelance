<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <spring:url value="src/bootstrap" var="bts"></spring:url>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/${bts}/css/bootstrap.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proposition Form</title>
</head>
<body>
    <h2>Proposition Form</h2>
    <h3>Titre du Projet: ${proj.titre}</h3>

    <form:form method="post" modelAttribute="proposition" action="${pageContext.request.contextPath}/addPropositionForm/${id}">
        <label for="freelancerId">Freelancer ID:</label>
        <form:input path="freelancer.id" id="freelancerId" required="true" /><br><br>

        <label for="montant">Montant:</label>
        <form:input path="montant" type="number" step="0.01" id="montant" required="true" /><br><br>

        <label for="duree">Duree (in days):</label>
        <form:input path="duree" type="number" id="duree" required="true" /><br><br>

        <label for="description">Description:</label><br>
        <form:textarea path="description" id="description" rows="4" cols="50" required="true"></form:textarea><br><br>

        <button type="submit" class="btn btn-outline-dark bg-success"><b>Save Proposal</b></button>
    </form:form>
</body>
</html>
