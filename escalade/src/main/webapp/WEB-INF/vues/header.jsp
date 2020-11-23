<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="/accueil"> Les Amis de l'Esclalade</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="#">Rechercher</a> </li>
            <li><a href="/utilisateur"> Connexion</a></li>
<%--            <c:choose>--%>
<%--                <c:when test="${ sessionScope.session.isConnect }"> <a href="/profile"> ${sessionScope.session.utilisateur.pseudo}</a> </c:when>--%>
<%--                <c:when test="!${ sessionScope.session.isConnect }"> <a href="/utilisateur">Log In/ Sign up</a> </c:when>--%>
<%--            </c:choose>--%>
        </ul>
    </div>
</div>