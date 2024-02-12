
<%@ page import="com.example.testjakartatomcat.Model.Games" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 23.10.2022
  Time: 16:35
  To change this template use File | Settings | File Templates.
  <%@include file="home.jsp" %>
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Games game = (Games) request.getAttribute("game");
%>

<html>
<head>
    <link rel="stylesheet" href="style.css">
    <title>Title</title>
</head>
<body>
<div>
    <div class="wrapp">
    <form style="width: 450px;" action="gameRedact" method="post">
        <table>
            <tr>
                <td>Id:</td>
                <td>
                    <%out.println(game.getId());%></td>
            </tr>
            <tr>
                <td>Title:</td>
                <td><label>
                    <textarea name="title" rows="1" cols="10"><%out.println(game.getTitle());%></textarea>
                </label></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><label>
                    <input type="text" name="price"><%out.println(game.getPrice());%>
                </label></td>
            </tr>
            <tr>
                <td>Category id:</td>
                <td><label>
                    <input type="text" name="category_id"><%out.println(game.getCategory_id());%>
                </label></td>
            </tr>
            <tr>
                <td>Publisher:</td>
                <td>
                    <label>
                        <textarea name="publisher" rows="1" cols="40"><%out.println(game.getPublisher());%></textarea>
                    </label>
                </td>
            </tr>
            <tr>
                <td>Developer:</td>
                <td><label>
                    <textarea name="developer" rows="1" cols="40"><%out.println(game.getDeveloper());%></textarea>
                </label></td>
            </tr>
            <tr>
                <td>About Game:</td>
                <td><label>
                    <textarea name="about_game" rows="1" cols="40"><%out.println(game.getAbout_game());%></textarea>
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
