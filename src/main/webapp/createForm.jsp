<%@ page import="java.util.List" %>
<%@ page import="aze.coders.spring.mvc.domains.Category" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Category</title>
</head>
<body>
<form action="create.jsp" method="post">
    <label>Id: </label>
    <input type="text" name="idTxt" required>
    <br/>
    <label>Name: </label>
    <input type="text" name="nameTxt" required>
    <br/>
    <label>Description: </label>
    <input type="text" name="descTxt">
    <input type="submit" value="Add category" name="addBtn">
</form>
</body>
</html>
