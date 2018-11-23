<%@ page isELIgnored="false" language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>修改商品</title>
	<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/jquery/jquery-1.11.1.js"></script>
	<script type="text/javascript">
		$(function(){
			// 文件上传(文件域)的改变事件
			$(':file').change(function(event) {
				//  HTML5 js 对象的获取
					var files = event.target.files, file;  
				if(files && files.length > 0){
						// 获取目前上传的文件
				 		file = files[0];
				 		// 文件的限定类型什么的道理是一样的
				 		if(file.size > 1024 * 1024 * 2) {
		   			 	alert('图片大小不能超过 2MB!');
		    			return false;
						}
		 				// file对象生成可用的图片
		 				var URL = window.URL || window.webkitURL;
		 				// 通过 file 生成目标 url
		 				var imgURL = URL.createObjectURL(file);
		 				// 用这个 URL 产生一个 <img> 将其显示出来
		 				$("img").attr('src', imgURL);
				}
			});
		});

		function checkName() {
			var name = $("#names").val();
			if (name.length < 2) {
				$("#name").html("不能为空").css("color", "red");
				return false;
			} else {
				$("#name").html(" ");
				return true;
			}
		}

		function checkqipai() {
			var name1 = $("#start_prices").val();
			if (name1.length < 2) {
				$("#start_price").html("不能少于100").css("color", "red");
				return false;
			} else {
				$("#start_price").html(" ");
				return true;
			}
		}

		function checkdijia() {
			var name2 = $("#end_prices").val();
			if (name2.length < 2) {
				$("#end_price").html("不能少于100").css("color", "red");
				return false;
			} else {
				$("#end_price").html(" ");
				return true;
			}
		}
	</script>
	
</head>

<body>
<div class="wrap">
  <!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="#" title="注销">注销</a></div>
  </div>
      <div class="login logns produce">
        <h1 class="blues">拍卖品信息</h1>
        <form action="${pageContext.request.contextPath}/update.do" method="post" enctype="multipart/form-data" >
          <dl>
            <dd >
              <!--隐藏域id  -->
              <input type="hidden" name="auction_id" value="${requestScope.auctions.auction_id}"/>
              <label>名称：</label>
              <input name="auction_name" type="text" class="inputh lf" value="${requestScope.auctions.auction_name}" id="names"/>
              <div class="xzkbg spbg lf" id="name"></div>
            </dd>
            <dd>
              <label>起拍价：</label>
              <input name="auction_start_price" type="text" class="inputh lf" value="${requestScope.auctions.auction_start_price}" id="start_prices"/>
              <div class="lf red laba" id="start_price">必须为数字</div>
            </dd>
            <dd>
              <label>底价：</label>
              <input name="auction_upset" type="text" class="inputh lf" value="${requestScope.auctions.auction_upset}" id="end_prices"/>
              <div class="lf red laba" id="end_price">必须为数字</div>
            </dd>
            <dd>
              <label>开始时间：</label>
              <input name="auction_start_time" type="text" class="inputh lf" value=" <fmt:formatDate value="${requestScope.auctions.auction_start_time}" pattern="yyyy-MM-dd HH:mm:ss" />" />
              <div class="lf red laba">格式：2011-05-05 12:30:00</div>
            </dd>
            <dd>
              <label>结束时间：</label>
              <input name="auction_end_time" type="text" class="inputh lf" value="<fmt:formatDate value="${requestScope.auctions.auction_end_time}" pattern="yyyy-MM-dd HH:mm:ss" />" />
              
              <div class="lf red laba">格式：2011-05-05 12:30:00</div>
            </dd>
            <dd class="dds">
              <label>描述：</label>
              <textarea name="auction_desc" cols="" rows="" class="textarea">${requestScope.auctions.auction_desc}</textarea>
            </dd>
            <dd>
              <label>修改图片:</label>
              <div class="lf salebd">
                <!--图片的默认值 隐藏域  -->
                <input  type="hidden" name="auction_pic" value="${requestScope.auctions.auction_pic}"/>
              	<a href="#"><img src="${pageContext.request.contextPath}/images/${requestScope.auctions.auction_pic}" width="100" height="100" /></a>
              </div>
               <input name="images" type="file" class="marg10" />
            </dd>
            
            <dd class="hegas">
                <input type="submit" value="保 存" class="spbg buttombg buttombgs f14 lf buttomb" />
               <a href="/paimaimvc/selectAll.do">
                <input type="button" value="取 消" class="spbg buttombg buttombgs f14 lf buttomb" />
               </a>
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
