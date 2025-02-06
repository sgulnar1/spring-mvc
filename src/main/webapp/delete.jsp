<%@ page import="aze.coders.spring.mvc.repositories.CategoryRepository" %>
<%@ page import="aze.coders.spring.mvc.domains.Category" %>
<%@ page import="aze.coders.spring.mvc.repositories.impl.CategoryRepositoryImpl" %>
<html>
<body>
<%
    CategoryRepository categoryRepository = new CategoryRepositoryImpl();
    Category category = categoryRepository.findById(Integer.valueOf(request.getParameter("id")));
    categoryRepository.delete(category);
    response.sendRedirect("index.jsp");
%>
</body>
</html>
