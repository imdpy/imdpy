<%--
  Created by IntelliJ IDEA.
  User: 17396
  Date: 2021/12/16
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>IM图床</title>
    <!-- 开发环境版本，包含了有帮助的命令行警告 -->
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
    <script>
        function dropifyUpload() {
            var formData = new FormData();//首先这里新建一个空对象
            formData.append("file", document.getElementById("file").files[0]);//这里是一个图片的input框，id为file。appen的第一个参数，是后台的传输的字段
            $.ajax({
                url:"http://www.imdpy.cn:8080/FileUp/servletController",
                type:"post",
                processData:false, //这里需要注意，一定要写false，因为有图片，所以不需要序列化
                contentType:false, //这里也是一个需要注意的点。也要写false
                data:formData,
                dataType:'json',
                success:function(data){
                    if(data.info=="添加成功"){
                        alert(data.info);
                        //  window.reload();
                        $("#ap").text(data.picaddr);
                        $("#myId").attr("href",data.picaddr);

                    }else{
                        alert(data.info);
                    }
                }
            });
        }

    </script>
</head>
<body background="http://www.imdpy.cn:8080/FileUp/down?pic=/2021_12_16/a11.jpg">
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">IM图床</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="http://www.imdpy.cn/">关于</a>
                        </li>
                    </ul>
                </div>
            </nav>
            <div class="jumbotron">
                <h1>
                    Hello, IM图床!
                </h1>
                <p>
                    <input type="file" id="file" class="dropify" />
                    <button type="button" onclick="dropifyUpload()" class="btn btn-primary btn-large">上传</button>

                </p>
                <p></p><a id="myId" ><div id="ap">等待上传</div></a>
            </div>
        </div>
    </div>
</div>
<center>IM图床测试程序</center>
</body>
</html>