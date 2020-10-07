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
    <div class="col-md-offset-1 col-md-10">

        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Liste Site</div>
            </div>
            <div class="panel-body">
                <table class="table table-striped table-bordered">
                    <tr>
                        <th>Nom</th>
                        <th>Action</th>
                    </tr>

                    <!-- loop over and print our customers -->
                    <c:forEach var="tempSites" items="${sites}">

                        <!-- construct an "update" link with customer id -->
                        <c:url var="getAllSite" value="/site/getAllSite">
                            <c:param name="siteId" value="${tempSites.id}"/>
                        </c:url>

                        <tr>
                            <td>${tempSites.nom}</td>

                            <td>
                                <form:form action="showSite" cssClass="form-horizontal" method="post" modelAttribute="site">
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
    </div>

</div>
</body>

</html>