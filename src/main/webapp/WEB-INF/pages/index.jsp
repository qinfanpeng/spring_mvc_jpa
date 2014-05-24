<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <title>My Blog</title>

    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="http://bootswatch.com/slate/bootstrap.min.css" rel="stylesheet">

</head>

<body>
<div class="navbar">
    <div class="navbar-inner">
        <div class="container">
            <a class="navbar-brand" href="/spring_mvc/users">My Blog</a>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="span8 offset2">
            <c:if test="${!empty users}">
                <h3>Users</h3>
                <table class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${users}" var="user">
                        <tr>
                            <td>
                                <a href="/spring_mvc/users/${user.id}">${user.lastName}, ${user.firstName}</a>
                            </td>
                            <td>${user.email}</td>
                            <td>
                                <a href="/spring_mvc/users/${user.id}/edit" class="btn btn-xs btn-success">Edit</a>
                                <a href="/spring_mvc/users/${user.id}/delete" class="btn btn-xs btn-danger">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>
            <a href="/spring_mvc/users/new" class="btn btn-success">New User</a>
        </div>
    </div>
</div>
</body>
</html>