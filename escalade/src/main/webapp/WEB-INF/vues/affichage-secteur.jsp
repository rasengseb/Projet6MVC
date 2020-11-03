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
                    <div class="panel-title">Secteur</div>
                </div>
                <div class="panel-body">

                    <form:form action="/voie/secteur/${secteur.id}/addVoie" cssClass="form-horizontal" method="get"
                               modelAttribute="secteur">
                        <div class="form-group">
                            <label for="numero" class="col-md-3 control-label">Secteur numéro </label>
                            <div class="col-md-9">
                                <form:input path="numero" cssClass="form-control" value="${secteur.numero}"readonly="true"/>
                            </div>
                        </div>


                        <div class="form-group">
                            <!-- Button -->
                            <div class="col-md-offset-3 col-md-9">
                                <form:button cssClass="btn btn-primary">Ajouter Voie</form:button>
                            </div>
                        </div>
                    </form:form>
                </div>

                <%--                    Affichage liste voie du secteur                    --%>

                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">Voie</div>
                    </div>
                    <div class="panel-body">
                        <!-- loop over and print our customers -->
                        <c:forEach var="voie" items="${voie}">
                            <tr>
                                <td>Voie numéro ${voie.nom}</td>

                                <td>
                                    <form:form action="/voie/showVoie/${voie.id}" cssClass="form-horizontal"
                                               method="get"
                                               modelAttribute="voie">
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


            </div>
        </div>
    </div>
</div>
</body>
</html>