<%@ page isELIgnored="false" language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>在线拍卖</title>
	<link href="${pageContext.request.contextPath }/css/common.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/jquery/jquery-1.11.1.js"></script>
	<script type="text/javascript">
  		function abc(id){
  			var result=confirm("你真的确认要删除吗？请确认");
	   		if(result){
	   		 window.location="${pageContext.request.contextPath}/delete.do?id="+id;
			};
	   	};
	   	
	   function dele(id){
		   var result=confirm("你真的确认要修改吗？请确认");
		   if(result){
			   location="${pageContext.request.contextPath}/selectOne.do?id="+id;
			};
		};
		
		   function dele2(id){
		   var result=confirm("你真的确认要竞拍吗？请确认");
		   if(result){
			   location="${pageContext.request.contextPath}/select.do?id="+id;
			};
		};
    </script>
</head>

<body>
<div class="wrap">
<!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="" title="注销">注销</a></div>
  </div>
  <div class="forms">
  
  <form action="#" method="post">
    <label for="name">名称</label>
    <input name="auction_name" value="${auc.auction_name}" type="text" class="nwinput" id="name"/>
    <label for="names">描述</label>
    <input name="auction_desc" value="${auc.auction_desc}" type="text" id="names" class="nwinput"/>
    <label for="time">开始时间</label>
    <input name="auction_start_time" value="${auc.auction_start_time}" type="text" id="time" class="nwinput"/>
    <label for="end-time">结束时间</label>
    <input name="auction_end_time" value="${auc.auction_end_time}" type="text" id="end-time" class="nwinput" />
    <label for="price">起拍价</label>
    <input name="auction_start_price" value="${auc.auction_start_price}" type="text" id="price" class="nwinput" />
    <input type="submit"  value="查询" class="spbg buttombg f14  sale-buttom"/>
   </form>
   
 <%--   	<c:if test="${requestScope.user_is_admin}==1"> --%>
    <a href="${pageContext.request.contextPath }/private/add.jsp">
    <input type="button"  value="发布" class="spbg buttombg f14  sale-buttom buttomb"/>
	</a>
	<%-- </c:if> --%>
  </div>
  <div class="items">
      <ul class="rows even strong">
        <li>名称</li>
        <li class="list-wd">描述</li>
        <li>开始时间</li>
        <li>结束时间</li>
        <li>起拍价</li>
        <li class="borderno">操作</li>
      </ul>
      
    <c:forEach items="${requestScope.list}" var="a">
      <ul class="rows">
        <li><a href="国书" title="">${a.auction_name}</a></li>
        <li class="list-wd">${a.auction_desc}</li>
        <li>
        <fmt:formatDate value="${a.auction_start_time}" pattern="yyyy-MM-dd HH:mm:ss" />
		</li>
        <li>
        <!-- <s:date name="auction_end_time" format="yyyy-MM-dd hh:mm:ss" /> -->
        <fmt:formatDate value="${a.auction_end_time}" pattern="yyyy-MM-dd HH:mm:ss" />
        </li>
        <li>${a.auction_start_price}</li>
        <li class="borderno red">
        <%--    	<c:if test="${requestScope.user.user_is_admin}==0"> --%>
      		<a href="javascript:void(0)" title="竞拍" onclick="dele2(${a.auction_id})">竞拍</a>
      	<%--   </c:if>	 --%>
        <%--  	<c:if test="${requestScope.user.user_is_admin}==1"> --%>
		   <a href="javascript:void(0)" title="修改" onclick="dele(${a.auction_id})">修改</a>|
           <a href="javascript:void(0)" title="删除" onclick="abc(${a.auction_id})">删除</a>
      <%--     </c:if> --%>
        </li>
      </ul>
      </c:forEach>
<%--      </c:forEach> --%>
      
   <%--    <div class="page">
        <a href="#" title="">首页</a>
        <a href="#" title="">上一页</a>
        <span class="red">前5页</span>
        <a href="#" title="">1</a> 
        <a href="#" title="">2</a> 
        <a href="#" title="">3</a> 
        <a href="#" title="">4</a>
        <a href="#" title="">5</a> 
        <a href="#" title="">下一页</a>
        <a href="#" title="">尾页</a> 
      </div> --%>
  </div>
<!-- main end-->
</div>
</body>
</html>
