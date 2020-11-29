<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Les Amis de L'escalade</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<%@ include file="header.jsp" %>

<%--<nav class="navbar navbar-default">--%>
<%--    <div class="container-fluid">--%>
<%--        <div class="navbar-header">--%>
<%--            <a class="navbar-brand" href="/accueil">Les Amis de l'Escalade</a>--%>
<%--        </div>--%>

<%--        <div class="collapse navbar-collapse">--%>
<%--            <form class="navbar-form navbar-right">--%>
<%--                <div class="form-group">--%>
<%--                    <input type="text" class="form-control" placeholder="Search">--%>
<%--                </div>--%>
<%--                <button type="submit" class="btn btn-default">Submit</button>--%>
<%--            </form>--%>
<%--            <ul class="nav navbar-nav navbar-right">--%>
<%--                <li>--%>
<%--                    <c:choose>--%>
<%--                        <c:when test="${ !session.connect }">--%>
<%--                            <a href="/utilisateur">Connexion</a>--%>
<%--                        </c:when>--%>
<%--                        <c:when test="${ session.connect }">--%>
<%--                            <a href="/accueil/profile">${ session.utilisateur.pseudo }</a>--%>
<%--                        </c:when>--%>
<%--                    </c:choose>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</nav>--%>

<%--Corps de la page web--%>
<div class="container">
    <div class="row">
        <div class="col-lg-offset-3 col-lg-6">
            <h2>Bienvenue !</h2>
            <p>Les Amis de l'Escalde est un site ayant pour but de référencer un maximum de site d'escalade pour
                qu'aussi bien les amateurs curieux que les aventuriers chevronnés
                puissent trouver un endroit ou profiter de leur passion.</p>
            <p>Le site est actuellement en création, donc incomplet.</p>
        </div>
    </div>
</div>
</body>
</html>