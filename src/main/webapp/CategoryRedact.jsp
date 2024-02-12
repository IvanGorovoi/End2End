<%@ page import="com.example.testjakartatomcat.DBSQL.DBConnect" %>
<%@ page import="com.example.testjakartatomcat.DAO.LibraryDAO" %>
<%@ page import="com.example.testjakartatomcat.Model.Library" %>
<%@ page import="com.example.testjakartatomcat.Model.Category" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 23.10.2022
  Time: 16:35
  To change this template use File | Settings | File Templates.
  <%@include file="home.jsp" %>
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
  Category category = (Category) request.getAttribute("category");
%>

<html>
<head>
  <link rel="stylesheet" href="style.css">
  <title>Title</title>
</head>
<body>
<div>
  <div class="wrapp">
  <form style="width: 450px;" action="categoryRedact" method="post">
    <table>
      <tr>
        <td>Id:</td>
        <td>
          <%out.println(category.getId());%></td>
      </tr>
      <tr>
        <td>Title:</td>
        <td><label>
          <textarea name="title" rows="1" cols="10"><%out.println(category.getTitle());%></textarea>
        </label></td>
      </tr>
      <tr>
        <td>Multiplayer:</td>
        <td><label>
          <input type="text" name="multiplayer"><%out.println(category.getMultiplayer()?1:0);%>
        </label></td>
      </tr>
      <tr>
        <td>Singleplayer:</td>
        <td><label>
          <input type="text" name="singleplayer"><%out.println(category.getSingleplayer()?1:0);%>
        </label></td>
      </tr>
      <tr>
        <td>Not For All:</td>
        <td><label>
          <input type="text" name="not_for_all"><%out.println(category.getNot_for_all()?1:0);%>
        </label></td>
      </tr>
      <tr>
        <td><button type="submit">Submit</button></td>
      </tr>
    </table>
  </form>
  </div>
</div>
</body>
</html>
