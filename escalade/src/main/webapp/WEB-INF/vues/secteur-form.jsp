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
<div class="container">
    <div class="row">
        <div class="col-offset-3 col-md-6">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title">Secteur</div>
                </div>
                <div class="panel-body">
                    <form:form action="/secteur/saveSecteur" cssClass="form-horizontal" method="post" modelAttribute="secteur">
                        <form:hidden path="id"/>
                        <input type="text" id=siteId" name="siteId" value="${siteId}" hidden/>

                        <div class="form-group">
                            <label for="numero" class="col-md-3 control-label">Secteur Numéro : </label>
                            <div class="col-md-9">
                                <form:input path="numero" cssClass="form-control" type="number"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <!-- Button -->
                            <div class="col-md-offset-3 col-md-9">
                                <form:button cssClass="btn btn-primary">Enregistrer</form:button>
                            </div>
                        </div>
                    </form:form>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>