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
	<title>用户注册</title>
	<link href="css/common.css" rel="stylesheet" type="text/css" />
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="/paimaimvc/jquery/jquery-1.11.1.js"></script>
	<script type="text/javascript">
	
		
		function sub(){
			var name=checkName();
			var pwd=checkPwd();
			var card=checkCard();
			var tel=checkTel();
			var add=checkAdd();
			var post=checkPost();
			if(name&&pwd&&card&&tel&&add&&post){
				return true;
			}
			return false;
		}
		function checkName(){
			var name=$("#nameid").val();
			if(name.length<1){
				$("#idname").html("用户名要求不低于1个字符");
				return false;
			}else{
				$("#idname").html("");
				return true;
			}
		}
		function checkPwd(){
			var pwd=$("#pwdid").val();
			if(pwd.length<6){
				$("#idpwd").html("密码要求不低于6个字符");
				return false;
			}else{
				$("#idpwd").html("");
				return true;
			}
		}
		
		function checkCard(){
			var card=$("#cardid").val();
			if(card.length==0||card==""||card==null){
				$("#idcard").html("身份证号必填");
				return false;
			}else{
				$("#idcard").html("");
				return true;
			}
		}
		
		function checkTel(){
			var tel=$("#telid").val();
			if(tel.length==0||tel==""||tel==null){
				$("#idtel").html("电话号码必填");
				return false;
			}else{
				$("#idtel").html("");
				return true;
			}
		}
		
		function checkAdd(){
			var add=$("#addid").val();
			if(add.length==0||add==""||add==null){
				$("#idadd").html("地址必填");
				return false;
			}else{
				$("#idadd").html("");
				return true;
			}
		}
		
		function checkPost(){
			var post=$("#postid").val();
			if(post.length==0||post==""||post==null){
				$("#idpost").html("邮箱必填");
				return false;
			}else{
				$("#idpost").html("");
				return true;
			}
		}
	
	</script>
</head>

<body>
<div class="wrap">
  <!-- main begin-->
      <div class="zclf login logns">
        <h1  class="blue">用户注册</h1>
        <form action="register.do" onsubmit="return sub()" method="post">
          <dl>
            <dd>
              <label> <small>*</small>用户名</label>
              <input name="user_name" onblur="checkName()" type="text" id="nameid" class="inputh lf" />
              <div id="idname" class="lf red laba"></div>
            </dd>
            <dd>
              <label><small>*</small>密码</label>
              <input name="user_password"  onblur="checkPwd()" id="pwdid" type="text" class="inputh lf" />
              <div id="idpwd" class="lf red laba"></div>
            </dd>
            <dd>
              <label><small>*</small>身份证号</label>
              <input name="user_card_no" onblur="checkCard()" id="cardid" type="text" class="inputh lf" />
              <div id="idcard" class="lf red laba"></div>
            </dd>
            <dd>
              <label><small>*</small>电话</label>
              <input name="user_tel" onblur="checkTel()" id="telid" type="text" class="inputh lf" />
              <div id="idtel" class="lf red laba"></div>
            </dd>
            <dd>
              <label><small>*</small>住址</label>
              <input name="user_address" onblur="checkAdd()" id="addid" type="text" class="inputh lf" />
          	  <div id="idadd" class="lf red laba"></div>	
            </dd>
            <dd>
              <label><small>*</small>邮政编码</label>
              <input name="user_post_number" onblur="checkPost()" id="postid" type="text" class="inputh lf" />
         	  <div id="idpost" class="lf red laba"></div>	
            </dd>
          <!--   <dd class="hegas">
              <label> <small>*</small>验证码</label>
              <input name="yzm" type="text" class="inputh inputs lf" />
               <span class="wordp lf">
               	<img src="/paimai/image.servlet" id="yzmid" width="96" height="27" />
               </span>
               <span class="blues lf">
              	 <a href="javascript:void(0)" onclick="yzm()">看不清</a>
               </span>
            </dd> -->
            <dd class="hegas">
              <label>&nbsp;</label>
               <input name=""  type="checkbox" id="rem_u" />
              <label for="rem_u" class="labels">我同意<span class="blues"><服务条款></span></label>
            </dd>
            <dd class="hegas">
              <label>&nbsp;</label>
              <input type="submit" value="立即注册" class="spbg buttombg buttombgs f14 lf" />
            </dd>
          </dl>
        </form>  
        
    </div>
<!-- main end-->
<!-- footer begin-->

</div>
 <!--footer end-->
 
</div>
</body>
</html>
