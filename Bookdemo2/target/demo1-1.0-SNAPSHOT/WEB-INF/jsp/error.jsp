<%--
  Created by IntelliJ IDEA.
  User: 17396
  Date: 2021/11/19
  Time: 23:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>error</title>
</head>

<script>
    function test(){
        alert("登录口令已失效，请重新登录");
        window.location.href='../login.jsp';
    }
window.onload=test;
</script>
<body>

</body>
</html>
