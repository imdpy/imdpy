<%--
  Created by IntelliJ IDEA.
  User: chen
  Date: 2021/11/12
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">
                <h1>
                    <small>添加书籍列表</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/addBook"method="post">
        <div class="form-group">
            <label for = "bkname">书籍名称</label>
            <input type="text" class="form-control" name="bookName" id = "bkname" placeholder="请输入书籍名">
        </div>
        <div class="form-group">
            <label for = "bknumber">书籍数量</label>
            <input type="text" class="form-control" name="bookCounts" id = "bknumber" placeholder="请输入书籍数量">
        </div>
        <div class="form-group">
            <label for = "bkscan">书籍详情</label>
            <input type="text" class="form-control" name = "detail" id = "bkscan" placeholder="请输入书籍详情">
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="添加">
        </div>
    </form>
</div>
</body>
</html>
