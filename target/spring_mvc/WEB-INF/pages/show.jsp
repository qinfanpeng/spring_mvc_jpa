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
        <div class="span8 offs et2">
            <p>
                First name: ${user.firstName} <br>
                Last name: ${user.lastName} <br/>
                Email: ${user.email}
            </p>
        </div>
    </div>
</div>

</body>
</html>