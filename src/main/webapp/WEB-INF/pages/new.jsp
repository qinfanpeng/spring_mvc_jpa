<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <title>Spring MVC Application</title>

    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="http://bootswatch.com/slate/bootstrap.min.css" rel="stylesheet">

</head>

<body>
<div class="navbar">
    <div class="navbar-inner">
        <div class="container">
            <a class="navbar-brand" href="#">My Blog</a>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="span8 offset2">
            <div class="well">
            <h1>Users</h1>
            <form:form method="post" action="/spring_mvc/users/create" commandName="user" cssClass="form-horizontal">
            <div class="form-group">
                <form:label class="control-label col-lg-2" path="firstName">First Name:</form:label>
                <div class="col-lg-10">
                    <form:input path="firstName" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <form:label cssClass="control-label col-lg-2" path="lastName">Last Name:</form:label>
                <div class="col-lg-10">
                    <form:input path="lastName" cssClass="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <form:label cssClass="control-label col-lg-2" path="email">Email:</form:label>
                <div class=" col-lg-10">
                    <form:input path="email" cssClass="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-10 col-lg-offset-2">
                    <input type="submit" value="Add User" class="btn btn-success"/>
                    </form:form>
                </div>
            </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>