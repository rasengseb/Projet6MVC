<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<header class="fixed-top navbar-dark bg-dark">
    <nav class="navbar navbar-expand-lg">

        <a class="navbar-brand" href="${pageContext.request.contextPath}/accueil">
            <img src="../../resource/pngtree-mountain-vector-icon-isolated-on-white-background-image_228214.ico" width="30" height="30" class="d-inline-block align-top" alt="">
            Les Amis de l'Escalade
        </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>


        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <form:form action="/accueil/showRecherche" method="get">
                        <button class="btn btn-outline-info nav-link" id="headerSearch" type="submit">Recherche</button>
                    </form:form>
                </li>
                <li class="nav-item">
                    <c:choose>
                        <c:when test="${ !session.connect }">
                            <form:form action="/utilisateur" method="get">
                                <button class="btn btn-outline-info my-2 my-sm-0 nav-link" type="submit">Connexion
                                </button>
                            </form:form>
                        </c:when>
                        <c:when test="${ session.connect }">
                            <form:form action="/accueil/profile" method="get">
                                <button class="btn btn-outline-info my-2 my-sm-0 nav-link"
                                        type="submit">${ session.utilisateur.pseudo}</button>
                            </form:form>
                        </c:when>
                    </c:choose>
                </li>
            </ul>
        </div>
    </nav>
</header>