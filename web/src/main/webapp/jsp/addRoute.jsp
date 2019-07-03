<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<title>添加旅游地点</title>
</head>
<body>
<h1>添加旅游地点</h1>
<form action="" name="routeForm">
    旅游地点：<input type="text" name="Radd"><br>
    价格：<input type="text" name="Rmoney"><br>
    旅游地点详情：<input type="text" name="Rdetail"><br>
    旅游地点图片：<input type="text" name="Rimg"><br>
    旅游类型：<input type="text" name="Rtype"><br>

    <input type="button" value="添加"
           onclick="addRoute()">
</form>

<script type="text/javascript">
    function addRoute() {
        var form = document.forms[0];
        form.action = "<%=path %>/route/add";
        form.method = "post";
        form.submit();
    }
</script>
</body>
</html>