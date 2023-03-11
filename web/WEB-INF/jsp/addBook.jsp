<%--
  Created by IntelliJ IDEA.
  User: 张涛
  Date: 2022/1/9
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加书籍</title>
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 colum">
            <div class="page-header">
                <small>新增书籍</small>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/addBook" method="get">
        <div class="form-group">
            <label for="bkname">书籍编号</label>
            <input type="text" name="bookID" class="form-control" id="bkname" required>
        </div>
        <div class="form-group">
            <label for="bkname1">书籍名称</label>
            <input type="text" name="bookName" class="form-control" id="bkname1" required>
        </div>
        <div class="form-group">
            <label for="bkname2">书籍数量</label>
            <input type="text" name="bookCounts" class="form-control" id="bkname2" required>
        </div>
        <div class="form-group">
            <label for="bkname3">书籍描述</label>
            <input type="text" name="detail" class="form-control" id="bkname3" required>
        </div>
        <div class="from-group">
            <input type="submit" class="from-control" value="添加"/>
        </div>
    </form>
</div>


</body>
</html>
