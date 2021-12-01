<%--
  Created by IntelliJ IDEA.
  User: chen
  Date: 2021/11/8
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>

    <script src="${pageContext.request.contextPath}/js/jquery-3.6.0.js"></script>
    <script>
        function a()
        {
            $.post(
                {
                    url: "${pageContext.request.contextPath}/queryBook",
                    data: {"queryBookName":$("#username").val()},
                    dataType: "text",
                    success:function (data) {

                        console.log("成功");
                        if (data == 'OK')
                        {
                            $("#userInfo").css("color","green");
                        }else
                        {
                            $("#userInfo").css("color","red");
                        }
                        $("#userInfo").html(data);
                    },
                    error:function (data)
                    {
                        console.log("啊?");
                    }
                }
            )
        }
    </script>

    <style>
        a{
            text-decoration: none;
            color: black;
            font-size: 10px;
        }
        h3{
            width: 180px;
            height: 37px;
        }
    </style>
</head>
<body>


<h3>
<a href="${pageContext.request.contextPath}/book/allbook">进入书籍页面</a>
<input type="text" id="username" onblur="a()">
<span id="userInfo"></span>
</h3>
</body>
</html>
