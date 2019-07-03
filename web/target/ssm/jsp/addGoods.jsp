<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<title>添加商品</title>
</head>
<body>
<h1>添加商品</h1>
<form action="" name="goodsForm">
    商品名称：<input type="text" name="Gname"><br>
    商品价格：<input type="text" name="Gprice"><br>
    商品类型：<input type="text" name="Gtype"><br>
    是否有货：<input type="text" name="Grest"><br>
    商品描述：<input type="text" name="Gdetail"><br>
    图片地址：<input type="text" name="Gimg"><br>

    <input type="button" value="添加"
           onclick="addGoods()">
</form>

<script type="text/javascript">
    function addGoods() {
        var form = document.forms[0];
        form.action = "<%=path %>/goods/add";
        form.method = "post";
        form.submit();
    }
</script>
</body>
</html>