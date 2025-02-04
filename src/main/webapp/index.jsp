<%@ page import="java.util.List" %>
<%@ page import="aze.coders.spring.mvc.domains.Category" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="aze.coders.spring.mvc.repositories.CategoryRepository" %>
<%@ page import="aze.coders.spring.mvc.repositories.impl.CategoryRepositoryImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>aze.coders.spring.mvc.domains.Category</title>
</head>
<%
    CategoryRepository categoryRepository = new CategoryRepositoryImpl();
    List<Category> categories = categoryRepository.findAll();
%>
<body>
<label>Name: </label>
<input type="text" name="nameTxt" placeholder="Axtaris edeceyiniz adi daxil edin" required>
<input type="submit" name="searchBtn" value="Search">
<form action="createForm.jsp" method="get">
    <input type="submit" name="addBtn" value="Add">
</form>
<br/>
<table style="border: red">
    <thead style="border: red">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Description</th>
    </tr>
    </thead>
    <tbody style="border: red">
    <%for (Category category : categories) {%>
    <tr>
        <td><%=category.getId()%>
        </td>
        <td><%=category.getName()%>
        </td>
        <td><%=category.getDescription()%>
        </td>
        <td><input type="submit" value="Edit" name="editSbm"></td>
        <td><input type="submit" value="Delete" name="editSbm"></td>
    </tr>
    <%}%>
    </tbody>
</table>
</body>
</html>
