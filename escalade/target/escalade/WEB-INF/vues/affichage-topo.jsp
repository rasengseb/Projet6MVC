<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:directive.page contentType="text/html; charset=UTF-8" />
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
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
        <h1 class="card-header">${topo.nom}</h1>
        <div class="card-body">

            <div class="form-group row">
                <label for="date" class="col-form-label col-md-3">Date de parution :</label>
                <p id="date" class="col-md-9">${topo.dateParution}</p>
            </div>

            <div class="form-group row">
                <label for="description" class="col-form-label col-md-3">Description :</label>
                <p id="description" class="col-md-9">${topo.description}</p>
            </div>

            <div class="form-group row">
                <label for="user" class="col-form-label col-md-3">Par :</label>
                <p id="user" class="col-md-9">${topo.utilisateur.pseudo}</p>
            </div>

            <c:if test="${session.connect}">
                <form:form action="/site/reservation/${topo.id}" cssClass="form-horizontal" method="post" modelAttribute="reservation">
                    <div class="form-group row">
                        <label for="resa" class="col-form-label col-md-3">Date de la réservation :</label>
                        <div class="col-md-9">
                            <form:input path="dateReservation" cssClass="form-control" type="date" id="resa"
                                        placeholder="jj/mm/aaaa"/>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-dark">Réserver</button>
                </form:form>
            </c:if>
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