<%--
  Created by IntelliJ IDEA.
  User: wu canlin
  Date: 2019/5/27/0027
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!--管理员核对-->
    <title>Title</title>
</head>
<body>

        <%
   request.setCharacterEncoding("utf-8");
   String Adminname = request.getParameter("Adminname");
   String Adminpwd = request.getParameter("Adminpwd");
   if("admin".equals(Adminname) &&"admin".equals(Adminpwd))
   {
   		request.getRequestDispatcher("/m3").forward(request, response);
   }
   else
   {
   	response.sendRedirect("admin.jsp");
   }
    %>

</body>
</html>
