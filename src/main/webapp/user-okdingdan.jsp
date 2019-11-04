<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="js/bootstrap.css"/>
		<script src="js/bootstrap.js" type="text/javascript">
			
		</script>
		<link href="image/index/timg.jpg" rel="SHORTCUT ICON"  /> <!-- title图片 -->
		<link rel="stylesheet" type="text/css" href="css/user.css"/>
		<script type="text/javascript" src="js/user.js">
		</script>
		<script src="js/jquery-3.3.1%20-%20xz.js" type="text/javascript">
		</script>

		<title>用户页面-Jeep</title>
	</head>
	<body>
		
		<!-- 头部 ==================================================================================-->
		<div style="width: 100%; background-color: #000000; position: fixed; height:93px; z-index: 21;">
			<jsp:include page="heard.jsp" />
		</div>
		<div style="height:96px;">
			
		</div>
		
		<!-- 用户信息 -->
		<div style="width: 100%; overflow: hidden;">
			<div id="user-dingwei">
				<!-- 用户名定位 -->
				<div id="username">
					<div id="nameimg">
						<img src="image/jeepuser/head.png" >
					</div>
					<span id="denglu">
						尊敬的${uid }欢迎登陆~
					</span>
				</div>
				<!-- 用户操作 -->
				<div id="user-caozuo">
					<!-- 左边定位 -->
					<div id="user-left">
						<ul>
						<li onClick="updingdan()">
								查看订单
							</li>
							<li onClick="upuser()">
								修改/完善信息
							</li>
						</ul>
					</div>
					<div id="user-right">
<!-- 					<div id="dingdanxinxi">
							
						</div> -->
						<ul>
							<li class="li-bgcolor" onclick="dingdancolor(0)">
								所有订单
							</li>
							<li class="li-bgcolor" onclick="dingdancolor(1)">
								正在进行
							</li>
							<li style="background-color: #ffb300;" class="li-bgcolor" onclick="dingdancolor(2)" >
								已完成的
							</li>
						</ul>
						<div style="width: 100%; height: 100%; padding: 20px; float: left;" >
							<table class="table table-hover">
								<caption>所有</caption>
								<thead>
									<tr>
										<th>详细</th>
										<th>时间</th>
										<th>地址</th>
										<th>价格</th>
										<th>状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${userdingdan }" var="ud">
								<c:if test="${ud.zhuangtai==1 }">
									<tr>
										<td style="width:290px;">${ud.carname }${ud.pname }${ud.colorname }</td>
										<td>${ud.shijian }</td>
										<td>${ud.sheng }${ud.shi }${ud.qu }</td>
										<td>${ud.jiage }</td>
										<td>
												完成
										</td>
										<td><a href="javascript:void(0)"></a></td>
									</tr>
								</c:if>
								</c:forEach>
								</tbody>
							</table>
							
						</div>
						
					</div>
					<!--  -->
					<div style="height: 70px; width: 990px; float: left;">
						
					</div>
				</div>
			</div>
		</div>
				<!-- 尾巴 -->
		<div style="width: 100%;height: 150px; background-color: #131313;">
			<jsp:include page="footer.jsp" />
		</div>
	</body>
	<script type="text/javascript">
	/* 订单操作 */
	function dingdancolor(id)
	{
		if(id==0)
		{
			location.href="${pageContext.request.contextPath}/lookdingdanServlet";
		}
		if(id==1)
		{
			location.href="${pageContext.request.contextPath}/jinxingdingdanServlet";
		}
		if(id==2)
		{
			location.href="${pageContext.request.contextPath}/okdingdanSrvlet";
		}
	}
	//
	function upuser()
	{
		location.href="${pageContext.request.contextPath}/user-addr.jsp";
	}
	function updingdan(){
		location.href="${pageContext.request.contextPath}/lookdingdanServlet";
	}
	</script>
</html>