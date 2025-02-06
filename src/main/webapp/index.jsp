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
    Object obj = session.getAttribute("categories");
    List<Category> categories;
    if (obj != null && obj instanceof List)
        categories = (List<Category>) obj;
    else {
        CategoryRepository categoryRepository = new CategoryRepositoryImpl();
        categories = categoryRepository.findAll();
    }
%>
<body>
<label>Name: </label>
<form action="search.jsp" method="get">
    <input type="text" name="name" placeholder="Axtaris edeceyiniz adi daxil edin" required>
    <input type="submit" name="searchBtn" value="Search">
</form>
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
        <td>
            <form action="updateForm.jsp" method="get">
                <input type="submit" name="update" value="Edit">
                <input type="hidden" name="id" value=<%=category.getId()%>>
            </form>
        </td>
        <td>
            <form action="delete.jsp" method="get">
                <input type="submit" name="delete" value="Delete">
                <input type="hidden" name="id" value=<%=category.getId()%>>
            </form>
        </td>
    </tr>
    <%}%>
    </tbody>
</table>
</body>
</html>
