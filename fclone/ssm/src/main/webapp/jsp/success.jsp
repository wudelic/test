<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <title>登陆</title>
    <link href="../static/bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="../static/css/signin.css" rel="stylesheet">
    <title>注册成功</title>
</head>
<body>

<div class="jumbotron container" >
    <h1>${msg}</h1>
    <p><a class="btn btn-primary btn-lg" href="<%=path %>/jsp/login.jsp" role="button">前往登陆</a></p>
    <p><a class="btn btn-primary btn-lg" href="<%=path %>/jsp/index.jsp" role="button">返回主页</a></p>
</div>
</body>
</html>
