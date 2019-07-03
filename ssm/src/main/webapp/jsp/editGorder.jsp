<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>编辑商品订单</title>

    <script type="text/javascript">
        function updateGorder() {
            var form = document.forms[0];
            form.action = "<%=path %>/gorder/update";
            form.method = "post";
            form.submit();
        }
    </script>

</head>
<body>
<h1>修改商品订单</h1>
<form action="" name="gorderForm">
    <input type="hidden" name="id" value="${gorder.id}" />
    商品总价：<input type="text" name="totalprice" value="${gorder.totalprice}"><br>
    购买用户id：<input type="text" name="uid" value="${gorder.uid}"><br>
    是否付款：<input type="text" name="status" value="${gorder.status}"><br>
    邮费：<input type="text" name="fee" value="${gorder.fee}"><br>
    商品数量：<input type="text" name="amount" value="${gorder.amount}"><br>

    <input type="button" value="编辑" onclick="updateGorder()" />
</form>
</body>

</html>
