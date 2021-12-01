<%@ page import="com.chen.pojo.Books" %><%--
  Created by IntelliJ IDEA.
  User: 17396
  Date: 2021/11/17
  Time: 15:30
  author：IMDPY
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购买记录</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">
                <h1>
                    <small>购买记录</small>
                </h1>
                <div class="col-md-4 column">
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/index?id=<%=session.getAttribute("id")%>">返回主页</a>
                </div>
                <div class="col-md-4 column"></div>
                <div class="col-md-8 column">
                    <form class="form-inline" action="${pageContext.request.contextPath}/book/seach" method="post" style="float: right">
                        <label id = "lable1"></label>
                        <input type="text" name="bookName" class="form-control"  id="input1" placeholder="查询购买记录">
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
                    <th>订单号</th>
                    <th>用户名</th>
                    <th>书籍名称</th>
                    <th>收货地址</th>
                    <th>备注</th>
                    <th>价格</th>
                    <th>图片</th>
                </tr>
                </thead>
                <tbody>
                <%int i=0;String[] opbb = ((String)session.getAttribute("opbb1")).split("!!");String[] opbbname = ((String)session.getAttribute("opbb1name")).split("!!");String[] opbbprice = ((String)session.getAttribute("opbb1price")).split("!!");%>
                <tr>
                <c:forEach var="record"  items="${userrecord}">
                        <td>${record.orderId}</td>
                        <td><%=session.getAttribute("id")%></td>
                        <td><%out.print(opbbname[i]);%></td>
                        <td>${record.addr}</td>
                        <td>${record.remarks}</td>
                        <td><% out.print(opbbprice[i]);%>元</td>
                        <td><img src="<% out.print(opbb[i++]);%>"></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
