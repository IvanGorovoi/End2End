<%@ page import="com.example.testjakartatomcat.DBSQL.DBConnect" %>
<%@ page import="com.example.testjakartatomcat.DAO.LibraryDAO" %>
<%@ page import="com.example.testjakartatomcat.Model.Library" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 23.10.2022
  Time: 16:35
  To change this template use File | Settings | File Templates.
  <%@include file="home.jsp" %>
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Library library = (Library) request.getAttribute("lib");
%>

<html>
<head>
    <link rel="stylesheet" href="style.css">
    <title>Title</title>
</head>
<body>
<div>
    <div class="wrapp">
    <form style="width: 450px;" action="libraryRedact" method="post">
        <table>
            <tr>
                <td>User id:</td>
                <td>
                    <%out.println(library.getUser_id());%></td>
            </tr>
            <tr>
                <td>Game id:</td>
                <td>
                    <%out.println(library.getGame_id());%>
                </td>
            </tr>
            <tr>
                <td>Activity:</td>
                <td><label>
                    <textarea name="activity" rows="1" cols="10"><%out.println(library.getActivity());%></textarea>
                </label></td>
            </tr>
            <tr>
                <td>Purchare date:</td>
                <td><label>
                    <textarea name="purchare_date"><%out.println(library.getPurchare_date());%></textarea>
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
