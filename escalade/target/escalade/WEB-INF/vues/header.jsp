<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/accueil">
            <img src="" width="30" height="30" alt="">
            Les amis de l'escalade
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse d-flex justify-content-end" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <form:form action="/accueil/showRecherche" method="get">
                        <button class="btn btn-outline-info nav-link" type="submit">Recherche</button>
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