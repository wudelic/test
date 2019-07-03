<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<title>添加用户</title>
</head>
<body>
<h1>添加用户</h1>
<form action="" name="userForm">
    用户名：<input type="text" name="username"><br>
    密码：<input type="text" name="password"><br>
    电话：<input type="text" name="tel"><br>
    性别：<input type="text" name="sex"><br>
    邮箱：<input type="text" name="email"><br>
    <input type="button" value="添加"
           onclick="addUser()">
</form>

<script type="text/javascript">
    function addUser() {
        var form = document.forms[0];
        form.action = "<%=path %>/consumer/add";
        form.method = "post";
        form.submit();
    }
</script>
</body>
</html>