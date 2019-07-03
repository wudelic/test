<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<title>添加旅游订单</title>
</head>
<body>
<h1>添加旅游订单</h1>
<form action="" name="rorderForm">
    线路价格：<input type="text" name="totalprice"><br>
    购买用户id：<input type="text" name="uid"><br>
    是否付款：<input type="text" name="status"><br>
    出发时间：<input type="text" name="startime"><br>
    返回时间：<input type="text" name="endtime"><br>
    出发城市：<input type="text" name="starcity"><br>
    目的城市：<input type="text" name="endcity"><br>
    出行工具：<input type="text" name="tool"><br>

    <input type="button" value="添加"
           onclick="addRorder()">
</form>

<script type="text/javascript">
    function addRorder() {
        var form = document.forms[0];
        form.action = "<%=path %>/rorder/add";
        form.method = "post";
        form.submit();
    }
</script>
</body>
</html>