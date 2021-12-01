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
    <title>海洋书城后台-用户管理</title>
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
                    <small>海洋书城后台 -- 用户管理</small>
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
                    <th>用户ID</th>
                    <th>用户名</th>
                    <th>用户密码</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${queryalluser}">
                    <tr>
                        <form action="${pageContext.request.contextPath}/customer/toUpdatauser" id="form" method="post">
                        <td><input name="id"  value=${user.id}></td>
                        <td><input name="name" value=${user.name}></td>
                        <td><input name="pwd" value=${user.pwd}></td>
                        <td>
                            <a href="${pageContext.request.contextPath}/customer/delete/${user.id}">注销</a>
                            &nbsp; | &nbsp;
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
