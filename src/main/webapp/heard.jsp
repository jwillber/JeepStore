<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/heard.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/heard.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery-3.3.1%20-%20xz.js" type="text/javascript"></script>
		
		<title></title>
	</head>
	<body>
		<!-- 头部 ==================================================================================-->
		<div style="width: 100%; background-color: #000000; position: fixed; height:93px; z-index: 1;" >
			<div id="head">
				<div id="head-top">
					<!-- 占空  -->
					<ul id="headul">
						<li id="ul1">
							<a href="#">总部客服</a>
						</li>
						<li id="ul2" style="width: 120px;">
							
							<c:if test="${uid==null}">
								<a href="javascript:void(0)"  onClick="falselogin()">我的购物车</a>
								<div id="shopcar">
									0
								</div>
							</c:if>
							<c:if test="${uid!=null}">
								<a href="javascript:void(0)"  onClick="trueelogin('${uid}')">我的购物车</a>
							</c:if>
							<div id="shopcar">
									${goucarcount }
							</div>
						</li>
						<li id="ul3">
							<c:if test="${uid==null}">
								<a href="${pageContext.request.contextPath}/register.jsp">注册/登录</a>
							</c:if>
							<c:if test="${uid!=null}">
								<a href="${pageContext.request.contextPath}/lookdingdanServlet">我的账户</a>&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/user/outlogin.do" style="color:#ffb400" >退出登录</a>
							</c:if>
						</li>
					</ul>
				</div>
				<div id="head-b">
					<div id="head-b2">
						<img src="${pageContext.request.contextPath}/image/jeepstore/nav_logo.png"  style="float:left;" onClick="goindex()">
						<ul style="margin-bottom: 0px;">
							<li style="" class="bgcolor" onclick="dhbgcolor(0)">
								首页
							</li>
							<li class="bgcolor" onclick="dhbgcolor(1)">
								我要定车
							</li>
							<li class="bgcolor" onclick="dhbgcolor(2)">
								Jeep精品
							</li>
							<li class="bgcolor" onclick="dhbgcolor(3)">
								咨询经销商
							</li>
						</ul>
						<img src="${pageContext.request.contextPath }/image/jeepstore/wx.png" style="float: right; margin-top: 20px;cursor:pointer;" onmouseover="onweixin()" onmouseout="outweixin()" >
						<div id="weixin-onms">
							<span style="position: relative; top: -30px;">
									即刻扫码关注Jeep商城微信<br>
									更多商城活动信息即时送达
							</span>
							<img src="${pageContext.request.contextPath }/image/jeepstore/unpayed_erv.png" style="width: 61%; height: 50%;" >
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript">
		
/* 		if(id!=0)
		{
			id=0;
		} */
		var loc = location.href;
		var n1 = loc.length;//地址的总长度
		var n2 = loc.indexOf("=");//取得=号的位置
		var id = decodeURI(loc.substr(n2+1, n1-n2));//从=号后面的内容
		/* alert(id); */
		$(function (){
		
 			if(id.indexOf("=")==-1){
 				
/* 				if(${id!=null}){
 					id=${id};

 				}  */
			}
			$(".bgcolor").css("backgroundColor","black");
			$(".bgcolor").css("color","white");
			$(".bgcolor").eq(id).css("backgroundColor","#ffb400");
			$(".bgcolor").eq(id).css("color","black");
		})
			function dhbgcolor(id)
	{
/* 		$(".bgcolor").css("backgroundColor","black");
		$(".bgcolor").css("color","white");
		$(".bgcolor").eq(id).css("backgroundColor","#ffb400");
		$(".bgcolor").eq(id).css("color","black"); */
		if(id==0)
		{
			location.href="${pageContext.request.contextPath}/jeepstore.jsp?id="+id;
		}
		if(id==1)
		{
			location.href="${pageContext.request.contextPath}/showcar/allCar.do";
		}
		if(id==2)
		{
			location.href="${pageContext.request.contextPath}/jeepstore.jsp?id="+id;
		}
		if(id==3)
		{
			location.href="${pageContext.request.contextPath}/jeepstore.jsp?id="+id;
		}
	}
		
		function goindex()
		{
			location.href="${pageContext.request.contextPath}/index.html";
		}
		
		function falselogin()
		{
			location.href="${pageContext.request.contextPath}/login.jsp";
		}
		
		function trueelogin(id)
		{
			  location.href="${pageContext.request.contextPath}/user/goGouCar.do?uid="+id;
		}
		
	</script>
</html>