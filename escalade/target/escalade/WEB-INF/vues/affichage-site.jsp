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

                    <form:form action="site/${site.id}/addSecteur" cssClass="form-horizontal" method="get"
                               modelAttribute="site">
                        <div class="form-group">
                            <label for="nom" class="col-md-3 control-label">Nom : </label>
                            <div class="col-md-9">
                                <form:input path="nom" cssClass="form-control" value="${site.nom}"/>
                            </div>
                        </div>


                        <div class="form-group">
                            <!-- Button -->
                            <div class="col-md-offset-3 col-md-9">
                                <form:button cssClass="btn btn-primary">Ajouter Secteur</form:button>
                            </div>
                        </div>
                    </form:form>

                    <%--                    Affichage liste Secteur du site--%>
                    <c:if test="${ secteurs != null }" var="secteurs">
                        <!-- loop over and print our customers -->
                        <c:forEach var="secteurs" items="${secteurs}">
                            <c:param name="siteId" value="${secteur.id}"/>
                            <tr>
                                <td>${secteur.numero}</td>

                                <td>
                                    <form:form action="showSite/${secteur.id}" cssClass="form-horizontal" method="get"
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
                    </c:if>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>