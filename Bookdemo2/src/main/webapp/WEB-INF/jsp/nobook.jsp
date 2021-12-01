<%--
  Created by IntelliJ IDEA.
  User: 17396
  Date: 2021/11/24
  Time: 0:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>暂时还没有订单哦</title>
</head>
<script>
    function test(){
        alert("暂时还没有订单哦，快去购买吧");
        window.location.href='${pageContext.request.contextPath}/book/index';
    }
    window.onload=test;
</script>
<body>
</body>
</html>
