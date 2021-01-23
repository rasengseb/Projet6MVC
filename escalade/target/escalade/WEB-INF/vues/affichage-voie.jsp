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
</head>
<body>

<%@ include file="header.jsp" %>

<div class="container">
    <div class="card">
        <h3 class="card-header">${voie.nom}</h3>
        <div class="card-body">
            <form:form cssClass="form-horizontal" method="get" modelAttribute="voie">

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

            </form:form>
        </div>
    </div>
</div>
</body>
</html>