<%--
  Created by IntelliJ IDEA.
  User: REZOO FAMILY
  Date: 1/6/2021
  Time: 12:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    #main{
        display: flex;
        flex-direction: column;
        align-items: center;
    }
</style>
<body>
<div id='main'>
    <fieldset>
        <legend>Submitted Info</legend>
        <form method="Post" action="/">
        <table>
            <tr>
                <td>Name:</td>
                <td><c:out value="${name}"/></td>
            </tr>

            <tr>
                <td>Location:</td>
                <td><c:out value="${location}"/></td>
            </tr>

            <tr>
                <td>Favorite Language:</td>
                <td><c:out value="${language}"/></td>
            </tr>

            <tr>
                <td>Comment:</td>
                <td><c:out value="${comment}"/></td>
            </tr>
        </table>
        <input type="submit" value="goback">
        </form>
    </fieldset>

</div>

</body>
</html>
