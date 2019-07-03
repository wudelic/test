<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
%>
<div class="table-responsive">
    <table class="table table-striped ">
        <thead>
        <tr>
            <th>总价</th>
            <th>是否付款</th>
            <th>出发时间</th>
            <th>返回时间</th>
            <th>出发城市</th>
            <th>目的城市</th>
            <th>交通工具</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${rorder}" var="list" >
        <tr>
            <td>${list.totalprice}</td>
            <td>${list.status}</td>
            <td>${list.startime}</td>
            <td>${list.endtime}</td>
            <td>${list.starcity}</td>
            <td>${list.endcity}</td>
            <td>${list.tool}</td>
            <td>
                <div class="btn-group">
                    <a href="<%=path %>/rorder/delete2/${list.id}" class="btn btn-danger">删除</a>
                </div>
            </td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
    <!---->

</div>