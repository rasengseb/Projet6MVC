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

<div class="container">
    <div class="card">
        <h1 class="card-header">Modifier Adresse :</h1>
        <div class="card-body">
            <form:form action="/adresse/updateAdresse/${adresse.site.id}" cssClass="form-horizontal" method="post" modelAttribute="adresse">

                <input type="text" id=siteId" name="siteId" value="${adresse.site.id}" hidden/>

                <div class="form-group row">
                    <label for="numero" class="col-md-3 col-form-label">Numéro :</label>
                    <div class="col-md-9">
                        <form:input path="numero" cssClass="form-control" type="text" value="${adresse.numero}"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="rue" class="col-md-3 col-form-label">Rue :</label>
                    <div class="col-md-9">
                        <form:input path="rue" cssClass="form-control" type="text" value="${adresse.rue}"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="codePostal" class="col-md-3 col-form-label">Code Postal :</label>
                    <div class="col-md-9">
                        <form:input path="codePostal" cssClass="form-control" type="text" value="${adresse.codePostal}"/>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="ville" class="col-md-3 col-form-label">Ville :</label>
                    <div class="col-md-9">
                        <form:input path="ville" cssClass="form-control" type="text" value="${adresse.ville}"/>
                    </div>
                </div>

                <button type="submit" class="btn btn-info">Enregistrer</button>
            </form:form>
        </div>
    </div>
</div>

</body>
</html>