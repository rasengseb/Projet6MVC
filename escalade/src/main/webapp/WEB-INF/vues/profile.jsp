<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Les Amis de L'escalade</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>


</head>
<body>
<%@ include file="header.jsp" %>

<div class="row">
    <div class="container">

        <ul class="nav nav-tabs nav-stacked col-md-3">
            <li class="active"><a data-toggle="tab" href="#infos">Mes Infos</a></li>
            <li><a data-toggle="tab" href="#sites">Mes Sites</a></li>
            <li><a data-toggle="tab" href="#resa">Mes Resa</a></li>
            <li><a data-toggle="tab" href="#topo">Mes Topos</a></li>
        </ul>

        <div class="tab-content col-md-9">


            <%--            PANNEAU INFORMARTION UTILISATEUR--%>
            <div id="infos" class="tab-pane active">
                <h3>Mes Infos</h3>
                <div class="form-group">
                    <label for="pseudo" class="col-md-3 control-label">Pseudo : </label>
                    <div class="col-md-9">
                        <p id="pseudo">${session.utilisateur.pseudo}</p>
                    </div>
                </div>
                <div class="form-group">
                    <label for="prenom" class="col-md-3 control-label">Prénom : </label>
                    <div class="col-md-9">
                        <p id="prenom">${session.utilisateur.prenom}</p>
                    </div>
                </div>
                <div class="form-group">
                    <label for="nom" class="col-md-3 control-label">Nom : </label>
                    <div class="col-md-9">
                        <p id="nom">${session.utilisateur.nom}</p>
                    </div>
                </div>
                <div class="form-group">
                    <label for="mail" class="col-md-3 control-label">Email : </label>
                    <div class="col-md-9">
                        <p id="mail">${session.utilisateur.mail}</p>
                    </div>
                </div>
            </div>


            <%--    PANNEAU SITES UTILISATEUR--%>
            <div id="sites" class="tab-pane">
                <h3>Mes Sites</h3>
                <div class="panel-body">
                    <table class="table table-striped table-bordered">
                        <tr>
                            <th>Nom</th>
                            <th>Action</th>
                        </tr>

                        <!-- loop over and print our customers -->
                        <c:forEach var="tempSites" items="${sites}">
                            <tr>
                                <td>${tempSites.nom}</td>
                                <td>
                                    <form:form action="/site/showSite/${tempSites.id}" cssClass="form-horizontal" method="get" modelAttribute="sites">
                                        <div class="form-group">
                                            <div class="col-md-offset-3 col-md-9">
                                                <form:button cssClass="btn btn-primary">Voir</form:button>
                                            </div>
                                        </div>
                                    </form:form>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>


<%--                PANNEAU RESERVATION UTILISATEUR--%>
            <div id="resa" class="tab-pane">
                <h3>Mes Resa</h3>
            </div>


<%--            PANNEAU TOPOS UTILISATEUR--%>
            <div id="topo" class="tab-pane">
                <h3>Mes Topos</h3>
            </div>

        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
