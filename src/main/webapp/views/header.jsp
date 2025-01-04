<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
uri="http://www.springframework.org/security/tags"%>

<sec:authentication property="principal" var="user" />

<c:if test="${user.role.role=='ROLE_CLIENT'}">
<nav class="navbar navbar-expand-lg navbar-light bg-warning fixed-top">
    <h1 class="text-center text-success">Welcome CLIENT: ${user.nom}</h1>
    <div class="text-center mt-4">
    <form action="<c:url value='/logout' />" method="post">
        <a href="profileClient?username=${user.username}" class="btn btn-primary mt-2">My Profile</a>
        <a href="projectList" class="btn btn-info mt-2">View Projects</a>
<a href="projects/new?username=${user.username}" class="btn btn-success mt-2">Add Projects</a>



<button type="submit" class="btn btn-danger">Logout</button>
</form>  

 
    </div>
</nav>
</c:if>

<c:if test="${user.role.role=='ROLE_FREELANCER'}">
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <h1 class="text-center text-primary">Welcome FREELANCER: ${user.nom}</h1>
    <div class="text-center mt-4">
    <form action="<c:url value='/logout' />" method="post">
        <a href="profileFreelancer?username=${user.username}" class="btn btn-success mt-2">My Profile</a>
        <a href="profile?username=${user.username}" class="btn btn-warning mt-2">Edit</a>


<button type="submit" class="btn btn-danger">Logout</button>
</form>  

 
    </div>
</nav>
</c:if>

<div class="container">
    <a class="navbar-brand" href="">FreelanceESSAT</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
</div>
