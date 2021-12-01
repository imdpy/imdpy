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
    <title>书籍管理</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">

                <h1>
                    <small>书籍列表 -- 显示所有数据</small>
                </h1>
                <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toaddBook">添加书籍</a>
                </div>
                <div class="col-md-4 column"></div>
                <div class="col-md-8 column">
                    <form class="form-inline" action="" method="" style="float: right">
                        <label id = "lable1"></label>
                        <input type="text" name="queryBookName" class="form-control"  id="input1" placeholder="查询书籍名称">
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
                        <th>书籍编号</th>
                        <th>书籍名称</th>
                        <th>书籍数量</th>
                        <th>书籍详情</th>
                        <th>操作</th>
                    </tr>
                 </thead>
                 <tbody>
                 <c:forEach var="book" items="${list}">
                     <tr>
                         <td>${book.bookID}</td>
                         <td>${book.bookName}</td>
                         <td>${book.bookCounts}</td>
                         <td>${book.detail}</td>
                         <td>
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
</div>
<%--<form>--%>
<%--    <div class="form-group">--%>
<%--        <label for="exampleInputEmail1">Email address</label>--%>
<%--        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">--%>
<%--    </div>--%>
<%--    <div class="form-group">--%>
<%--        <label for="exampleInputPassword1">Password</label>--%>
<%--        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">--%>
<%--    </div>--%>
<%--    <div class="form-group">--%>
<%--        <label for="exampleInputFile">File input</label>--%>
<%--        <input type="file" id="exampleInputFile">--%>
<%--        <p class="help-block">Example block-level help text here.</p>--%>
<%--    </div>--%>
<%--    <div class="checkbox">--%>
<%--        <label>--%>
<%--            <input type="checkbox"> Check me out--%>
<%--        </label>--%>
<%--    </div>--%>
<%--    <button type="submit" class="btn btn-default">Submit</button>--%>
<%--</form>--%>
<%--<h1>--%>
<%--    所有书籍:--%>

<%--</h1>--%>
</body>
</html>
