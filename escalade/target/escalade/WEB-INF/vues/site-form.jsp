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
        <h3 class="card-header">Nouveau Site</h3>
        <div class="card-body">
            <form:form action="site/saveSite" cssClass="form-horizontal" method="post" modelAttribute="site">
                <form:hidden path="id" class="card-text"/>

                <c:if test="${session.utilisateur.admin}">
                    <form:checkbox path="officiel" name="officiel" id="officiel" cssClass="form-horizontal"
                                   value="${site.officiel}"/>
                    <label for="officiel">Site Officiel</label>
                </c:if>

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