<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Project</title>
</head>
<body>
    <h2>Create a New Project</h2>
    <form action="${pageContext.request.contextPath}/projects/new" method="post">
    <!-- Hidden input for username -->
    <input type="hidden" name="username" value="${username}" />

    <label for="titre">Title:</label>
    <input type="text" id="titre" name="titre" required /><br><br>

    <label for="description">Description:</label>
    <textarea id="description" name="description" required></textarea><br><br>

    <label for="budget">Budget:</label>
    <input type="number" id="budget" name="budget" step="0.01" required /><br><br>

    <label for="dateLimite">Deadline:</label>
    <input type="date" id="dateLimite" name="dateLimite" required /><br><br>

    <label for="nbreHeures">Number of Hours:</label>
    <input type="number" id="nbreHeures" name="nbreHeures" required /><br><br>

    <label for="technologies">Technologies:</label>
    <input type="text" id="technologies" name="technologies" /><br><br>

    <label for="statut">Status:</label>
    <input type="text" id="statut" name="statut" required /><br><br>

    <button type="submit">Create Project</button>
</form>

    
    
</body>
</html>
