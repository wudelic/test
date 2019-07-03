<%@ page import="com.zh.pojo.Consumer" %>
<%
    String path = request.getContextPath();
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Consumer consumer = (Consumer)session.getAttribute("consumer");
    if(consumer ==null)
        response.sendRedirect("notloginbooking.jsp");
    else
        response.sendRedirect("booking.jsp");
%>
</body>
</html>
