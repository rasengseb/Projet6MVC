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

<%@ include file="header.jsp" %>

<div class="container">
    <div class="card">
        <h3 class="card-header">${site.nom}</h3>
        <div class="card-body">

            <div class="card">
                <div class="card-header">Adresse :</div>
                <div class="card-body">
                    <c:choose>
                        <c:when test="${ site.adresse != null }">
                            <p>${ site.adresse.toString() }</p>
                            <form:form>
                                <button type="submit" class="btn btn-info">Modifier</button>
                            </form:form>
                        </c:when>

                        <c:when test="${ site.adresse == null }">
                            <p>Aucune adresse enregistée</p>
                            <form:form action="/adresse/${site.id}/addAdresse" cssClass="form-horizontal" method="get"
                                       modelAttribute="site">
                                <button type="submit" class="btn btn-info">Ajouter Adresse</button>
                            </form:form>
                        </c:when>
                    </c:choose>
                </div>
            </div>

            <div class="card">
                <div class="card-header">Secteur :</div>
                <div class="card-body">
                    <c:choose>
                        <c:when test="${site.secteurs == null }">
                            <p>Aucun secteur renseigné pour le moment</p>
                        </c:when>
                        <c:when test="${site.secteurs != null}">
                            <table class="table table-striped table-bordered">
                                <tr>
                                    <th>Nom</th>
                                    <th></th>
                                </tr>
                                <c:forEach var="secteur" items="${secteur}">
                                    <tr>
                                        <td>Secteur numéro ${secteur.numero}</td>
                                        <td>
                                            <form:form action="/secteur/showSecteur/${secteur.id}"
                                                       cssClass="form-horizontal"
                                                       method="get"
                                                       modelAttribute="secteur">
                                                <button type="submit" class="btn btn-info">Voir</button>
                                            </form:form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </c:when>
                    </c:choose>
                    <form:form action="/secteur/site/${site.id}/addSecteur" cssClass="form-horizontal" method="get"
                               modelAttribute="site">
                        <button type="submit" class="btn btn-info">Ajouter Secteur</button>
                    </form:form>
                </div>
            </div>

            <div class="card">
                <div class="card-header">Topos :</div>
                <div class="card-body">
                    <c:choose>
                        <c:when test="${site.topos == null }">
                            <p>Aucun topo n'est enregistré. Peut-être en avez-vous un à proposer ?</p>
                        </c:when>
                        <c:when test="${site.topos != null }">
                            <table class="table table-striped table-bordered">
                                <tr>
                                    <th>Nom</th>
                                    <th></th>
                                </tr>
                                <c:forEach var="topo" items="${site.topos}">
                                    <tr>
                                        <td>${topo.nom}</td>
                                        <td>
                                            <form:form cssClass="form-horizontal"
                                                       method="get"
                                                       modelAttribute="topo"
                                                       action="/site/affichageTopo/${topo.id}">
                                                <button class="btn btn-info">Voir</button>
                                            </form:form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </c:when>
                    </c:choose>
                    <form:form action="/site/showTopo/${siteId}" cssClass="form-horizontal" method="get"
                               modelAttribute="topo">
                        <button class="btn btn-info" type="submit">Ajouter Topo</button>
                    </form:form>
                </div>
            </div>

        </div>
    </div>
</div>


<%--                COMMENTAIRE PART--%>
<div class="panel panel-info">
    <div class="panel-heading">
        <div class="panel-title">Commentaire</div>
    </div>
    <div class="panel-body">
        <!-- loop over and print our customers -->
        <c:forEach var="commentaires" items="${commentaires}">
            <tr>
                <td>${commentaires.utilisateur.pseudo}</td>

                <td>
                        ${commentaires.commentaire}
                </td>

            </tr>

        </c:forEach>
    </div>

    <form:form action="/site/saveCommentaire/${siteId}" cssClass="form-horizontal" method="post"
               modelAttribute="commentaire">
        <div class="form-group">
            <label for="commentaire" class="col-md-3 control-label">Commentaire : </label>
            <div class="col-md-offset-3 col-md-9">
                <form:input path="commentaire" cssClass="form-control"/>
            </div>
            <!-- Button -->
            <div class="col-md-offset-3 col-md-9">
                <form:button cssClass="btn btn-primary">Commenter</form:button>
            </div>
        </div>
    </form:form>
</div>


</body>
</html>