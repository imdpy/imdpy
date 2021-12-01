<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>详细信息显示</title>
  <link rel="stylesheet" href="../main-login/style.css">
  <script src="${pageContext.request.contextPath}/js/jquery-3.6.0.js"></script>
</head>
<body>
  <div class="container">
    <div class="form-warp">
      <form  action="${pageContext.request.contextPath}/book/error" class="sign-in-form">
        <h2 class="form-title"><%=session.getAttribute("username")%></h2>
        <a href=""><h3 class="form-title">如果需要更改资料请联系在线客服</h3></a>
        <input id="LoginUserName" name="queryBookName" disabled="disabled" placeholder="UID:<%=session.getAttribute("userid")%>" />
        <input type="password" name="password" disabled="disabled" id="LoginPassword" placeholder="用户名:<%=session.getAttribute("username")%>" />
        <input  type="text" name="vCode1" id="vCode1" disabled="disabled" placeholder="密码:<%=session.getAttribute("userpwd")%>" />
        <input type="submit" class="submit-btn" value="退出登录"/>
      </form>
      <form action="${pageContext.request.contextPath}/book/index" method="post" class="sign-up-form">
        <h2 class="form-title">海洋工作组</h2>
        <input id="userId" name="userId" disabled="disabled" placeholder="陈海洋 吴京华" />
        <input  type="password" name="password" disabled="disabled" id="password"  type="password" placeholder="胡锦戈 黄盘云 雷水笙" />
        <input  type="text" name="vCode" id="vCode" disabled="disabled" placeholder="肖彬 龚维杰 郑霖" />
        <input type="submit" class="submit-btn" value="返回主页"/>
      </form>
    </div>
    <div class="desc-warp">
      <div class="desc-warp-item sign-up-desc">
        <div class="content">
          <button id="sign-up-btn">软件信息</button>
        </div>
        <img src="../main-login/img/log.svg" alt="">
      </div>
      <div class="desc-warp-item sign-in-desc">
        <div class="content">
          <button id="sign-in-btn" onclick="log_in">我的信息</button>
        </div>
        <img src="../main-login/img/register.svg" alt="">
      </div>
    </div>
  </div>
  <script src="../main-login/main.js"></script>
</body>
</html>