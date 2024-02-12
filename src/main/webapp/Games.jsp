<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.testjakartatomcat.Model.Games" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 26.10.2022
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ArrayList<Games> arrayList = (ArrayList<Games>) request.getAttribute("games");
%>
<html>
<head>
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8"/>
    <title>Title</title>
</head>
<body>
<div class="wrapp">
    <table style="margin-bottom: 15px;">
        <tr>
            <th>Id</th>
            <th>Title</th>
            <th>Price</th>
            <th>Developer</th>
            <th>Category_id</th>
            <th>Publisher</th>
            <th>About_game</th>
        </tr>
            <%
                for(Games game : arrayList) {
                    out.println("<tr>");
                    out.println("<td class=\"unredact\">"+ game.getId() + "</td>");
                    out.println("<td class=\"redact\">"+ game.getTitle() + "</td>");
                    out.println("<td class=\"redact\">"+ game.getPrice() + "</td>");
                    out.println("<td class=\"redact\">"+ game.getDeveloper() + "</td>");
                    out.println("<td class=\"redact\">"+ game.getCategory_id() + "</td>");
                    out.println("<td class=\"redact\">"+ game.getPublisher() + "</td>");
                    out.println("<td class=\"redact\">"+ game.getAbout_game() + "</td>");
                    out.println("/<tr>");
                }
            %>
    </table>
    <div class="flexx">
    <form action="games" method="post">
        <div class="texxxt">Insert</div>
        <table>
            <tr>
                <td>Title:</td>
                <td><input type="text" name="title"></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><input type="text" name="price"></td>
            </tr>
            <tr>
                <td>Publisher:</td>
                <td><input type="text" name="publisher"></td>
            </tr>
            <tr>
                <td>Developer</td>
                <td><input type="text" name="developer"></td>
            </tr>
            <tr>
                <td>Category Id:</td>
                <td><input type="text" name="category_id"></td>
            </tr>
            <tr>
                <td>About Game:</td>
                <td><input type="text" name="about_game"></td>
            </tr>
            <tr>
                <td><button type="submit">Submit</button></td>
            </tr>
        </table>
    </form>
    <form action="gameDelete" method="post">
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
    <form action="gameRedact" method="get">
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