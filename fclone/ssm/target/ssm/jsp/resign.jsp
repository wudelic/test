<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

    <title>用户注册</title>
</head>
<body>

<div class="container">
    <form class="form-signin" action="<%=path %>/regist" method="post"  >
        <h2 class="form-signin-heading">注册</h2>
        <label for="inputUsername" class="sr-only">Username</label>
        用户名：<input type="username" id="inputusername" class="form-control" placeholder="用户名" required autofocus name="username"><br>
        <label for="inputPassword" class="sr-only">Password</label>
        密码：<input type="password" id="inputPassword" class="form-control" placeholder="密码" required name="password">
        性别：
        <label><input type="radio" name="sex" value="男">男</label>
        <label><input type="radio" name="sex" value="女">女</label><br><br>
        <label for="inputTel" class="sr-only">Password</label>
        联系方式：<input type="tel" id="inputTel" class="form-control" placeholder="电话" required name="tel"><br>
        <label for="inputEmail" class="sr-only">Password</label>
        邮箱：<input type="email" id="inputEmail" class="form-control" placeholder="邮箱" required name="email"><br>
        <button class="btn btn-lg btn-primary btn-block" type="submit">注册</button>
    </form>
</div> <!-- /container -->

<script>
    var msg = '${msg}';var i ;
    if(msg != null && msg != undefined && msg != '')
        alert(msg);
    else if(i == 1)
        alert("用户名已存在");
</script>
</body>
</html>
