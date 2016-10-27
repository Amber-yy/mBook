<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>The Library</title>

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link type="text/css" rel="stylesheet" href="css/normalize.css">
  <link type="text/css" rel="stylesheet" href="css/common.css">
  <link type="text/css" rel="stylesheet" href="css/index.css">
</head>
<body onload="reurl()">
  <header id="head">
    <h2 class="logo"><a href="#">The Library</a></h2>
    <div class="sign right">
      <a href="login.jsp" class="login hide-on-med-and-down">Login</a>
      <a href="signUp.jsp" class="logup hide-on-med-and-down">Sign up</a>
      <a href="#" class="menu hide-on-large-only"><i class="material-icons">reorder</i></a>
    </div>
    <nav class="menu_nav">
      <h2 class="nav_title">The Library</h2>
      <ul>
        <li><a href="login.jsp">Login</a></li>
        <li><a href="signUp.jsp">Sign up</a></li>
      </ul>
    </nav>
    <div class="head_body">
      <h1 class="head_title">We are what we read</h1>
      <form action="#" method="">
        <input type="text" class="big_search" placeholder="The book you like...">
        <button type="submit" class="big_search_button"><i class="material-icons">search</i></button>
      </form>
    </div>
  </header>
  <div class="overlay_full"></div>
  <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
  <script type="text/javascript" src="js/common.js"></script>
  <script type="text/javascript" src="js/index.js"></script>
</body>
</html>
