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
    <style type="text/css"><%@include file="../css/style.css"%></style>
</head>
<body>
<%@ include file="header.jsp" %>

<%--Corps de la page web--%>
<div class="container">
    <div class="card">
        <h3 class="card-header">Recherche</h3>
        <div class="card-body">
            <form:form action="/accueil/recherche" cssClass="form-horizontal" method="get" modelAttribute="recherche">
                <div class="row col-md-12">
                    <div class="col-md-3">
                        <form:input path="siteNom" cssClass="form-horizontal" type="text" placeholder="nom"/>
                    </div>
                    <div class="col-md-3">
                        <form:input path="codePostal" cssClass="form-horizontal" type="number" placeholder="Code Postal"/>
                    </div>
                    <div class="col-md-3">
                        <form:input path="nbSecteur" cssClass="form-horizontal" type="number" placeholder="nombre secteur"/>
                    </div>
                    <div class="col-md-3">
                        <button class="btn btn_info" type="submit">Recherche</button>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
    <br/>
    <table class="table table-striped table-bordered">
        <tr>
            <th>Site</th>
            <th>Code Postal</th>
            <th>Nombre de Secteur</th>
            <th></th>
        </tr>
        <c:forEach var="site" items="${sites}">
            <tr>
                <td>${site.nom}</td>
                <td>${site.adresse.codePostal}</td>
                <td>${site.nbSecteur}</td>
                <td class="form-group">
                    <form:form action="/site/showSite/${site.id}" cssClass="form-horizontal" method="get"
                               modelAttribute="sites">
                        <button class="btn btn-info" type="submit">Voir</button>
                    </form:form>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>