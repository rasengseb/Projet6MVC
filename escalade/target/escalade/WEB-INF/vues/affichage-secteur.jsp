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
</head>
<body>

<%@ include file="header.jsp" %>

<div class="container">
    <div class="card">
        <h3 class="card-header">Secteur ${secteur.numero}</h3>
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
            <form:form action="/voie/secteur/${secteur.id}/addVoie" cssClass="form-horizontal" method="get"
                       modelAttribute="secteur">
                <button class="btn btn-info" type="submit">Ajouter Voie</button>
            </form:form>
        </div>
    </div>
</div>

</body>
</html>