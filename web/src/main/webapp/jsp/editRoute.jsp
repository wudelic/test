<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>编辑线路</title>

    <script type="text/javascript">
        function updateRoute() {
            var form = document.forms[0];
            form.action = "<%=path %>/route/update";
            form.method = "post";
            form.submit();
        }
    </script>

</head>
<body>
<h1>修改线路资料</h1>
<form action="" name="routeForm">
    <input type="hidden" name="Rid" value="${route.rid}" />
    旅游地点：<input type="text" name="Radd" value="${route.radd}"><br>
    价格：<input type="text" name="Rmoney" value="${route.rmoney}"><br>
    旅游地点详情：<input type="text" name="Rdetail" value="${route.rdetail}"><br>
    旅游地点图片：<input type="text" name="Rimg" value="${route.rimg}"><br>
    旅游类型：<input type="text" name="Rtype" value="${route.rtype}"
><br>

    <input type="button" value="编辑" onclick="updateRoute()" />
</form>
</body>

</html>
