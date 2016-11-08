<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@ taglib prefix="s" uri="/struts-tags" %>
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
	 
      <s:if test="#session.jsMessage==1">
     <%session.setAttribute("jsMessage",1); %>
	     <script type="text/javascript">
		     window.onload=function(){
			   $("#signUp_1").formChange();
		     }
	     </script>
	  </s:if>
	  
 <s:if test="#session.jsMessage==2">
	  		<s:if test="#session.errorMessage">
	  		<%session.setAttribute("jsMessage",1); %>
	  		<%session.setAttribute("errorMessage",false); %>
			   	 <script type="text/javascript">
				 		 window.onload=function(){
				 		 var div1 = document.getElementById('form-error'); 
				 		 $("#signUp_2").formChange();
				    	 div1.style.display="inline-block"; 
				  		 }
			     </script>
	       </s:if> 
	       <s:else>
		     <script type="text/javascript">
			     window.onload=function(){
				   $("#signUp_2").formChange();
			     }
		     </script>
	     </s:else>
</s:if>
	  
	  <s:if test="#session.jsMessage==3">
	  <%session.setAttribute("jsMessage",1); %>
	     <script type="text/javascript">
		     window.onload=function(){
			   $("#signUp_3").formChange();
		     }
	     </script>
	 </s:if>
	 
	    
  <div class="sign">
    <a href="index.jsp" class="title"><h1>The Library</h1></a>

	
		
	   
    <!-- 注册信息检查-->
    <form id="signUp_1" action="signUp1" method="post">
     <input type="email"  name="user.email" class="form-control form-focu " placeholder="Please input your email" autocomplete="off" autofocus="" required="" />
      <button type="submit" class="btn">Start now<i class="icon material-icons">trending_flat</i></button>
      <a href="login.jsp" class="login_action">Already have an account ?</a>
    </form>
    
   
   
    <!-- 详细注册 -->
    <form id="signUp_2" action="signUp2" method="post">
     <s:property value="#session.errMessage"/>
      <h4 class="form_title">Sign Up</h4>
      <input type="email" name="user.email"   class="form-control  form-disable" value="<%=session.getAttribute("email") %>" readonly=""/>
      <input type="text"   name="user.userName" class="form-control form-focus" placeholder="your username" autocomplete="off" required="" />
      <input type="password" name="user.password" class="form-control" placeholder="Password ( at least six )" autocomplete="off" required="" />
      <input type="hidden" name="user.isAdmin"/>
      <div  id="form-error" class="form-error"><s:fielderror fieldName="message"/></div>
      <button type="submit" class="btn">Create<i class="icon material-icons">trending_flat</i></button>
      <div class="horizontal_line"></div>
      <button type="button" class="btn_extra">Other accounts<i class="icon material-icons">trending_flat</i></button>
    </form>
   
    <!-- 登录 -->
    <form id="signUp_3" action="login" method="post">
      <h4 class="form_title">exists</h4>
      <input type="email"  name="user.email" class="form-control form-autofill" value="<%=session.getAttribute("email")%>" placeholder="Email / Username" required="" />
      <div class="pwd">
        <input type="password"  name="user.password" class="form-control form-focus form-autofill" value="<%=session.getAttribute("password") %>" placeholder="Password" required="" />
        
       <a href="forget.jsp" class="forget_pwd">Forget ?</a>
      </div>
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
