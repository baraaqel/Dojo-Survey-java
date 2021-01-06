<%--
  Created by IntelliJ IDEA.
  User: REZOO FAMILY
  Date: 1/6/2021
  Time: 12:24 PM
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
    input, select, textarea{
        width: 100%;
    }

</style>
<body>
<div id='main'>
    <fieldset>
        <legend>Dojo Survey</legend>
       <form method="Post" action="/survey">
           Your Nmae:<input name="name" type="text"><br>
           Dojo Location: <select name="location">
           <option value="bara">bara</option>
           <option value="yaman">yaman</option>
           <option value="ishaq">ishaq</option>
       </select>
           <br>
           Favorite Language:<select name="language">
           <option value="java">java</option>
           <option value="css">css</option>
           <option value="python">python</option>
       </select>
           <br>
           comment (optional): <textarea name="comment"></textarea><br>
           <input type="submit" value="submit">
       </form>
    </fieldset>
</div>
</body>
</html>
