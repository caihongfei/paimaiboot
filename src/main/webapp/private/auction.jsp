<%@ page isELIgnored="false" language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>在线竞拍</title>
	<link href="${pageContext.request.contextPath }/css/common.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/jquery/jquery-1.11.1.js"></script>
	<script type="text/javascript">
		
		function checkForm(){
			var aucprice=$("#auctionPrice").html();
			var price=$("#sale").val();//获取到输入的竞拍价钱
			if(parseFloat(aucprice)>=parseFloat(price)){
				alert("不能低于最高竞拍价");
				return false;
			}else{
				return true;
			};
		};
	</script>
</head>

<body>
<div class="wrap">
<!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="#>" title="注销">注销</a></div>
  </div>
  <div class="items sg-font lf">
      <ul class="rows">
        <li>名称:</li>
        <li class="borderno">${auction.auction_name}</li>
      </ul>
      <ul class="rows">
        <li>描述:</li>
        <li class="borderno">${auction.auction_desc}</li>
      </ul>
      <ul class="rows">
        <li>开始时间:</li>
        <li class="borderno"> <fmt:formatDate value="${auction.auction_start_time}" pattern="yyyy-MM-dd HH:mm:ss" /></li>
      </ul>
      <ul class="rows">
        <li>结束时间:</li>
        <li class="borderno"> <fmt:formatDate value="${auction.auction_end_time}" pattern="yyyy-MM-dd HH:mm:ss" /></li>
      </ul>
      <ul class="rows border-no">
        <li>起拍价:</li>
        <li class="borderno">${auction.auction_start_price}</li>
      </ul>
  </div>
  
  <!-- 图片显示 -->
  <div class="rg borders"><img src="${pageContext.request.contextPath}/images/${auction.auction_pic}" width="270" height="170" /></div>
  <div class="cl"></div>
  
  
  <!-- 竞拍  -->
  <div class="top10 salebd" >
    <form action="add2.do?id=${auction.auction_id}" method="post" onsubmit="return checkForm()">
       <p>
       <input type="hidden" name="user_id" value="${sessionScope.user.user_id}" />
       <input type="hidden"  name="auction_id" value="${auction.auction_id}" />
       <label for="sale">出价:</label>
       <input name="auction_price" type="text" class="inputwd" id="sale" value=""/>
       <input type="submit" value="竞 拍" class="spbg buttombg f14  sale-buttom" />
       </p>
       <p class="f14 red" id="auctionId"></p>
     </form>  
  </div>
  
  
  <div class="top10">
    <%-- <a href="<s:url action="#" namespace="/private" />?id=<s:property value="auction.auction_id" />" > --%>
   	 	<input type="button" value="刷 新" class="spbg buttombg f14" />
    </a>
  	<a href="${pageContext.request.contextPath }/selectAll.do">
  		<input type="button" value="返回列表" class="spbg buttombg f14" />
  	</a>
  </div>
  
  <div class="offer">
    <h3>出价记录</h3>
    <div class="items sg-font">
      <ul class="rows even strong">
        <li>竞拍时间</li>
        <li>竞拍价格</li>
        <li class="borderno">竞拍人</li>
      </ul>
     <c:forEach items="${recordList}" var="record">
      <ul class="rows">
        <li><fmt:formatDate value="${record.auction_time}" pattern="yyyy-MM-dd HH:mm:ss" /></li>
        <li id="auctionPrice">${record.auction_price}</li>
        <li class="borderno">${record.user.user_name}</li>
      </ul>
     </c:forEach>
      
  </div>
  </div>
<!-- main end-->
</div>
</body>
</html>
