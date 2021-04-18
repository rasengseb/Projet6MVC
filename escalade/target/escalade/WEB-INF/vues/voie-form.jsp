<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:directive.page contentType="text/html; charset=UTF-8" />
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
    <title>Les Amis de L'escalade</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <style type="text/css">
        <%@include file="../css/style.css" %>
    </style>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="container">
    <div class="card">
        <h1 class="card-header">Nouvelle voie :</h1>
        <div class="card-body">
            <form:form action="/voie/saveVoie/${secteurId}" cssClass="form-horizontal" method="post"
                       modelAttribute="voie">
                <form:hidden path="id"/>
                <input type="text" id=secteurId" name="secteurId" value="${secteurId}" hidden/>
                <div class="form-group row">
                    <label for="nom" class="col-form-label col-md-3">Nom :</label>
                    <div class="col-md-9">
                        <form:input path="nom" cssClass="form-control" id="nom" type="text"
                                    palceholder="Nom"/>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="longueur" class="col-form-label col-md-3">Longueur :</label>
                    <div class="col-md-9">
                        <form:input path="longueur" cssClass="form-control" id="longueur" type="number"
                                    palceholder="0m"/>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="cote" class="col-form-label col-md-3">Côte :</label>
                    <div class="col-md-9">
                        <form:input path="cote" cssClass="form-control" id="cote" type="text"
                                    palceholder="7c"/>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="description" class="col-form-label col-md-3">Description :</label>
                    <div class="col-md-9">
                        <form:input path="description" cssClass="form-control" id="description" type="text"
                                    palceholder="description"/>
                    </div>
                </div>

                <button type="submit" class="btn btn-dark">Enregistrer</button>
            </form:form>
        </div>
    </div>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>