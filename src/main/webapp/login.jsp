<%@ page isELIgnored="false" language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>用户登录</title>
	<link href="css/common.css" rel="stylesheet" type="text/css" />
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="jquery/jquery-1.11.1.js"></script>
	<script type="text/javascript">
		function yzm(){
			$("#yzmid").prop("src","getKaptcha.do?a="+new Date().getTime());
		}
		
		
		function abc(){
			if($("#names").val().length<1){
				$("#names").next().html("账户名格式不对").css("color","red");
				}
		}
		
		function checkPwd(){
				var pwd=$("#passwords").val();
				if(pwd.length<5||pwd.length>20){
					$("#spanpwd").html("密码长度错误").css("color","red");
					return false;
				}else{
					$("#spanpwd").html("");
					return true;
				}
			}
		
	</script>
</head>

<body>
<div class="wrap">
<!-- main begin-->
 <div class="main">
   <div class="sidebar">
     <p><img src="images/img1.jpg" width="443" height="314" alt="" /></p>
   </div>
   <div class="sidebarg">
   
    <form action="login.do" method="post"  >
   
    <div class="login">
      <dl>
        <dt class="blues">用户登陆</dt>
        <dd>
       	 	<label>用户名:</label>
       	 	<input name="name" type="text" class="inputh" id="names" onblur="abc()"/><span></span>
        </dd>
        <dd>
	        <label>密 码:</label>
	        <input name="password" type="text" class="inputh" id="passwords" onblur="checkPwd()"/>
	        <span id="spanpwd"></span>
        </dd>
        <dd>
           <label class="lf" for="passwords">验证码:</label>
           <input name="yzm" type="text" class="inputh inputs lf" id="code"/>
           <span class="wordp lf">
           	<img src="getKaptcha.do"id="yzmid" width="95" height="35"/>
           </span>
           <span class="blues lf">
           	<a href="javascript:yzm()" >看不清</a>
           </span>
        </dd>
        <dd>
           <input name=""  type="checkbox" id="rem_u"  />
           <span for="rem_u">下次自动登录</span>
        </dd>
        <dd class="buttom">
           <input type="submit" value="登 录" class="spbg buttombg f14 lf" />
           <a href="register.jsp">
           	<input type="button" value="注 册" class="spbg buttombg f14 lf" />
           </a>
           <span class="blues  lf"><a href="" title="">忘记密码?</a></span>
           <div class="cl"></div>
        </dd>
      </dl>
    </div>
    </form>
   </div>
  <div class="cl"></div>
 </div>
<!-- main end-->
 
<!-- footer begin-->
</div>
 <!--footer end-->
</body>
</html>
