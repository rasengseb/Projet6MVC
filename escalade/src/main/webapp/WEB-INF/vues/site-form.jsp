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
        <h3 class="card-header">Nouveau Site</h3>
        <div class="card-body">
            <form:form action="site/saveSite" cssClass="form-horizontal" method="post" modelAttribute="site">
                <form:hidden path="id" class="card-text"/>

                <div class="form-group row">
                    <label for="nom" class="col-md-3 col-form-label">Nom : </label>
                    <div class="col-md-9">
                        <form:input path="nom" cssClass="form-control"/>
                    </div>
                </div>

                <button class="btn btn-info" type="submit">Enregistrer</button>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>