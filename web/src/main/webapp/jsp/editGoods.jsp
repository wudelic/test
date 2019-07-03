<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>编辑商品</title>

    <script type="text/javascript">
        function updateGoods() {
            var form = document.forms[0];
            form.action = "<%=path %>/goods/update";
            form.method = "post";
            form.submit();
        }
    </script>

</head>
<body>
<h1>修改商品资料</h1>
<form action="" name="goodsForm">
    <input type="hidden" name="Gid" value="${goods.gid}" />
    商品名称：<input type="text" name="Gname" value="${goods.gname}"><br>
    商品价格：<input type="text" name="Gprice" value="${goods.gprice}"><br>
    商品类型：<input type="text" name="Gtype" value="${goods.gtype}"><br>
    是否有货：<input type="text" name="Grest" value="${goods.grest}"><br>
    商品描述：<input type="text" name="Gdetail" value="${goods.gdetail}"><br>
    图片地址：<input type="text" name="Gimg" value="${goods.gimg}"><br>
    <input type="button" value="编辑" onclick="updateGoods()" />
</form>
</body>

</html>
