<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>编辑用户</title>

    <script type="text/javascript">
        function updateUser() {
            var form = document.forms[0];
            form.action = "<%=path %>/consumer/update";
            form.method = "post";
            form.submit();
        }
    </script>

</head>
<body>
<h1>修改用户资料</h1>
<form action="" name="userForm">
    <input type="hidden" name="id" value="${consumer.id }" />
    用户名：<input type="text" name="username" value="${consumer.username }" /><br>
    密码：<input type="text" name="password" value="${consumer.password }" /><br>
    电话：<input type="text" name="tel" value="${consumer.tel }" /><br>
    性别：<input type="text" name="sex" value="${consumer.sex }" /><br>
    邮箱：<input type="text" name="email" value="${consumer.email }" /><br>
    <input type="button" value="编辑" onclick="updateUser()" />
</form>
</body>

</html>
