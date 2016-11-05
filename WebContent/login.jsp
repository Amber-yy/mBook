<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Login</title>

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link type="text/css" rel="stylesheet" href="css/normalize.css">
  <link type="text/css" rel="stylesheet" href="css/common.css">
  <link type="text/css" rel="stylesheet" href="css/sign.css">
</head>
<body>
  <div class="sign">
    <a href="index.jsp" class="title"><h1>The Library</h1></a>
    
    <s:form id="logIn" action="login" method="post">
     <input type="email"  name="user.email" class="form-control" placeholder="Email / Username" autofocus="" required=""/>
       
      <div class="pwd">
        <input  type="password" name="user.password" class="form-control" placeholder="Password" required="" />
        <a href="forget.jsp" class="forget_pwd">Forget ?</a>
      </div>
      <div class="form-error"></div>
      <button type="submit" class="btn">Log in<i class="icon material-icons">trending_flat</i></button>
      <a href="signUp.jsp" class="login_action">New to The Library ?</a>
    </s:form>
  </div>

  <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
  <script type="text/javascript" src="js/sign.js"></script>
</body>
</html>
