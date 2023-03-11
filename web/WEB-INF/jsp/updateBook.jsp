<%--
  Created by IntelliJ IDEA.
  User: 张涛
  Date: 2022/1/10
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新书籍</title>
</head>
<body>


<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 colum">
            <div class="page-header">
                <small>更新书籍</small>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/updateBook" method="get">
        <div class="form-group">
            <input type="hidden" name="bookID" class="form-control" value="${queryBook.bookID}" required>
        </div>
        <div class="form-group">
            <label for="bkname1">书籍名称</label>
            <input type="text" name="bookName" class="form-control" value="${queryBook.bookName}" id="bkname1" required>
        </div>
        <div class="form-group">
            <label for="bkname2">书籍数量</label>
            <input type="text" name="bookCounts" class="form-control" value="${queryBook.bookCounts}" id="bkname2"
                   required>
        </div>
        <div class="form-group">
            <label for="bkname3">书籍描述</label>
            <input type="text" name="detail" class="form-control" id="bkname3" value="${queryBook.detail}" required>
        </div>
        <div class="from-group">
            <input type="submit" class="from-control" value="更新"/>
        </div>
    </form>
</div>
</body>
</html>
