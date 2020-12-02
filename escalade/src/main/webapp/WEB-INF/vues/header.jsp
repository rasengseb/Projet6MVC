<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Les Amis de L'escalade</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>

<body>

    <nav class="navbar navbar-dark bg-dark">

        <div class="navbar-header">
            <a class="navbar-brand" href="/accueil">Les Amis de l'Escalade</a>
        </div>

        <nav class="navbar navbar-dark bg-dark">
            <form class="form-inline">
                <button class="btn btn-outline-info my-2 my-sm-0" type="submit">Recherche</button>
            </form>
            <c:choose>
                <c:when test="${ !session.connect }">
                    <form:form action="/utilisateur" method="get">
                        <button class="btn btn-outline-info my-2 my-sm-0" type="submit">Connexion</button>
                    </form:form>
                </c:when>
                <c:when test="${ session.connect }">
                    <form:form action="/accueil/profile" method="get">
                        <button class="btn btn-outline-info my-2 my-sm-0"
                                type="submit">${ session.utilisateur.pseudo}</button>
                    </form:form>
                </c:when>
            </c:choose>
        </nav>
    </nav>
</body>
</html>



