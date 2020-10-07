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
        <div class="col-md-6">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title">S'inscrire</div>
                </div>
                <div class="panel-body">
                    <form:form action="saveUtilisateur" cssClass="form-horizontal"
                               method="post" modelAttribute="utilisateur">

                        <!-- need to associate this data with customer id -->
                        <form:hidden path="id"/>

                        <div class="form-group">
                            <label for="pseudo" class="col-md-3 control-label">Pseudo : </label>
                            <div class="col-md-9">
                                <form:input path="pseudo" cssClass="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="mdp" class="col-md-3 control-label">Mot de Passe : </label>
                            <div class="col-md-9">
                                <form:input path="mdp" cssClass="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="prenom" class="col-md-3 control-label">Prénom : </label>
                            <div class="col-md-9">
                                <form:input path="prenom" cssClass="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="nom" class="col-md-3 control-label">Nom : </label>
                            <div class="col-md-9">
                                <form:input path="nom" cssClass="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="mail" class="col-md-3 control-label">Email : </label>
                            <div class="col-md-9">
                                <form:input path="mail" cssClass="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <!-- Button -->
                            <div class="col-md-offset-3 col-md-9">
                                <form:button cssClass="btn btn-primary">Inscription</form:button>
                            </div>
                        </div>

                    </form:form>
                </div>

            </div>
        </div>

        <div class="col-md-6">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title">Connexion</div>
                </div>
                <div class="panel-body">
                    <form:form action="connexion" cssClass="form-horizontal" method="post" modelAttribute="connexion">

                        <div class="form-group">
                            <label for="pseudo" class="col-md-3 control-label">Pseudo</label>
                            <div class="col-md-9">
                                <form:input path="cpseudo" cssClass="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="mdp" class="col-md-3 control-label"> Mot de Passe</label>
                            <div class="col-md-9">
                                <form:input path="cmdp" cssClass="form-control"/>
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