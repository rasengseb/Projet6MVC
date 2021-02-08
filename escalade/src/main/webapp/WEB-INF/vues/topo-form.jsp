<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <h1 class="card-header">Nouveau Topo :</h1>
        <div class="card-body">
            <form:form action="/site/saveTopo/${siteId}" cssClass="form-horizontal" method="post" modelAttribute="topo">

                <input type="text" id=siteId" name="siteId" value="${siteId}" hidden/>

                <div class="form-group row">
                    <label for="nom" class="col-md-3 col-form-label">Nom : </label>
                    <div class="col-md-9">
                        <form:input path="nom" cssClass="form-control" type="text" placeholder="Nom"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="description" class="col-md-3 col-form-label">Description : </label>
                    <div class="col-md-9">
                        <form:input path="description" cssClass="form-control" type="text" placeholder="Description"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="dateParution" class="col-md-3 col-form-label">Date de parution : </label>
                    <div class="col-md-9">
                        <form:input path="dateParution" cssClass="form-control" type="date" id="dateParution" placeholder="jj/mm/aaaa"/>
                    </div>
                </div>

                <button type="submit" class="btn btn-dark">Enregistrer</button>

            </form:form>
        </div>
    </div>
</div>

</body>
</html>