<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 17396
  Date: 2021/11/17
  Time: 15:30
  author：IMDPY
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>搜索<%out.println(""+(String)session.getAttribute("bookName"));%>的结果-海洋书城</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">
                <h1>
                    <small>搜索<%out.println(""+(String)session.getAttribute("bookName"));%>的结果</small>
                </h1>
                <div class="col-md-4 column">
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/index?id=<%=session.getAttribute("id")%>">返回主页</a>
                </div>
                <div class="col-md-4 column"></div>
                <div class="col-md-8 column">
                    <form class="form-inline" action="${pageContext.request.contextPath}/book/seach" method="post" style="float: right">
                        <label id = "lable1"></label>
                        <input type="text" name="bookName" class="form-control"  id="input1" placeholder="查询书籍名称">
                        <input type="submit" value="查询 "  class="btn btn-primary" >
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
                    <th>书籍图片</th>
                    <th>书籍编号</th>
                    <th>书籍名称</th>
                    <th>书籍数量</th>
                    <th>书籍详情</th>
                    <th>书籍价格</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="book" items="${book}">
                    <tr>
                        <td><img src=${book.picaddr}></td>
                        <td>${book.bookID}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                        <td>${book.price}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/book/toaddorder/${book.bookID}">购买</a>
<%-- <a href="${pageContext.request.contextPath}/book/toUpdata/${book.bookID}">查看书籍详情</a>--%>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
