<%@ page import="com.example.testjakartatomcat.Model.Users" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.testjakartatomcat.Model.Category" %>
<%@ page import="com.sun.source.tree.UsesTree" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 30.10.2022
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ArrayList<Users> arrayList = (ArrayList<Users>) request.getAttribute("users");
%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="wrapp">
    <table style="margin-bottom: 15px;">
        <tr>
            <th>Id</th>
            <th>Nickname</th>
            <th>Balance</th>
            <th>Registration date</th>
            <th>Native country</th>
            <th>Extra guard</th>
        </tr>
        <% for(Users user : arrayList) {
            out.println("<tr>");
            out.println("<td class=\"unredact\">"+user.getId()+"</td>");
            out.println("<td class=\"redact\">"+user.getNickname()+"</td>");
            out.println("<td class=\"redact\">"+user.getBalance()+"</td>");
            out.println("<td class=\"redact\">"+user.getRegistration_date()+"</td>");
            out.println("<td class=\"redact\">"+user.getNative_country()+"</td>");
            out.println("<td class=\"redact\">"+user.getExtra_guard()+"</td>");
            out.println("/<tr>");
        } %>
    </table>
    <div class="flexx">
        <form action="users" method="post">
            <div class="texxxt">Insert</div>
            <table>
                <tr>
                    <td>Nickname:</td>
                    <td><input type="text" name="nickname"></td>
                </tr>
                <tr>
                    <td>Native country:</td>
                    <td><input type="text" name="native_country"></td>
                </tr>
                <tr>
                    <td>Registration date</td>
                    <td><input type="text" name="registration_date"></td>
                </tr>
                <tr>
                    <td>Balance:</td>
                    <td><input type="text" name="balance"></td>
                </tr>
                <tr>
                    <td>Extra guard:</td>
                    <td><input type="text" name="extra_guard"></td>
                </tr>
                <tr>
                    <td><button type="submit">Submit</button></td>
                </tr>
            </table>
        </form>
        <form action="usersDelete" method="post">
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
        <form action="usersRedact" method="get">
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
