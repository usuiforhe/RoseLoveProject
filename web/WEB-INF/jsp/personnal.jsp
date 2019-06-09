<%--
  Created by IntelliJ IDEA.
  User: cong
  Date: 19-6-1
  Time: 下午2:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Expires" content="0">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-control" content="no-cache">
    <meta http-equiv="Cache" content="no-cache">
    <title>个人中心</title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="js/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="jquery-3.2.1.min.js"></script>
    <link href="css/easyui.css" rel="stylesheet" type="text/css">
    <link href="css/icon.css" rel="stylesheet" type="text/css">
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <style>
        a {
            text-decoration: none;
        }
        a:hover{
            text-decoration: none;
        }
        nav>div>a {
            margin-top: auto;
            margin-bottom: auto;
            margin-left: 100px;
        }
        #ta>div>a{
            font-size: 20px;
            margin-top: auto;
            margin-bottom: auto;
            margin-left: 100px;
        }
        #show > div{
            margin-top: 20px;
            width: 150px;
            float: left;
            margin-left: 80px;
            margin-right: 80px;
        }
        #show > div > div > button{
            margin: 10px 33px;
        }
        #person ul li {
            list-style: none;
            font-size: 17px;
            margin: 20px 15%;
        }
        #persondate > input,select{
            margin-left: 20px;
            margin-right: 20px;
        }
        #persondate > span{
            margin-right: 30px;
        }
        iframe{
            min-height: 100%;
        }
    </style>
</head>
<body>
<div style="background-color: white;overflow: hidden; height: 263px">
    <div style="float: left; height: 263px">
        <img src="./u86.png" style="outline: none; " tabindex="0">
    </div>
    <div style="padding: 0px; float: right; margin-right: 20px; margin-top: 20px" >
        <a class="btn btn-primary btn-sm    " style="margin-bottom: 10px">注册</a>
        <span style="font-size: 30px">|</span>
        <a class="btn btn-primary btn-sm" style="margin-bottom: 10px">登录</a>
    </div>
</div>


<nav class="navbar navbar-default navbar-static-top">
    <div class="container" style="font-size: 30px;">
        <a href="${pageContext.request.contextPath}/index.jsp" target="_blank">首页</a>
        <a>搜索</a>
        <a>交友论坛</a>
        <a>活动</a>
        <a href="${pageContext.request.contextPath}/personnal.jsp">个人中心</a>
    </div>
</nav>

<div style="overflow: hidden">
    <div id="person" style="float:left; width: 25%; margin-left: 5%; padding-top: 20px; padding-bottom: 20px; background-color: rgba(0,0,0,0.25); border-radius: 10px">
        <div style="text-align: center">
            <img src="test.jpeg" width="90" height="90" class="img-circle">
            <div>昵称:${usrname}<span></span></div>
        </div>
        <div style="margin-left: 20px;">
            <div style="margin-left: 15%;">资料完成度</div>
            <div id="p" class="easyui-progressbar" data-options="value:60" style="width:70%;height: 20px;margin-left: 15%;"></div>
        </div>
        <ul style="margin-left: 15%; padding: 0; margin-left: 20px">
            <li><a href="javascript:changeIframe('data')">个人资料</a><a style="float: right"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a></li>
            <li><a href="javascript:changeIframe('heart')">内心独白</a><a style="float: right"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a></li>
            <li><a href="javascript:changeIframe('hobby')">兴趣爱好</a><a style="float: right"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a></li>
            <li><a href="javascript:changeIframe('claim')">择友要求</a><a style="float: right"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a></li>
            <li><a href="javascript:changeIframe('myphoto')">我的相册</a><a style="float: right"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a></li>
            <li><a href="javascript:changeIframe('mail')">我的信箱</a><a style="float: right"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a></li>
            <li><a href="javascript:changeIframe('visitor')">我的访客</a><a style="float: right"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a></li>
            <li><a href="javascript:changeIframe('settting')">系统设置</a><a style="float: right"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a></li>
        </ul>
    </div>
    <div style="float: right; margin-right: 5%;  padding-top: 20px; padding-bottom: 20px; border-radius: 20px; width: 60%">
        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="${pageContext.request.contextPath}/htm/data.html" id="iframe"></iframe>
        </div>
    </div>
    <script>
        var iframe = document.getElementById("iframe");
        function changeIframe(frameName) {
            iframe.setAttribute("src", "${pageContext.request.contextPath}/htm/" + frameName + ".html");
        }
        function changePage(pageName) {
            var url = "${pageContext.request.contextPath}/changePage/" + pageName;
            $.get(url);
        }
    </script>
</div>

</body>
</html>