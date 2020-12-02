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
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="infos-tab" data-toggle="tab" href="#infos" role="tab" aria-controls="infos"
               aria-selected="true">Mes Infos</a>
        </li>
        <li>
            <a class="nav-link" id="sites-tab" data-toggle="tab" href="#sites" aria-controls="sites"
               aria-selected="false">Mes Sites</a>
        </li>
        <li>
            <a class="nav-link" id="resa-tab" data-toggle="tab" href="#resa" aria-controls="resa" aria-selected="false">Mes
                Resa</a>
        </li>
        <li>
            <a class="nav-link" id="topo-tab" data-toggle="tab" href="#topo" aria-controls="topo" aria-selected="false">Mes
                Topos</a>
        </li>
    </ul>

    <div class="tab-content" id="myTabContent">

        <%--            PANNEAU INFORMARTION UTILISATEUR--%>
        <div id="infos" class="tab-pane fade show active" role="tabpanel" aria-labelledby="infos-tab">
            <h3>Mes Infos</h3>
            <div class="form-group row">
                <label for="pseudo" class="col-md-3 col-form-label">Pseudo : </label>
                <p id="pseudo" class="col-md-9 form-control-plaintext">${session.utilisateur.pseudo}</p>
            </div>
            <div class="form-group row">
                <label for="prenom" class="col-md-3 col-form-label">Prénom : </label>
                <p id="prenom" class="col-md-9 form-control-plaintext">${session.utilisateur.prenom}</p>
            </div>
            <div class="form-group row">
                <label for="nom" class="col-md-3 col-form-label">Nom : </label>
                <p id="nom" class="form-control-plaintext col-md-9">${session.utilisateur.nom}</p>
            </div>
            <div class="form-group row">
                <label for="mail" class="col-md-3 col-form-label">Email : </label>
                <p id="mail" class="form-control-plaintext col-md-9">${session.utilisateur.mail}</p>
            </div>
            <form:form cssClass="form-horizontal">
                <button class="btn btn-dark" type="submit">Modifier</button>
            </form:form>
        </div>


        <%--    PANNEAU SITES UTILISATEUR--%>
        <div id="sites" class="tab-pane fade" role="tabpanel" aria-labelledby="sites-tab">
            <h3>Mes Sites</h3>
            <div class="panel-body">
                <table class="table table-striped table-bordered">
                    <tr>
                        <th>Nom</th>
                        <th></th>
                    </tr>
                    <!-- loop over and print our customers -->
                    <c:forEach var="tempSites" items="${sites}">
                        <tr>
                            <td>${tempSites.nom}</td>
                            <td class="form-group">
                                <form:form action="/site/showSite/${tempSites.id}" cssClass="form-horizontal"
                                           cssStyle="display: inline-block"
                                           method="get"
                                           modelAttribute="sites">
                                    <button class="btn btn-info" type="submit">Voir</button>
                                </form:form>
                                <form:form cssClass="form-horizontal" cssStyle="display: inline-block">
                                    <button class="btn btn-info" type="submit">Modifier</button>
                                </form:form>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <form:form action="/site" method="get" cssClass="form-horizontal">
                <button class="btn btn-dark" type="submit">Ajouter Site</button>
            </form:form>
        </div>


        <%--                PANNEAU RESERVATION UTILISATEUR--%>
        <div id="resa" class="tab-pane fade" role="tabpanel" aria-labelledby="resa-tab">
            <h3>Mes Resa</h3>
        </div>


        <%--            PANNEAU TOPOS UTILISATEUR--%>
        <div id="topo" class="tab-pane fade" role="tabpanel" aria-labelledby="topo-tab">
            <h3>Mes Topos</h3>
        </div>

    </div>
</div>

</body>
</html>
