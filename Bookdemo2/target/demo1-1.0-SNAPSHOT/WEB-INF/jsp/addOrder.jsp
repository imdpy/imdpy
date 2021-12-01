<%--
  Created by IntelliJ IDEA.
  User: 17396
  Date: 2021/11/21
  Time: 11:28
  author：IMDPY
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>购买书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">
                <h1>
                    <small>购买书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="col-md-4 column">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/index?id=<%=session.getAttribute("id")%>">返回主页</a>
    </div>
    <div class="row clearfix">
        <div class="col-md-12">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名称</th>
                    <th>书籍数量</th>
                    <th>书籍详情</th>
                    <th>书籍价格</th>
                    <th>书籍图片</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>${GBooks.bookID}</td>
                    <td>${GBooks.bookName}</td>
                    <td>1</td>
<%--                    <td>${GBooks.bookCounts}</td>--%>
                    <td>${GBooks.detail}</td>
                    <td>${GBooks.price}</td>
                    <td><img src=${GBooks.picaddr}></td>
                </tr>
                </tbody>
            </table>

        </div>

    </div>
    <form action="${pageContext.request.contextPath}/order/addorder" method="post" class="sign-up-form">
        <h2 class="form-title">即刻下单！</h2>
        <input id="userId" type="hidden"  name="userId" value="<%=session.getAttribute("toid")%>"/>
        <input  type="hidden"  name="bookId" id="bookId"  value=${GBooks.bookID} />
        <input  type="text" name="uname" id="uname" placeholder="姓名" />
        <input  type="text" name="uphone" id="uphone" placeholder="电话" />
        <input  type="text" name="addr" id="addr" placeholder="详细地址" />
        <input  type="text" name="remarks" id="remarks" placeholder="备注" />
        <input type="submit" class="submit-btn" value="立刻购买"/>
    </form>
</div>
</body>
</html>
