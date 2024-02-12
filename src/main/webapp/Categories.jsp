<%@ page import="com.example.testjakartatomcat.DBSQL.DBConnect" %>
<%@ page import="com.example.testjakartatomcat.DAO.CategoryDAO" %>
<%@ page import="com.example.testjakartatomcat.Model.Category" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 25.10.2022
  Time: 20:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  ArrayList<Category> arrayList = (ArrayList<Category>) request.getAttribute("category");
%>
<html>
<head>
    <link rel="stylesheet" href="style.css">
    <title>Title</title>
</head>
<body>
<div class="wrapp">
  <table style="margin-bottom: 15px;">
  <tr>
    <th>Id</th>
    <th>Title</th>
    <th>Multiplayer</th>
    <th>Single-player</th>
    <th>Not for all</th>
  </tr>
  <tr>
    <% for(Category category : arrayList) {
      out.println("<tr>");
      out.println("<td class=\"unredact\">"+category.getId()+"</td>");
      out.println("<td class=\"unredact\">"+category.getTitle()+"</td>");
      out.println("<td class=\"redact\">"+category.getMultiplayer()+"</td>");
      out.println("<td class=\"redact\">"+category.getSingleplayer()+"</td>");
      out.println("<td class=\"redact\">"+category.getNot_for_all()+"</td>");
      out.println("/<tr>");
    } %>
  </tr>
</table>
  <div class="flexx">
    <form action="category" method="post">
      <div class="texxxt">Insert</div>
    <table>
      <tr>
        <td>Title:</td>
        <td><input type="text" name="title"></td>
      </tr>
      <tr>
        <td>Multiplayer:</td>
        <td><input type="text" name="multiplayer"></td>
      </tr>
      <tr>
        <td>Singleplayer:</td>
        <td><input type="text" name="singleplayer"></td>
      </tr>
      <tr>
        <td>Not for all:</td>
        <td><input type="text" name="not_for_all"></td>
      </tr>
      <tr>
        <td><button type="submit">Submit</button></td>
      </tr>
    </table>
  </form>
<form action="categoryDelete" method="post">
  <div class="texxxt">Delete</div>
  <table>
    <tr>
      <td>Id:</td>
      <td><input type="text" name="id"></td>
    </tr>
    <tr>
      <td><button type="submit">Submit</button></td>
    </tr>
  </table>
</form>
<form action="categoryRedact" method="get">
  <div class="texxxt">Update</div>
  <table>
    <tr>
      <td>Id:</td>
      <td><input type="text" name="id"></td>
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
