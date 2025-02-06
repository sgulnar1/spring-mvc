<%@ page import="aze.coders.spring.mvc.repositories.CategoryRepository" %>
<%@ page import="aze.coders.spring.mvc.repositories.impl.CategoryRepositoryImpl" %>
<%@ page import="aze.coders.spring.mvc.domains.Category" %><%--
  Created by IntelliJ IDEA.
  User: GHSalehova
  Date: 2/6/2025
  Time: 7:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<%
    CategoryRepository categoryRepository = new CategoryRepositoryImpl();
    Category category = categoryRepository.findById(Integer.valueOf(request.getParameter("id")));
    category.setName(request.getParameter("name"));
    category.setDescription(request.getParameter("description"));
    categoryRepository.update(category);
    response.sendRedirect("index.jsp");
%>
</body>
</html>
