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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <style type="text/css"><%@include file="../css/style.css"%></style>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="container">
    <div class="card">
        <div class="card-header">
            <h3>Secteur ${secteur.numero}</h3>
            <c:if test="${session.connect && (session.utilisateur.id == secteur.site.utilisateur.id || session.utilisateur.admin)}">
                <form:form action="/secteur/showModifSecteur/${secteur.id}" cssClass="form-horizontal" method="get"
                           modelAttribute="secteur">
                    <button type="submit" class="btn btn-info">Modifier</button>
                </form:form>
            </c:if>
        </div>

        <div class="card-body">
            <c:choose>
                <c:when test="${secteur.voies != null}">
                    <table class="table table-striped table-bordered">
                        <tr>
                            <th>Nom de la voie :</th>
                            <th></th>
                        </tr>
                        <c:forEach var="voie" items="${voie}">
                            <tr>
                                <td>${voie.nom}</td>
                                <td>
                                    <form:form action="/voie/showVoie/${voie.id}" cssClass="form-horizontal"
                                               method="get"
                                               modelAttribute="voie">
                                        <button class="btn btn-info" type="submit">Voir</button>
                                    </form:form>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </c:when>

                <c:when test="${secteur.voies == null}">
                    <p>Aucune voie n'est renseignée pour ce secteur</p>
                </c:when>

            </c:choose>
            <c:if test="${session.connect && (session.utilisateur.id == secteur.site.utilisateur.id || session.utilisateur.admin)}">
                <form:form action="/voie/secteur/${secteur.id}/addVoie" cssClass="form-horizontal" method="get"
                           modelAttribute="secteur">
                    <button class="btn btn-info" type="submit">Ajouter Voie</button>
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