<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html lang="zh-CN">
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
</head>
<body>
<div class="container">
    <form class="form-signin" action="<%=path %>/account/login" method="post"  >
        <h2 class="form-signin-heading">请登录</h2>

        <label for="inputUsername" class="sr-only">Username</label>
        <input type="username" id="inputusername" class="form-control" placeholder="用户名" required autofocus name="username">
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="密码" required name="password">
        <div class="checkbox">
            <label>
                <input type="checkbox" value="remember-me"> 记住密码
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登陆</button>
    </form>
</div> <!-- /container -->
<script src="<%=path %>/static/jquery/jquery-3.4.1.min.js"></script>
<script>
    var errorMsg = '${errorMsg}';
    if(errorMsg != null && errorMsg != undefined && errorMsg != '')
        alert(errorMsg);

</script>

<div class="container">
    <form class="form-signin"   action="<%=path %>/jsp/modeifyPassword.jsp" method="post" >
        <button class="btn btn-lg btn-primary btn-block"  >修改密码</button>
    </form>
</div>

<div class="container">
    <form class="form-signin"   action="<%=path %>/jsp/index.jsp" method="post" >
        <button class="btn btn-lg btn-primary btn-block"  >返回主页</button>
    </form>
</div> <!-- /container -->

</div>


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
