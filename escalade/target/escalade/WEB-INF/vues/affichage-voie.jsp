<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="value" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Les Amis de L'escalade</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <style type="text/css"><%@include file="../css/style.css"%></style>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="container">
    <div class="card">
        <h3 class="card-header">${voie.nom}</h3>
        <div class="card-body">
            <form:form cssClass="form-horizontal" method="get" modelAttribute="voie" action="/voie/showModifVoie/${voie.id}">

                <div class="form-group row">
                    <label for="longueur" class="col-md-3 col-form-label">Longueur : </label>
                    <p id="longueur" class="col-md-9">${voie.longueur}</p>
                </div>

                <div class="form-group row">
                    <label for="cote" class="col-md-3 col-form-label">Cote : </label>
                    <p id="cote" class="col-md-9">${voie.cote}</p>
                </div>

                <div class="form-group row">
                    <label for="description" class="col-md-3 col-form-label">Description : </label>
                    <p id="description" class="col-md-9">${voie.description}</p>
                </div>
                <c:if test="${session.utilisateur.id == voie.secteur.site.utilisateur.id || session.utilisateur.admin}">
                    <button class="btn btn-info" type="submit">Modifier</button>
                </c:if>
            </form:form>
        </div>
    </div>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>