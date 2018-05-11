<%--
  Created by IntelliJ IDEA.
  User: Amod
  Date: 5/11/2018
  Time: 12:27 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.amod.jsp.*" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<html>
  <head>
    <title>JSP Demo</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
  </head>
  <body class="container">
    <%
      DatabaseConnection.connect();
      try {
        Statement statement = DatabaseConnection.conn.createStatement();
        String sql = "SELECT name, email FROM ntb_pramod.dealers";
        ResultSet resultSet = statement.executeQuery(sql);

        while (resultSet.next()){
          out.print("<strong>Name:</strong> "+resultSet.getString("name")+"  <strong>Email:</strong> "+ resultSet.getString("email")+"<br>");
        }

        resultSet.close();
        statement.close();
      }
      catch (SQLException | NullPointerException e){
        out.print(e.getCause()+ " " + e.getMessage());
      }

    %>
  </body>
</html>
