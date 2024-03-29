<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/test/css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>欢迎登录vip消费管理系统</title>
</head>
<!-- 保证当前窗口最前 -->
<script>
    if(window.top!==window){
    	window.top.location.href=window.location.href;
    }
</script>
<body>
<section class="material-half-bg">
      <div class="cover"></div>
    </section>
    <section class="login-content">
      <div class="logo">
        <h1>vipCMS</h1>
      </div>
      <!-- 返回出信息 -->
	<strong>${message}</strong>
      <div class="login-box">
        <form class="login-form" action="login.do" method="post">
          <h3 class="login-head">
          <i class="fa fa-lg fa-fw fa-user"></i>登录</h3>
          <div class="form-group">
            <label class="control-label" >用户名</label>
            <input class="form-control" name="account" type="text" placeholder="account" autofocus>
          </div>
          <div class="form-group">
            <label class="control-label" >密  码</label>
            <input class="form-control" name="password" type="password" placeholder="Password">
          </div>
          <div class="form-group">
            <div class="utility">
              <div class="animated-checkbox">
                <label>
                  <input type="checkbox"><span class="label-text">保持登录</span>
                </label>
              </div>
              <p class="semibold-text mb-2"><a href="#" data-toggle="flip">忘记密码 ?</a></p>
            </div>
          </div>
          <div class="form-group btn-container">
            <button class="btn btn-primary btn-block" type="submit">
            <i class="fa fa-sign-in fa-lg fa-fw"></i>登录</button>
          </div>
        </form>
        <form class="forget-form" action="index.html">
          <h3 class="login-head">
          <i class="fa fa-lg fa-fw fa-lock"></i>忘记密码 ?</h3>
          <div class="form-group">
            <label class="control-label">电子邮箱</label>
            <input class="form-control" type="text" placeholder="Email">
          </div>
          <div class="form-group btn-container">
            <button class="btn btn-primary btn-block">
            <i class="fa fa-unlock fa-lg fa-fw"></i>重置</button>
          </div>
          <div class="form-group mt-3">
            <p class="semibold-text mb-0">
            <a href="#" data-toggle="flip">
            <i class="fa fa-angle-left fa-fw"></i> 返回登录</a></p>
          </div>
        </form>
      </div>
    </section>
    <!-- 申请工作的必要的JavaScript代码-->
    <script src="<%=path%>/static/test/js/jquery-3.2.1.min.js"></script>
    <script src="<%=path%>/static/test/js/popper.min.js"></script>
    <script src="<%=path%>/static/test/js/bootstrap.min.js"></script>
    <script src="<%=path%>/static/test/js/main.js"></script>
    <!-- 在顶部显示页面加载的JavaScript插件-->
    <script src="<%=path%>/static/test/js/plugins/pace.min.js"></script>
    <script type="text/javascript">
      // 登录页面翻盖控制
      $('.login-content [data-toggle="flip"]').click(function() {
      	$('.login-box').toggleClass('flipped');
      	return false;
      });
    </script>
    <!-- 提示过了以后删除提示语句 -->
	 <% session.removeAttribute("message");%>
</body>
</html>