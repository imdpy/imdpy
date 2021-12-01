<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>登录到海洋书城</title>
  <link rel="stylesheet" href="main-login/style.css">
  <script src="${pageContext.request.contextPath}/js/jquery-3.6.0.js"></script>
  <script>
    var vc=0;
    function mycheck(){
      var password = $("#password").val();	//获取input框内的值
      if(password == null || password == ""){
        alert("请完整填写注册信息");	//如果值为空，提示用户填写
      }else{
        //如果值不为空，尝试首次判断验证码
        if(document.getElementById("vCode").value==vc) {
          alert("请重新登录");
        }

      }
    }
    function cheakLogin(){
      var password =document.getElementById("LoginPassword").value;	//获取input框内的值
        if(password == null || password == ""){
          alert("请完整填写登录信息");	//如果值为空，提示用户填写
          return;
        }
    }
    function test(){
      var v1=Math.floor(Math.random() * 10);
      var v2=Math.floor(Math.random() * 10);
      vc=v1+v2;
      document.getElementById("vCode").setAttribute("placeholder",""+v1+"+"+v2+"=");
      document.getElementById("vCode1").setAttribute("placeholder",""+v1+"+"+v2+"=");
      document.getElementById("vCode11").setAttribute("value",vc);
      document.getElementById("vCode12").setAttribute("value",vc);
    }
    window.onload=test;
  </script>
</head>
<body>
  <div class="container">
    <div class="form-warp">
      <form action="${pageContext.request.contextPath}/queryBook" method="post" class="sign-in-form">
        <h2 class="form-title">登录</h2>
        <input id="LoginUserName" name="queryBookName" placeholder="账号" />
        <input type="password" name="password" id="LoginPassword" placeholder="密码" />
        <input  type="text" name="vCode1" id="vCode1" placeholder="1+3=" />
        <input  type="hidden" name="vCode11" id="vCode11" value="" />
        <input type="submit" class="submit-btn" onclick="cheakLogin()" value="立即提交"/>
      </form>
      <form action="${pageContext.request.contextPath}/register" method="post" class="sign-up-form">
        <h2 class="form-title">注册</h2>
        <input id="userId" name="userId" placeholder="账号" />
        <input  type="password" name="password" id="password"  type="password" placeholder="密码" />
        <input  type="text" name="vCode" id="vCode" placeholder="1+3=" />
        <input  type="hidden" name="vCode12" id="vCode12" value="" />
        <input type="submit" class="submit-btn" onclick="mycheck()" value="立即注册"/>
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