<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Sign up</title>

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link type="text/css" rel="stylesheet" href="css/normalize.css">
  <link type="text/css" rel="stylesheet" href="css/common.css">
  <link type="text/css" rel="stylesheet" href="css/sign.css">
</head>
<body>
  <div class="sign">
    <a href="index.html" class="title"><h1>The Library</h1></a>
    
    <form id="signUp_1" action="loginRegistAction1" method="post">
      <input type="email"  name="user.email" class="form-control form-focu " placeholder="Please input your email" autocomplete="off" autofocus="" required="" />
      <button type="submit" class="btn">Start now<i class="icon material-icons">trending_flat</i></button>
      <a href="login.html" class="login_action">Already have an account ?</a>
    </form>
    
    <form id="signUp_2" action="loginRegistAction2" method="post">
      <h4 class="form_title">Sign Up</h4>
      <input type="email" name="user.email"   class="form-control form-disable" value="1187597142@qq.com" readonly=""/>
      <input type="text"   name="user.username" class="form-control form-focus" placeholder="your username" autocomplete="off" required="" />
      <input type="password" name="user.password" class="form-control" placeholder="Password ( at least six )" autocomplete="off" required="" />
      <div class="form-error"></div>
      <button type="submit" class="btn">Create<i class="icon material-icons">trending_flat</i></button>
      <div class="horizontal_line"></div>
      <button type="button" class="btn_extra">Other accounts<i class="icon material-icons">trending_flat</i></button>
    </form>
    
    <form id="signUp_3" action="loginRegistAction3" method="post">
      <h4 class="form_title">exists</h4>
      <input type="email"  name="user.name" class="form-control form-autofill" value="1187597142@qq.com" placeholder="Email / Username" required="" />
      <div class="pwd">
        <input type="password"  name="user.password" class="form-control form-focus form-autofill" value="123456" placeholder="Password" required="" />
        <a href="forget.html" class="forget_pwd">Forget ?</a>
      </div>
      <div class="form-error"></div>
      <button type="submit" class="btn">Log in<i class="icon material-icons">trending_flat</i></button>
      <div class="horizontal_line"></div>
      <button type="button" class="btn_extra">Other accounts<i class="icon material-icons">trending_flat</i></button>
    </form>
  </div>

  <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
  <script type="text/javascript" src="js/common.js"></script>
  <script type="text/javascript" src="js/sign.js"></script>
</body>
</html>
