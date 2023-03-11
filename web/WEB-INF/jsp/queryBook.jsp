<%--
  Created by IntelliJ IDEA.
  User: 张涛
  Date: 2022/1/10
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查找书籍</title>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 colum">
            <div class="page-header">
                <small>查询书籍</small>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/queryBook" method="get">
        <div class="form-group">
            <label for="bkname">书籍编号</label>
            <input type="text" name="bookID" class="form-control" id="bkname" required>
        </div>
        <div class="from-group">
            <input type="submit" class="from-control" value="查询"/>
        </div>
    </form>
</div>
</body>
</html>
