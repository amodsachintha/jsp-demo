<%--
  Created by IntelliJ IDEA.
  User: Amod
  Date: 5/11/2018
  Time: 2:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <%@include file="header.html" %>
</head>
<body class="container" >

<div class="row" style="margin-top: 50px">
    <div class="col-md-3">

    </div>
    <div class="col-md-6">
        <div class="jumbotron-fluid" style="text-align: center">
            <h2>Login</h2>
            <p>Login</p>
        </div>

        <div style="border: solid 1px #e5e5e5; padding: 10px; border-radius: 15px; align-content: center" align="center">
            <form action="loginservlet" method="POST">
                <div class="form-group">
                    <%--<label for="email">Email</label>--%>
                    <input class="form-control" name="email" type="email" id="email" placeholder="email" style="text-align: center" required>
                    <%--<small>Enter your email address here</small>--%>
                </div>

                <div class="form-group">
                    <%--<label for="password">Password</label>--%>
                    <input class="form-control" name="password" type="password" id="password" style="text-align: center" placeholder="password" required>
                </div>
                <input type="submit" value="login" class="btn btn-success" style="width: 100px">
            </form>
        </div>
    </div>
    <div class="col-md-3">

    </div>
</div>

</body>
</html>
