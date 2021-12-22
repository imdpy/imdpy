<%--
  Created by IntelliJ IDEA.
  User: 17396
  Date: 2021/12/16
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>data:数据对象</title>
</head>
<body>
<input type="file" id="file" class="dropify" />
<button type="button" onclick="dropifyUpload()">上传</button>
<!-- 开发环境版本，包含了有帮助的命令行警告 -->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>

<script>
    function dropifyUpload() {
        var formData = new FormData();//首先这里新建一个空对象
        formData.append("file", document.getElementById("file").files[0]);//这里是一个图片的input框，id为file。appen的第一个参数，是后台的传输的字段
        $.ajax({
            url:"http://localhost:8080/FileUp_war_exploded/servletController",
            type:"post",
            processData:false, //这里需要注意，一定要写false，因为有图片，所以不需要序列化
            contentType:false, //这里也是一个需要注意的点。也要写false
            data:formData,
            dataType:'json',
            success:function(data){
                alert("ok");
                if(data.info=="添加成功"){
                    alert(data.info);
                    // window.reload();
                }else{
                    alert(data.info);
                }
            }
        });
    }
    function go1() {
        alert("5656");
    }

</script>
</body>
</html>