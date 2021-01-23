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

<%@ include file="header.jsp" %>


<div class="container">
    <div class="card">$
        <form:form action="/site/modifSite/${site.id}" cssClass="form-horizontal" method="post" modelAttribute="site">
        <h3 class="card-header">Modification Site</h3>
        <div class="card-body">
            <form:hidden path="id" class="card-text"/>

            <label for="nom">Nom du site :</label>
            <input type="text" id="nom" name="nom" value="${site.nom}"/>

            <c:if test="${session.utilisateur.admin}">
                <form:checkbox path="officiel" name="officel" id="offciel" cssClass="form-horizontal"
                               value="${site.officiel}"/>
                <label for="offciel">Site Officiel</label>
            </c:if>

            <button class="btn btn-info" type="submit">Enregistrer</button>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>