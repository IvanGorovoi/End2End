
<%@ page import="com.example.testjakartatomcat.Model.Games" %>
<%@ page import="com.example.testjakartatomcat.Model.Users" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 23.10.2022
  Time: 16:35
  To change this template use File | Settings | File Templates.
  <%@include file="home.jsp" %>
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
  Users user = (Users) request.getAttribute("user");
%>
<html>
<head>
  <title>UserRedact</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
<div>
  <div class="wrapp">
    <form style="width: 450px;" action="usersRedact" method="post">
      <table>
        <tr>
          <td>Id:</td>
          <td>
            <%out.println(user.getId());%></td>
        </tr>
        <tr>
          <td>Nickname:</td>
          <td><label>
            <textarea name="nickname" rows="1" cols="10"><%out.println(user.getNickname());%></textarea>
          </label></td>
        </tr>
        <tr>
          <td>balance:</td>
          <td><label>
            <input type="text" name="balance"><%out.println(user.getBalance());%>
          </label></td>
        </tr>
        <tr>
          <td>Extra guard:</td>
          <td><label>
            <input type="text" name="extra_guard"><%out.println(user.getExtra_guard());%>
          </label></td>
        </tr>
        <tr>
          <td>Registration date:</td>
          <td>
            <label>
              <input type="text" name="registration_date"><%out.println(user.getRegistration_date());%>
            </label>
          </td>
        </tr>
        <tr>
          <td>Native country:</td>
          <td><label>
            <textarea name="native_country" rows="1" cols="40"><%out.println(user.getNative_country());%></textarea>
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
