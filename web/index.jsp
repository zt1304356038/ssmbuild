<%--
  Created by IntelliJ IDEA.
  User: 张涛
  Date: 2022/1/9
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>
<style>
    a {
        text-decoration: none;
        color: black;
        font-size: 18px;
    }

    h3 {
        width: 180px;
        height: 100px;
        margin: 100px auto;
        text-align: center;
        line-height: 38px;
        background: aqua;
        border-radius: 5px;
    }
</style>
<body>
<h3>
    <a href="${pageContext.request.contextPath}/book/allBook">进入书籍页面</a>
</h3>
</body>
</html>
