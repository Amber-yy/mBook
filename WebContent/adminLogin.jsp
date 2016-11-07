<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>admin Login</title>

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link type="text/css" rel="stylesheet" href="css/normalize.css">
  <link type="text/css" rel="stylesheet" href="css/common.css">
  <link type="text/css" rel="stylesheet" href="css/adminLogin.css">
</head>
<body onload="reurl()">
  <h1>The Library admin system</h1>
  <form action="login" method="post">
    <h2><i class="material-icons icon_input">input</i> Login</h2>
    <button type="submit" class="btn btn-med-up hide-on-small-and-down"><i class="material-icons">vpn_key</i></button>
    <input type="text" class="user" name="user.email" placeholder="Username" autofocus="" required="" />
    <i class="material-icons icon_user">perm_identity</i>
    <input type="password" class="pwd" name="user.password" placeholder="Password" required="" />
    <i class="material-icons icon_pwd">lock_outline</i>
    <button type="submit" class="btn btn-small-down hide-on-med-and-up"><i class="material-icons">vpn_key</i></button>
  </form>
  <footer>
    © 2016-2017 FengShangWuQi, All rights reserved.
  </footer>

  <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
  <script type="text/javascript" src="js/common.js"></script>
  <script type="text/javascript" src="js/adminLogin.js"></script>
</body>
</html>
