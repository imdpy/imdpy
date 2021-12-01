<%@ page import="com.chen.controller.BookController" %><%--
  Created by IntelliJ IDEA.
  User: chen
  Date: 2021/11/12
  Time: 10:42
  author：IMDPY
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript">
        function submitForm1(){
            document.getElementById("form1").submit();
        }
        function submitForm(){
            document.getElementById2("form2").submit();
        }
        function getPhone(){
            var a=document.getElementById("bkpicaddr1").value;
            document.getElementById("bkpicaddr").value=a.toString();
        }
    </script>
</head>

<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">
                <h1>
                    <small>添加书籍列表</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/ok" id="form2">
        <label for = "bkpicaddr">书籍图片地址</label>
        <div>
            <input type="text" class="form-control" name = "picaddr" id = "bkpicaddr1" placeholder="请输入书籍详情" onkeyup="getPhone()">
        </div>
        <input type="submit" value="请选择图片地址(已禁用，本站已和白熊图床达成合作，请使用右侧上传图片复制链接粘贴到输入框)" onclick="submitForm1();"/>
        <a href="https://pic.baixiongz.com/" target="_blank">上传文件到图床</a>
    </form>
    <form action="${pageContext.request.contextPath}/book/addBook" method="post">
        <div class="form-group">
            <label for = "bkname">书籍名称</label>
            <input type="text" class="form-control" name="bookName" id = "bkname" placeholder="请输入书籍名">
        </div>
        <div class="form-group">
            <label for = "bknumber">书籍数量</label>
            <input type="text" class="form-control" name="bookCounts" id = "bknumber" placeholder="请输入书籍数量">
        </div>
        <div class="form-group">
            <label for = "bkscan">书籍详情</label>
            <input type="text" class="form-control" name = "detail" id = "bkscan" placeholder="请输入书籍详情">
        </div>
        <div class="form-group">
            <label for = "bkpic">书籍书籍价格</label>
            <input type="text" class="form-control" name = "price" id = "bkpic" placeholder="请输入书籍详情">
        </div>
        <input type="text" class="form-control" name = "picaddr" id = "bkpicaddr" placeholder="请输入书籍详情" value="asoaj" style="display:none;">

        <div class="form-group">
            <input type="submit" class="form-control" value="添加" >
        </div>
    </form>

</div>


</body>

</html>
