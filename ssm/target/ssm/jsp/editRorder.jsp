<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>编辑线路订单</title>

    <script type="text/javascript">
        function updateRorder() {
            var form = document.forms[0];
            form.action = "<%=path %>/rorder/update";
            form.method = "post";
            form.submit();
        }
    </script>

</head>
<body>
<h1>修改线路订单</h1>
<form action="" name="rorderForm">
    <input type="hidden" name="id" value="${rorder.id}" />
    线路价格：<input type="text" name="totalprice" value="${rorder.totalprice}"><br>
    购买用户id：<input type="text" name="uid" value="${rorder.uid}"><br>
    是否付款：<input type="text" name="status" value="${rorder.status}"><br>
    出发时间：<input type="text" name="startime" value="${rorder.startime}"><br>
    返回时间：<input type="text" name="endtime" value="${rorder.endtime}"><br>
    出发城市：<input type="text" name="starcity" value="${rorder.starcity}"><br>
    目的城市：<input type="text" name="endcity" value="${rorder.endcity}"><br>
    出行工具：<input type="text" name="tool" value="${rorder.tool}"><br>

    <input type="button" value="编辑" onclick="updateRorder()" />
</form>
</body>

</html>
