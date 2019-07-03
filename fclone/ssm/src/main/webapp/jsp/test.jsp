<%@ page import="com.zh.pojo.Consumer" %>
<%
    String path = request.getContextPath();
    Consumer consumer = (Consumer)request.getSession().getAttribute("consumer");
    String uid = consumer.getUsername();

%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
提交成功<br>
<a href="<%=path %>/jsp/index.jsp">返回</a>

<form action="/ConsumerRorder" >
    <input type="hidden" name="uid" value="<%=uid%>">

    <input type="submit" value="查看订单">
</form>

<%
    /*
    String a = request.getParameter("starcity");
    String b = request.getParameter("endcity");
    String c = request.getParameter("startime");
    String d = request.getParameter("endtime");
    String e = request.getParameter("tool");

    out.print(a);
    out.print(b);
    out.print(c);
    out.print(d);
    out.print(e);
    */
%>
</body>
</html>
