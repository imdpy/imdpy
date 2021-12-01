<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>海洋书城-一本好书，相伴一生</title>
  <!-- Bootstrap -->
  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
  <div class="row-fluid">
    <div class="span12">
      <div class="row-fluid">
        <div class="span6">
          <ul class="nav nav-tabs">
            <li class="active">
              <a href="#">首页</a>
            </li>
            <li>
              <a href="${pageContext.request.contextPath}/book/seach?bookName=武侠小说">武侠小说</a>
            </li>
            <li >
<%--            <li class="disabled">--%>
              <a href="${pageContext.request.contextPath}/book/seach?bookName=技术书籍">技术书籍</a>
            </li>
            <li>
              <a href="${pageContext.request.contextPath}/book/seach?bookName=美食教程">美食教程</a>
            </li>
            <li >
              <a href="${pageContext.request.contextPath}/book/seach?bookName=时事政治">时事政治</a>
            </li>
            <li class="dropdown pull-right">
              <a href="#" data-toggle="dropdown" class="dropdown-toggle">菜单<strong class="caret"></strong></a>
              <ul class="dropdown-menu">
                <li>
                  <a href="${pageContext.request.contextPath}/customer/detail?id=<%=session.getAttribute("id")%>">我的信息</a>
                </li>
                <li>
                  <a href="${pageContext.request.contextPath}/order/record?id=<%=session.getAttribute("toid")%>">查看订单</a>
                </li>
                <li>
                  <a href="${pageContext.request.contextPath}/customer/about">联系客服</a>
                </li>
                <li class="divider">
                </li>
                <li>
                  <a href="${pageContext.request.contextPath}/book/error" >退出登录</a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
        <div class="span6">
          <form action="${pageContext.request.contextPath}/book/seach" class="input-medium search-query" class="form-search">
            <input  type="text" name="bookName"/>
            <button type="submit" name="bookName" class="btn">查找</button>
          </form>
        </div>
      </div>
      <div class="carousel slide" id="carousel-153140">
        <ol class="carousel-indicators">
          <li class="active" data-slide-to="0" data-target="#carousel-153140">
          </li>
          <li data-slide-to="1" data-target="#carousel-153140">
          </li>
          <li data-slide-to="2" data-target="#carousel-153140">
          </li>
        </ol>
        <div class="carousel-inner">
          <div class="item active">
            <a href="${pageContext.request.contextPath}/book/seach?bookName=<%=session.getAttribute("hdmc0")%>"> <img height="100px" width="100%" alt="" src="<%=session.getAttribute("hdtp0")%>" /></a>
            <div class="carousel-caption">
              <h4>
                <%=session.getAttribute("hdmc0")%>
              </h4>
              <p>
                快来参加<%=session.getAttribute("hdmc0")%>吧
              </p>
            </div>
          </div>
          <div class="item">
            <a href="${pageContext.request.contextPath}/book/seach?bookName=<%=session.getAttribute("hdmc1")%>"><img height="100px" width="100%" alt="" src="<%=session.getAttribute("hdtp1")%>" /></a>
            <div class="carousel-caption">
              <h4>
                <%=session.getAttribute("hdmc1")%>
              </h4>
              <p>
                快来参加<%=session.getAttribute("hdmc1")%>吧
              </p>
            </div>
          </div>
          <div class="item">
            <a href="${pageContext.request.contextPath}/book/seach?bookName=<%=session.getAttribute("hdmc2")%>"><img height="100px" width="100%" alt="" src="<%=session.getAttribute("hdtp2")%>" /></a>
            <div class="carousel-caption">
              <h4>
                <%=session.getAttribute("hdmc2")%>
              </h4>
              <p>
                快来参加<%=session.getAttribute("hdmc2")%>吧
              </p>
            </div>
          </div>
        </div> <a data-slide="prev" href="#carousel-153140" class="left carousel-control">‹</a> <a data-slide="next" href="#carousel-153140" class="right carousel-control">›</a>
      </div>
    </div>
  </div>
</div>
<table width="100%">
  <tr>
    <td>
      <table  width="100%" height="500px">
        <tr>
          <td colspan="7">
            <h3>最新商品<img src="https://z3.ax1x.com/2021/11/23/opXZ59.png"></h3>
          </td>
        </tr>
        <tr align="center">
          <!--左边大图的-->
          <td rowspan="2" width="206px" height="480px">
            <a href="${pageContext.request.contextPath}/book/seach?bookName=<%=session.getAttribute("hdmc2")%>"><img src="https://z3.ax1x.com/2021/11/22/oSts3Q.png" /></a>
          </td>
          <td colspan="3" height="240px">
            <a href="${pageContext.request.contextPath}/book/seach?bookName=<%=session.getAttribute("hdmc2")%>"><img src="<%=session.getAttribute("hdtp2")%>" width="100%" height="100%" /></a>
          </td>
          <td>
            <a href="${pageContext.request.contextPath}/order/toaddorderby?bkid=1"><img style="height: 200px ;width: 180px" src="<%=session.getAttribute("picaddr0")%>" /></a>
            <p><%=session.getAttribute("bookName0")%></p>
            <p><font color="red">Hot:<%=session.getAttribute("price0")%>元</font></p>
          </td>
          <td>
            <a href="${pageContext.request.contextPath}/order/toaddorderby?bkid=2"><img style="height: 200px ;width: 180px" src="<%=session.getAttribute("picaddr1")%>" /></a>
            <p><%=session.getAttribute("bookName1")%></p>
            <p><font color="red">Hot:<%=session.getAttribute("price1")%>元</font></p>
          </td>
          <td>
            <a href="${pageContext.request.contextPath}/order/toaddorderby?bkid=3"><img style="height: 200px ;width: 180px" src="<%=session.getAttribute("picaddr2")%>" /></a>
            <p><%=session.getAttribute("bookName2")%></p>
            <p><font color="red">Hot:<%=session.getAttribute("price2")%>元</font></p>
          </td>
        </tr>
        <tr align="center">

          <td>
            <a href="${pageContext.request.contextPath}/order/toaddorderby?bkid=4"><img style="height: 200px ;width: 180px" src="<%=session.getAttribute("picaddr3")%>" /></a>
            <p><%=session.getAttribute("bookName3")%></p>
            <p><font color="red">Hot:<%=session.getAttribute("price3")%>元</font></p>
          </td>
          <td>
            <a href="${pageContext.request.contextPath}/order/toaddorderby?bkid=5"><img style="height: 200px ;width: 180px" src="<%=session.getAttribute("picaddr4")%>" /></a>
            <p><%=session.getAttribute("bookName4")%></p>
            <p><font color="red">Hot:<%=session.getAttribute("price4")%>元</font></p>
          </td>
          <td>
            <a href="${pageContext.request.contextPath}/order/toaddorderby?bkid=6"><img style="height: 200px ;width: 180px" src="<%=session.getAttribute("picaddr5")%>" /></a>
            <p><%=session.getAttribute("bookName5")%></p>
            <p><font color="red">Hot:<%=session.getAttribute("price5")%>元</font></p>
          </td>
          <td>
            <a href="${pageContext.request.contextPath}/order/toaddorderby?bkid=7"><img style="height: 200px ;width: 180px" src="<%=session.getAttribute("picaddr6")%>" /></a>
            <p><%=session.getAttribute("bookName6")%></p>
            <p><font color="red">Hot:<%=session.getAttribute("price6")%>元</font></p>
          </td>
          <td>
            <a href="${pageContext.request.contextPath}/order/toaddorderby?bkid=8"><img style="height: 200px ;width: 180px" src="<%=session.getAttribute("picaddr7")%>" /></a>
            <p><%=session.getAttribute("bookName7")%></p>
            <p><font color="red">Hot:<%=session.getAttribute("price7")%>元</font></p>
          </td>
          <td>
            <a href="${pageContext.request.contextPath}/order/toaddorderby?bkid=9"> <img style="height: 200px ;width: 180px" src="<%=session.getAttribute("picaddr8")%>" /></a>
            <p><%=session.getAttribute("bookName8")%></p>
            <p><font color="red">Hot:<%=session.getAttribute("price7")%>元</font></p>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<center>
  <a href="${pageContext.request.contextPath}/book/index">2021-2021海洋书城版权所有</a>
  <a href="${pageContext.request.contextPath}/book/index">备案号：Ⅶasiahsih</a>
</center>
</body>
</html>