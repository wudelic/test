<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- 引入样式文件和动态控制 -->
    <link type="text/css" href="<%=path %>/static/bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="<%=path %>/static/jquery/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="<%=path %>/static/bootstrap/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <title>后台管理界面</title>
</head>
<body>
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-cog"></span>
            </a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a class="icon-bar" href="/m3">用户管理</a>
                </li>
                <li><a href="/queryAllGoods">商品管理</a>
                </li>
                <li><a href="/queryAllRoute">线路管理</a>
                </li>
                <li><a href="/queryAllRorder">线路订单管理</a>
                </li>
                <li><a href="/queryAllGorder">商品订单管理</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a>欢迎您,admin</a>
                </li>
                <li><a href="<%=path %>/jsp/index.jsp">安全退出</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


<div class="container-fluid">
    <div class="row">
        <div class="col-sm-2">
            <a href="#" class="list-group-item active"><span class="glyphicon glyphicon-home"></span>商品订单管理
            </a>

        </div>
        <!--左边菜单栏-->
        <div class="col-sm-10">
            <div class="panel panel-default">
                <div class="panel-heading">
                    搜索
                </div>
                <div class="panel-body">
                    <form action="<%=path %>/queryBygId" role="form" class="form-inline">
                        <div class="form-group">
                            <label for="goid">名称</label>
                            <input type="text" class="form-control" id="goid" name="goid" placeholder="请输入名称" value="${goid}">
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-default">开始搜索</button>
                            <a href="<%=path %>/toAddGorder" class="btn btn-danger">增加</a>
                        </div>
                    </form>
                </div>
            </div>
            <!--
                列表展示
            -->
            <div class="table-responsive">
                <table class="table table-striped ">
                    <thead>
                    <tr>
                        <th>编号</th>
                        <th>总价</th>
                        <th>创建时间</th>
                        <th>用户id</th>
                        <th>是否付款</th>
                        <th>邮费</th>
                        <th>数量</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${pageInfo.list}" var="list">
                        <tr>
                            <td>${list.id}</td>
                            <td>${list.totalprice}</td>
                            <td>${list.createDate}</td>
                            <td>${list.uid}</td>
                            <td>${list.status}</td>
                            <td>${list.fee}</td>
                            <td>${list.amount}</td>
                            <td>
                                <div class="btn-group">
                                    <a href="<%=path %>/getGorder?id=${list.id}" class="btn btn-default">修改</a>
                                    <a href="<%=path %>/gorder/delete/${list.id}" class="btn btn-danger">删除</a>
                                </div>

                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <p>
                    当前第 ${pageInfo.pageNum} 页.总共 ${pageInfo.pages} 页.一共 ${pageInfo.total} 条记录
                </p>
            </div>
            <div class="col-md-6">
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li><a href="${pageContext.request.contextPath}/queryBygId?goid=${goid}&pn=1">首页</a></li>
                        <!--上一页-->
                        <li>
                            <c:if test="${pageInfo.hasPreviousPage}">
                                <a href="${pageContext.request.contextPath}/queryBygId?goid=${goid}&pn=${pageInfo.pageNum-1}" aria-label="Previous">
                                    <span aria-hidden="true">«</span>
                                </a>
                            </c:if>
                        </li>
                        <!--循环遍历连续显示的页面，若是当前页就高亮显示，并且没有链接-->

                        <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                            <c:if test="${page_num == pageInfo.pageNum}">
                                <li class="active"><a href="#">${page_num}</a></li>
                            </c:if>
                            <c:if test="${page_num != pageInfo.pageNum}">
                                <li><a href="${pageContext.request.contextPath}/queryBygId?goid=${goid}&pn=${page_num}">${page_num}</a></li>
                            </c:if>
                        </c:forEach>
                        <!--下一页-->
                        <li>
                            <c:if test="${pageInfo.hasNextPage}">
                                <a href="${pageContext.request.contextPath}/queryBygId?goid=${goid}&pn=${pageInfo.pageNum+1}"
                                   aria-label="Next">
                                    <span aria-hidden="true">»</span>
                                </a>
                            </c:if>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/queryBygId?goid=${goid}&pn=${pageInfo.pages}">尾页</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>

</body>
</html>
