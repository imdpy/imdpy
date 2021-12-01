<%--
  Created by IntelliJ IDEA.
  User: chen
  Date: 2021/11/8
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>海洋书城后台-管理活动</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<script>
    function FF00(){
        alert("修改成功");
    }
</script>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">

                <h1>
                    <small>海洋书城后台 -- 显示所有活动</small>
                </h1>
                <div class="col-md-4 column">
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allbook">管理书籍</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/activity/allactivity">管理活动</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/customer/alluser">管理用户</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/order/allorderlist">管理订单</a>
                </div>
                <div class="col-md-4 column"></div>
                <div class="col-md-8 column">

                </div>
            </div>

        </div>
    </div>
    <div class="row clearfix">
         <div class="col-md-12">
             <table class="table table-hover table-striped">
                 <thead>
                    <tr>
                        <th>活动编号</th>
                        <th>活动名称</th>
                        <th>活动图片</th>
                    </tr>
                 </thead>
                 <tbody>
                 <tr>
                     <form action="${pageContext.request.contextPath}/activity/toUpdata" id="form" method="post">
                     <td><input disabled="disabled" value="1"/></td>
                     <td><input name="activity" value="<%=session.getAttribute("hdmc0")%>"/></td>
                     <td><input name="picaddr" value="<%=session.getAttribute("hdtp0")%>"/></td>
                     <td>
                         <input type="submit" onclick="FF00()" class="form-control" value="修改" >
                     </td>
                     </form>
                 </tr>
                 </tbody>
                 <tbody>
                 <tr>
                     <form action="${pageContext.request.contextPath}/activity/toUpdata1" id="form1" method="post">
                         <td><input disabled="disabled" value="2"/></td>
                         <td><input name="activity2" value="<%=session.getAttribute("hdmc1")%>"/></td>
                         <td><input name="picaddr2" value="<%=session.getAttribute("hdtp1")%>"/></td>
                         <td>
                             <input type="submit" onclick="FF00()" class="form-control" value="修改" >
                         </td>
                     </form>
                 </tr>
                 </tbody>
                 <tbody>
                 <tr>
                     <form action="${pageContext.request.contextPath}/activity/toUpdata2" id="form2" method="post">
                         <td><input disabled="disabled" value="3"/></td>
                         <td><input name="activity3" value="<%=session.getAttribute("hdmc2")%>"/></td>
                         <td><input name="picaddr3" value="<%=session.getAttribute("hdtp2")%>"/></td>
                         <td>
                             <input type="submit" onclick="FF00()" class="form-control" value="修改" >
                         </td>
                     </form>
                 </tr>
                 </tbody>
             </table>
         </div>
    </div>
</div>
</body>
</html>
