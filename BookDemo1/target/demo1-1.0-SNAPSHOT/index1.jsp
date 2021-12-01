<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
  <!-- 
    Author: chy
    CreateAt: 2021年11月10日
    License: MIT
  -->
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>登录页</title>
  <link rel="stylesheet" href="main-login/style.css">
  <script src="${pageContext.request.contextPath}/js/jquery-3.6.0.js"></script>
  <script>



  </script>
</head>
<body>
  <div class="container">
    <div class="form-warp">
      <form action="${pageContext.request.contextPath}/queryBook" method="post" class="sign-in-form">
        <h2 class="form-title">登录</h2>
        <input id="LoginUserName" name="queryBookName" placeholder="用户名" />
        <input type="password" name="password" id="LoginPassword" placeholder="密码" />
        <input type="submit" class="submit-btn" value="立即提交"/>
      </form>
      <form class="sign-up-form">
        <h2 class="form-title">注册</h2>
        <input placeholder="用户名" />
        <input type="password" placeholder="密码" />
        <div class="submit-btn">立即注册</div>
      </form>
    </div>
    <div class="desc-warp">
      <div class="desc-warp-item sign-up-desc">
        <div class="content">
          <button id="sign-up-btn">注册</button>
        </div>
        <img src="main-login/img/log.svg" alt="">
      </div>
      <div class="desc-warp-item sign-in-desc">
        <div class="content">
          <button id="sign-in-btn" onclick="log_in">登录</button>
        </div>
        <img src="main-login/img/register.svg" alt="">
      </div>
    </div>
  </div>
  <script src="main-login/main.js"></script>
</body>
</html>