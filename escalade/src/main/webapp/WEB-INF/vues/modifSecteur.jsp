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
    <div class="card">
        <h1 class="card-header">Secteur :</h1>
        <div class="card-body">
            <form:form action="/secteur/updateSecteur/${secteur.site.id}" cssClass="form-horizontal" method="post" modelAttribute="secteur">
                <form:hidden path="id"/>

                <div class="form-group row">
                    <label for="numero" class="col-md-3 col-form-label">Secteur Numéro : </label>
                    <div class="col-md-9">
                        <form:input path="numero" cssClass="form-control" type="number" value="${secteur.numero}"/>
                    </div>
                </div>

                <button type="submit" class="btn btn-dark">Enregistrer</button>
            </form:form>
        </div>
    </div>
</div>

</body>
</html>