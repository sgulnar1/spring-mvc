<%@ page import="aze.coders.spring.mvc.repositories.CategoryRepository" %>
<%@ page import="aze.coders.spring.mvc.domains.Category" %>
<%@ page import="aze.coders.spring.mvc.repositories.impl.CategoryRepositoryImpl" %>
<%@ page import="java.util.List" %>
<html>
<body>
<%
    CategoryRepository categoryRepository = new CategoryRepositoryImpl();
    List<Category> categories = categoryRepository.findByName(request.getParameter("name"));
    session.setAttribute("categories", categories);
    response.sendRedirect("index.jsp");
%>
</body>
</html>
