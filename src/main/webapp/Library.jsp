<%@ page import="com.example.testjakartatomcat.Model.Library" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 22.10.2022
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ArrayList<Library> arrayList = (ArrayList<Library>) request.getAttribute("library");
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
        <th>User_id</th>
        <th>Game_id</th>
        <th>Activity</th>
        <th>Purchare date</th>
    </tr>
    <tr>
        <% for(Library library : arrayList) {
            out.println("<tr>");
            out.println("<td class=\"unredact\">"+library.getUser_id()+"</td>");
            out.println("<td class=\"redact\">"+library.getGame_id()+"</td>");
            out.println("<td class=\"redact\">"+library.getActivity()+"</td>");
            out.println("<td class=\"redact\">"+library.getPurchare_date()+"</td>");
            out.println("/<tr>");
        } %>
    </tr>
</table>
    <div class="flexx">
    <form action="library" method="post">
        <div class="texxxt">Insert</div>
            <table>
                <tr>
                    <td>User id:</td>
                    <td><input type="text" name="user_id"></td>
                </tr>
                <tr>
                    <td>Game id:</td>
                    <td><input type="text" name="game_id"></td>
                </tr>
                <tr>
                    <td>Activity:</td>
                    <td><input type="text" name="activity"></td>
                </tr>
                <tr>
                    <td>Purchare date:</td>
                    <td><input type="text" name="purchare_date"></td>
                </tr>
                <tr>
                    <td><button type="submit">Submit</button></td>
                </tr>
            </table>
    </form>
        <form action="libraryDelete" method="post">
            <div class="texxxt">Delete</div>
        <table>
            <tr>
                <td>User id:</td>
                <td><input type="text" name="user_id"></td>
            </tr>
            <tr>
                <td>Game id:</td>
                <td><input type="text" name="game_id"></td>
            </tr>
            <tr>
                <td><button type="submit">Submit</button></td>
            </tr>
        </table>
    </form>
    <form action="libraryRedact" method="get">
        <div class="texxxt">Update</div>
        <table>
            <tr>
                <td>User id:</td>
                <td><input type="text" name="user_id"></td>
            </tr>
            <tr>
                <td>Game id:</td>
                <td><input type="text" name="game_id"></td>
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
