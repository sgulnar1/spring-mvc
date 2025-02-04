<%@ page import="aze.coders.spring.mvc.repositories.CategoryRepository" %>
<%@ page import="aze.coders.spring.mvc.domains.Category" %>
<%@ page import="aze.coders.spring.mvc.repositories.impl.CategoryRepositoryImpl" %>
<html>
<body>
<form action="index.jsp" method="post">
    <%
        CategoryRepository categoryRepository = new CategoryRepositoryImpl();
        categoryRepository.insert(
                new Category(Integer.valueOf(request.getParameter("idTxt")),
                        request.getParameter("nameTxt"),
                        request.getParameter("descTxt")));
    response.sendRedirect("index.jsp");
    %>
</form>
</body>
</html>
