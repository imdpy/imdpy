<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: chen
  Date: 2021/11/8
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>海洋书城后台</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<script>
    function test(){
        window.find(searchValue,false,true);
    }
</script>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">
                <h1>
                    <small>海洋书城后台 -- 显示所有数据</small>
                </h1>
                <div class="col-md-4 column">
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toaddBook">添加书籍</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/activity/allactivity">管理活动</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/customer/alluser">管理用户</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/order/allorderlist">管理订单</a>
                </div>
                <div class="col-md-4 column"></div>
                <div class="col-md-8 column">
                    <form class="form-inline" action="${pageContext.request.contextPath}/book/seach" method="" style="float: right">
                        <label id = "lable1"></label>
                        <input type="text" name="bookName" class="form-control"  id="input1" placeholder="查询书籍名称">
                        <input type="submit" value="查询 "  class="btn btn-primary" >
                        <a class="form-control" href="${pageContext.request.contextPath}/book/index?id=<%=session.getAttribute("id")%>">进入前台主页</a>
                    </form>
                </div>
            </div>

        </div>
    </div>

    <div>

             <table style="width: 100%"； class="table table-striped">
                 <thead>
                    <tr align="center">
                        <th align="center">书籍编号</th>
                        <th align="center">书籍名称</th>
                        <th align="center">书籍数量</th>
                        <th style="width: 20%" align="center">书籍详情</th>
                        <th style="width: 10%" align="center">书籍价格</th>
                        <th style="width: 10%" align="center">操作</th>
                    </tr>
                 </thead>
                 <tbody>
                 <c:forEach var="book" items="${list}">
                     <tr>
                         <td >${book.bookID}</td>
                         <td >${book.bookName}</td>
                         <td >${book.bookCounts}</td>
                         <td >${book.detail}</td>
                         <td >${book.price}</td>
                         <td align="center">
                             <a href="${pageContext.request.contextPath}/book/delete/${book.bookID}">删除</a>
                            &nbsp; | &nbsp;
                             <a href="${pageContext.request.contextPath}/book/toUpdata/${book.bookID}">修改</a>
                         </td>
                     </tr>
                 </c:forEach>
                 </tbody>
             </table>

    </div>
</div>
</body>
</html>
