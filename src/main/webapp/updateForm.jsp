<%@ page import="aze.coders.spring.mvc.repositories.CategoryRepository" %>
<%@ page import="aze.coders.spring.mvc.domains.Category" %>
<%@ page import="aze.coders.spring.mvc.repositories.impl.CategoryRepositoryImpl" %>
<html>
<body>
<%
    CategoryRepository categoryRepository = new CategoryRepositoryImpl();
    System.out.println("id: " + request.getParameter("id"));
    Category category = categoryRepository.findById(Integer.valueOf(request.getParameter("id")));
%>
<form action="update.jsp" method="post">
    <label>Name: </label>
    <input type="text" name="name" value="<%=category.getName()%>">
    <br/>
    <label>Description: </label>
    <input type="text" name="description" value="<%=category.getDescription()%>">
    <input type="hidden" name="id" value="<%=category.getId()%>">
    <input type="submit" name="edit" value="Edit">
</form>
</body>
</html>
