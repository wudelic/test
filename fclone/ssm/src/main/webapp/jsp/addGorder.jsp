<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<title>添加商品订单</title>
</head>
<body>
<h1>添加商品订单</h1>
<form action="" name="gorderForm">
    商品总价：<input type="text" name="totalprice"><br>
    购买用户id：<input type="text" name="uid"><br>
    是否付款：<input type="text" name="status"><br>
    邮费：<input type="text" name="fee"><br>
    商品数量：<input type="text" name="amount"><br>


    <input type="button" value="添加"
           onclick="addGorder()">
</form>

<script type="text/javascript">
    function addGorder() {
        var form = document.forms[0];
        form.action = "<%=path %>/gorder/add";
        form.method = "post";
        form.submit();
    }
</script>
</body>
</html>