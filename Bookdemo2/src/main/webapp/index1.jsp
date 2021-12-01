<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>海洋书城-一本好书，相伴一生</title>
  <link rel="stylesheet" href="css/index1.css">
  <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <style>
  </style>
</head>
<script>
  function dloin() {
    <%System.out.println("\n进行登录操作");%>
    window.location.href='login.jsp';
  }
</script>
<body>
<div>
  <!--第一部分：Logo部分-->
  <div class="header">
    <div id="d1-1"><img src="https://pic.baixiongz.com/uploads/2021/11/16/28f4be44aff60.png"/></div>
    <div id="d1-2">
      <form action="login.jsp" method="get">
      <input type="text" name="bookName"  placeholder="请输入书名搜索"/>
      <input type="submit" value="搜索" />
    </form></div>
    <div id="d1-3" align="center">
      <a href="login.jsp">登录|注册</a>
      <a href="login.jsp">查看订单列表</a>
      <a href="login.jsp">客服热线</a>
    </div>
  </div>
  <!--第二部分：导航栏部分-->
  <!--清除浮动-->
  <div class="clear"></div>
  <div class="menu">
    <ul>
      <li><a href="#">首页</a></li>
      <li><a href="login.jsp">武侠小说</a></li>
      <li><a href="login.jsp">技术书籍</a></li>
      <li><a href="login.jsp">美食教程</a></li>
      <li><a href="login.jsp">时事政治</a></li>
    </ul>
  </div>
  <center>
    <div style="height: 400px" id="dlan">
      <button class="form-control" style="height: 80%" onclick="dloin()">如果需要使用海洋书城，请先登录</button>
    </div>
  </center>

  <!--第八部分:页脚部分-->
  <div class="foot">
    <p>
      <a href="login.jsp">关于我们</a>
      <a href="login.jsp">联系我们</a>
      <a href="login.jsp">投诉建议</a>
    </p>
    <p>
      版权所有 2020-2021 海洋书城 &copy;
    </p>
  </div>
</div>
</body>
</html>