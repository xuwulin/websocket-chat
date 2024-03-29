<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html lang="en">
<head>
    <title>聊天室——登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords"
          content="Transparent Sign In Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"/>
    <script type="application/x-javascript">
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>

    <script src="js/jquery-1.9.1.min.js"></script>
    <link rel="icon" href="img/chat.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="css/font-awesome.css"/> <!-- Font-Awesome-Icons-CSS -->
    <link rel="stylesheet" href="css/login.css" type="text/css" media="all"/> <!-- Style-CSS -->
</head>


<body class="background">
<div class="header-w3l">
    <h1>聊天室</h1>
</div>
<div class="main-content-agile">
    <div class="sub-main-w3">
        <h2>登录</h2>
        <form>

            <div class="icon1">
                <input placeholder="用户名" id="username" type="text"/>
            </div>

            <div class="icon2">
                <input placeholder="密码" id="password" type="password"/>
            </div>

            <div class="clear"></div>
            <input type="button" value="登录" onclick="login()"/>
        </form>
    </div>
</div>
<div class="footer">
    <p> 版权所有Copyright 2006-2019  All Rights Reserved </p>
</div>
</body>
<script type="text/javascript">
    function login() {
        $.ajax({
            type: 'POST',
            url: '/login',
            dataType: 'json',
            data: {
                username: $("#username").val(),
                password: $("#password").val()
            },
            success: function (data) {
                if (data.success) {
                    // 跳转页面
                    window.location.href = "chat.jsp";
                } else {
                    alert(data.message);
                }
            }
        });
    }
</script>
</html>