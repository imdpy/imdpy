<%--
  Created by IntelliJ IDEA.
  User: 17396
  Date: 2021/12/16
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
      <form action="${pageContext.request.contextPath}/servletController" method="post" enctype="multipart/form-data">
        用户名：<input type="text" name="uname"/><br>
        头像：<input type="file" name="photo"/><br>
              <input type="submit" value="上传">
      </form>
  </body>
</html>
