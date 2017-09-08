<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">
  <title>登录界面</title>
  <link href="${contextPath}/static/css/default.css" rel="stylesheet" type="text/css" />
  <!--必要样式-->
  <link href="${contextPath}/static/css/styles.css" rel="stylesheet" type="text/css" />
  <link href="${contextPath}/static/css/demo.css" rel="stylesheet" type="text/css" />
  <link href="${contextPath}/static/css/loaders.css" rel="stylesheet" type="text/css" />
</head>
<body >
<div class='login'>
  <div class='login_title'>
    <span>中服焦点</span>
  </div>

  <form action="${contextPath}/login" method="post"  id ="form1">

    <div class='login_fields'>
      <div class='login_fields__user'>
        <div class='icon'>
          <img alt="" src='${contextPath}/static/img/user_icon_copy.png'>
        </div>


        <input name="username" id = "username" placeholder='用户名' maxlength="16" type='text' autocomplete="off"/>
        <div class='validation'>
          <img alt="" src='${contextPath}/static/img/tick.png'>
        </div>
      </div>
      <div class='login_fields__password'>
        <div class='icon'>
          <img alt="" src='${contextPath}/static/img/lock_icon_copy.png'>
        </div>
        <input name="password" id = "password" placeholder='密码' maxlength="16" type='password' autocomplete="off">
        <div class='validation'>
          <img alt="" src='${contextPath}/static/img/tick.png'>
        </div>
      </div>
      <div class='login_fields__password'>
        <div class='icon'>
          <img alt="" src='${contextPath}/static/img/key.png'>
        </div>
        <input name="code" placeholder='验证码' id = "code" maxlength="4" type='text' name="ValidateNum" autocomplete="off">
        <div class='validation' style="opacity: 1; right: -5px;top: -3px;">
          <canvas class="J_codeimg" id="myCanvas" onclick="Code();">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
        </div>
      </div>
      <div class='login_fields__submit'>
        <input type='button' value='登录' onclick = "validBefore()">
      </div>
    </div>
    <div class='success'>
    </div>
  </form>
</div>

<div class='authent'>
  <div class="loader" style="height: 44px;width: 44px;margin-left: 28px;">
    <div class="loader-inner ball-clip-rotate-multiple">
      <div></div>
      <div></div>
      <div></div>
    </div>
  </div>
  <p>认证中...</p>
</div>
<div class="OverWindows"></div>
<script src="${contextPath}/static/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="${contextPath}/static/js/jquery-ui.min.js"></script>
<script type="text/javascript" src='${contextPath}/static/js/stopExecutionOnTimeout.js?t=1'></script>
<script src="${contextPath}/static/js/Particleground.js" type="text/javascript"></script>
<script src="${contextPath}/static/js/Treatment.js" type="text/javascript"></script>
<script src="${contextPath}/static/js/jquery.mockjax.js" type="text/javascript"></script>
<script type="text/javascript">
    var canGetCookie = 0;//是否支持存储Cookie 0 不支持 1 支持
    var ajaxmockjax = 1;//是否启用虚拟Ajax的请求响 0 不启用  1 启用
    //默认账号密码

    //var truelogin = "kbcxy";
    //var truepwd = "mcwjs";
    if('${msg}'){
        alert('${msg}');
    }
    var CodeVal = 0;
    Code();
    function Code() {
        if(canGetCookie == 1){
            createCode("AdminCode");
            var AdminCode = getCookieValue("AdminCode");

            showCheck(AdminCode);
        }else{
            showCheck(createCode(""));
        }
    }
    function showCheck(a) {
        CodeVal = a;
        var c = document.getElementById("myCanvas");
        var ctx = c.getContext("2d");
        ctx.clearRect(0, 0, 1000, 1000);
        ctx.font = "80px 'Hiragino Sans GB'";
        ctx.fillStyle = "#E8DFE8";
        ctx.fillText(a, 0, 100);
    }
    $(document).keypress(function (e) {
        // 回车键事件
        if (e.which == 13) {
            $('input[type="button"]').click();
        }
    });
    //粒子背景特效
    $('body').particleground({
        dotColor: '#E8DFE8',
        lineColor: '#133b88'
    });
    //    $('input[name="pwd"]').focus(function () {
    //        $(this).attr('type', 'password');
    //    });
    //    $('input[type="text"]').focus(function () {
    //        $(this).prev().animate({ 'opacity': '1' }, 200);
    //    });
    $('input[type="text"],input[type="password"]').blur(function () {
        $(this).prev().animate({ 'opacity': '.5' }, 200);
    });
    $('input[name="login"],input[name="pwd"]').keyup(function () {
        var Len = $(this).val().length;
        if (!$(this).val() == '' && Len >= 5) {
            $(this).next().animate({
                'opacity': '1',
                'right': '30'
            }, 200);
        } else {
            $(this).next().animate({
                'opacity': '0',
                'right': '20'
            }, 200);
        }
    });
    var fullscreen = function () {
        elem = document.body;
        if (elem.webkitRequestFullScreen) {
            elem.webkitRequestFullScreen();
        } else if (elem.mozRequestFullScreen) {
            elem.mozRequestFullScreen();
        } else if (elem.requestFullScreen) {
            elem.requestFullscreen();
        } else {
            //浏览器不支持全屏API或已被禁用
        }
    }
    if(ajaxmockjax == 1){
//        $.mockjax({
//            url: 'Ajax/Login',
//            status: 200,
//            responseTime: 50,
//            responseText: {"Status":"ok","Text":"登陆成功<br /><br />欢迎回来"}
//        });
        $.mockjax({
            url: 'Ajax/LoginFalse',
            status: 200,
            responseTime: 50,
            responseText: {"Status":"Erro","Erro":"账号名或密码或验证码有误"}
        });
    }
    function validBefore(){
        var username = $("#username").val();
        var password = $("#password").val();
        var code = $("#code").val();
        if(!username){
            alert("请输入用户名");
            return false;
        }
        if(!password){
            alert("请输入密码");
            return false;
        }
        if(!code){
            alert("请输入验证码");
            return false;
        }
        if(code.toUpperCase()!=CodeVal.toUpperCase()){
            alert("验证码不正确");
            return false;
        }
        $("#form1").submit();
    }
</script>
</body>
</html>
