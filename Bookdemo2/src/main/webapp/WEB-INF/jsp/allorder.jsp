<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: imdpy
  Date: 2021/11/23
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>海洋书城后台-订单管理</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<script>
    function FF01(){
        alert("修改成功");
    }
</script>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">

                <h1>
                    <small>海洋书城后台 -- 订单管理</small>
                </h1>
                <div class="col-md-4 column">
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allbook">管理书籍</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/activity/allactivity">管理活动</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/customer/alluser">管理用户</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/order/allorderlist">管理订单</a>
                </div>
                <div class="col-md-4 column"></div>
                <div class="col-md-8 column">
                    <form class="form-inline" action="" method="" style="float: right">
                    </form>
                </div>
            </div>

        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>订单ID</th>
                    <th>用户ID</th>
                    <th>书籍ID</th>
                    <th>收货地址</th>
                    <th>备注</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="allorderli" items="${allorderlist}">
                    <tr>
                        <form action="${pageContext.request.contextPath}/order/update" id="form" method="post">
                        <td><input name="orderId"  value=${allorderli.orderId}></td>
                        <td><input name="userId" value=${allorderli.userId}></td>
                        <td><input name="bookId" value=${allorderli.bookId}></td>
                        <td><input name="addr" value=${allorderli.addr}></td>
                        <td><input name="remarks" value=${allorderli.remarks}></td>
                        <td>
                            <a href="${pageContext.request.contextPath}/order/deleteorderByid?orderId=${allorderli.orderId}">删除</a>
                            |
                            <input type="submit" onclick="FF01()" value="修改">
                        </td>
                        </form>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
