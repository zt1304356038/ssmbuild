<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 张涛
  Date: 2022/1/9
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%--bootstrap美化界面--%>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示页面</title>
</head>
<body>
<div class="row clearfix">
    <div>
        <div class="page-header">
            <small style="margin-left:30%;font-size: 30px">书籍列表----------显示书籍</small>
        </div>
    </div>
</div>
<div>
    <div class="row">
        <div class="col-md-4 cloumn" style="float: left">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">显示全部数据</a>
        </div>
        <div class="col-md-8 colum">

            <form class="form-inline" style="float: right;display: inline"
                  action="${pageContext.request.contextPath}/book/queryBook1" method="post">
                <span style="color: red;font-weight: bold;">${error}</span>
                <input type="text" name="bookName" class="form-control" placeholder="请输入要查询的书籍">
                <input type="submit" value="查询" class="btn btn-primary">
            </form>
        </div>

    </div>
</div>
<div class="row clearfix">
    <div class="col-md-12 colum">
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>书籍编号</th>
                <th>书籍名称</th>
                <th>书籍数量</th>
                <th>书籍详情</th>
                <th>操作</th>
            </tr>
            </thead>
            <%--            书籍从数据库查询出来，从list中遍历出来：foreach--%>
            <tbody>
            <c:forEach var="book" items="${list}">
                <tr>
                    <td>${book.bookID}</td>
                    <td>${book.bookName}</td>
                    <td>${book.bookCounts}</td>
                    <td>${book.detail}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/book/deleteBookById?bookID=${book.bookID}">删除书籍</a>
                        &nbsp; ||&nbsp;
                        <a href="${pageContext.request.contextPath}/book/toUpdatePaper?bookID=${book.bookID}">更新书籍</a>
                        &nbsp; ||&nbsp;
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>


</body>
</html>
