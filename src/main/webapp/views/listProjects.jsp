<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <spring:url value="src/bootstrap" var="bts"></spring:url>
    <link rel="stylesheet" href="${bts}/css/bootstrap.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Freelance Projects</title>
    <style>
        body {
            padding-top: 56px;
        }
        .card {
            margin-bottom: 20px;
            border: none;
            border-radius: 12px;
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
        }
        .card-header {
            color: white;
            padding: 15px;
            font-size: 1.2em;
            text-align: center;
            font-weight: bold;
        }
        .card-header:nth-child(even) {
            background-color: #007bff; /* Blue */
        }
        .card-header:nth-child(odd) {
            background-color: #28a745; /* Green */
        }
        .card-body {
            padding: 20px;
            font-size: 0.9em;
            background-color: #f9f9f9;
        }
        .card-footer {
            background-color: #f1f1f1;
            padding: 10px;
            text-align: right;
        }
        .btn-primary {
            border-radius: 20px;
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp" />
<header class="bg-primary text-white text-center py-5">
    <div class="container">
        <h1>Bienvenue sur FreelanceESSAT</h1>
        <p class="lead">Connectez-vous avec des freelancers de talent et trouvez le projet idéal.</p>
    </div>
</header>

<section id="projects" class="py-5">
    <div class="container">
        <!-- Links for Proposals -->
        <div class="text-center mt-4">
            <p>
                <a href="listProposition" class="btn btn-info">List of Proposals</a>
               
                <sec:authorize access="hasRole('ROLE_CLIENT')">
                    <a href="/projects/new?username=${user.username}" class="btn btn-primary">Add Project</a>
                </sec:authorize>
            </p>
        </div>

        <!-- Project Cards -->
        <h2 class="text-center mb-4">Liste des Projets</h2>
        <div class="row">
            <c:forEach items="${projs}" var="p">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header">
                            ${p.titre}
                        </div>
                        <div class="card-body">
                            <p><strong>Description:</strong> ${p.description}</p>
                            <p><strong>Budget:</strong> ${p.budget} €</p>
                            <p><strong>Deadline:</strong> ${p.dateLimite}</p>
                            <p><strong>Heures:</strong> ${p.nbreHeures}</p>
                            <p><strong>Technologies:</strong> ${p.technologies}</p>
                            <p><strong>Statut:</strong> ${p.statut}</p>
                            <p><strong>Client:</strong> ${p.client.nom}</p>
                        </div>
                        <div class="card-footer">
                    <a href="addPropositionForm/${p.id}" class="btn btn-success">Add Proposal</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
</body>
</html>
