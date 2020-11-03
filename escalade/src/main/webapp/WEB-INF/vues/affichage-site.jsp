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
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>

</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-offset-3 col-md-6">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title">Site</div>
                </div>
                <div class="panel-body">

                    <form:form action="/secteur/site/${site.id}/addSecteur" cssClass="form-horizontal" method="get"
                               modelAttribute="site">
                        <div class="form-group">
                            <label for="nom" class="col-md-3 control-label">Nom : </label>
                            <div class="col-md-9">
                                <form:input path="nom" cssClass="form-control" value="${site.nom}" readonly="true"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-3 control-label">Adresse :</label>
                            <div class="col-md-9">
                                <form:input path="adresse.numero" cssClass="form-control" value="${site.adresse.numero}" readonly="true"/>
                                <form:input path="adresse.rue" cssClass="form-control" value="${site.adresse.rue}" readonly="true"/>
                                <form:input path="adresse.codePostal" cssClass="form-control" value="${site.adresse.codePostal}" readonly="true"/>
                                <form:input path="adresse.ville" cssClass="form-control" value="${site.adresse.ville}" readonly="true"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <!-- Button -->
                            <div class="col-md-offset-3 col-md-9">
                                <form:button cssClass="btn btn-primary">Ajouter Secteur</form:button>
                            </div>
                        </div>
                    </form:form>

                    <form:form action="/adresse/${site.id}/addAdresse" cssClass="form-horizontal" method="get"
                               modelAttribute="site">
                    <div class="form-group">
                        <!-- Button -->
                        <div class="col-md-offset-3 col-md-9">
                            <form:button cssClass="btn btn-primary">Ajouter Adresse</form:button>
                        </div>
                    </div>
                    </form:form>
                </div>

                <%--                    Affichage liste Secteur du site--%>

                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">Secteurs</div>
                    </div>
                    <div class="panel-body">
                        <!-- loop over and print our customers -->
                        <c:forEach var="secteur" items="${secteur}">
                            <tr>
                                <td>Secteur numéro ${secteur.numero}</td>

                                <td>
                                    <form:form action="/secteur/showSecteur/${secteur.id}" cssClass="form-horizontal"
                                               method="get"
                                               modelAttribute="secteur">
                                        <div class="form-group">
                                            <div class="col-md-offset-3 col-md-9">
                                                <form:button cssClass="btn btn-primary">Voir</form:button>
                                            </div>
                                        </div>
                                    </form:form>
                                </td>

                            </tr>

                        </c:forEach>
                    </div>
                </div>

                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">Commentaire</div>
                    </div>
                    <div class="panel-body">
                        <!-- loop over and print our customers -->
                        <c:forEach var="commentaire" items="${commentaire}">
                            <tr>
                                <td>${commentaire.utilisateur.nom}</td>

                                <td>
                                        ${commentaire.commentaire}
                                </td>

                            </tr>

                        </c:forEach>
                        <!-- Button -->
                        <%--                            <div class="col-md-offset-3 col-md-9">--%>
                        <%--                                <form:button cssClass="btn btn-primary">Ajouter Secteur</form:button>--%>
                        <%--                            </div>--%>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
</body>
</html>