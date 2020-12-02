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
<div class="container">
    <div class="row">
        <div class="col-offset-3 col-md-6">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title">Voie</div>
                </div>
                <div class="panel-body">

                    <form:form cssClass="form-horizontal" method="get"
                               modelAttribute="voie">
                        <div class="form-group">
                            <label for="nom" class="col-md-3 control-label">Nom : </label>
                            <div class="col-md-9">
                                <form:input path="nom" cssClass="form-control" value="${voie.nom}" readonly="true"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="longueur" class="col-md-3 control-label">Longueur : </label>
                            <div class="col-md-9">
                                <form:input path="longueur" cssClass="form-control" value="${voie.longueur}" readonly="true"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="cote" class="col-md-3 control-label">Cote : </label>
                            <div class="col-md-9">
                                <form:input path="cote" cssClass="form-control" value="${voie.cote}" readonly="true"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description" class="col-md-3 control-label">Description : </label>
                            <div class="col-md-9">
                                <form:input path="description" cssClass="form-control" value="${voie.description}" readonly="true"/>
                            </div>
                        </div>

                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>