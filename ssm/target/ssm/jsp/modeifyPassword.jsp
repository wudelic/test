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
    <title>更改密码</title>
    <link href="../static/bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="../static/css/signin.css" rel="stylesheet">

</head>
<body>
<div class="container">
    <form class="form-signin" action="<%=path %>/modeifyPassword" method="post" >
        <h2 class="form-signin-heading">修改密码</h2>
        <label for="inputUsername" class="sr-only">Username</label>
        <input type="username" id="inputusername" class="form-control" placeholder="用户名" required autofocus name="username">
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="原密码" required name="password">
        <label for="inputnewPassword" class="sr-only">Password</label>
        <input type="password" id="inputnewPassword" class="form-control" placeholder="新密码" required name="newpassword">

        <button class="btn btn-lg btn-primary btn-block" type="submit">确定</button>
    </form>
</div> <!-- /container -->
<script src="<%=path %>/static/jquery/jquery-3.4.1.min.js"></script>
<script>
    var msg = '${msg}';var i ;
    if(msg != null && msg != undefined && msg != '')
        alert(msg);
    else if(i == 1)
        alert("修改成功");
</script>

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
