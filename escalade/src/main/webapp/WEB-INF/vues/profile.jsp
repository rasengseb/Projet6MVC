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
    <style type="text/css">
        <%@include file="/WEB-INF/css/tabs.css"%>
    </style>

</head>
<body>

<%@ include file="header.jsp" %>


<div class="container">

    <div class="container-onglets">
        <div class="onglets active" data-anim="1">Mes Infos</div>
        <div class="onglets" data-anim="2">Mes Sites</div>
        <div class="onglets" data-anim="3">Mes Résa</div>
    </div>

    <div class="contenu activeContenu" data-anim="1">
        <h3>Infos</h3>
        <hr>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur perspiciatis alias quod, dolores eum illum
            doloremque assumenda odio architecto, dolorum vitae nobis, quo deleniti ipsum.</p>
    </div>

    <div class="contenu" data-anim="2">
        <h3>Sites</h3>
        <hr>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur perspiciatis alias quod, dolores eum illum
            doloremque assumenda odio architecto, dolorum vitae nobis, quo deleniti ipsum.</p>
    </div>

    <div class="contenu" data-anim="3">
        <h3>Resa</h3>
        <hr>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur perspiciatis alias quod, dolores eum illum
            doloremque assumenda odio architecto, dolorum vitae nobis, quo deleniti ipsum.</p>
    </div>
</div>

<script type="text/javascript">
    <%@include file="/WEB-INF/js/tabs.js"%>
</script>

</body>
</html>
