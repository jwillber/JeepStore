<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="height: 100%;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="image/index/timg.jpg" rel="SHORTCUT ICON"  /> <!-- title图片 -->
		<link rel="stylesheet" type="text/css" href="css/admin.css"/>
		<script src="js/admin.js" type="text/javascript">
			
		</script>
		<script src="js/jquery-3.3.1%20-%20xz.js" type="text/javascript">
			
		</script>
		<title>Admin-Jeep</title>
	</head>
	<body style="height: 100%;">
		
		<!-- 头部 -->
		<div style="width: 100%; height: 120px; background-color: black; border-bottom: 2px solid #ffb400;">
			<div id="logo">
				<div id="logo-wenzi">
					<span id="sp1">
						Jeep
					</span>
					<span id="sp2">
						管理员
					</span>
				</div>
			</div>
		</div>
		
		<!-- 左侧 -->
		<div style="background-color: #000000; height: 100%; width: 240px; border-right: 2px solid #ffb400; color: white; float: left;"  >
			<!-- 查询车库 -->
			<div id="cark" >
				<div id="cark-name" onclick="carkh()">
					车库操作
				</div>
				
				<ul>
					<li>
						查看车库
					</li>
					<li onClick="lookcar()">
						上架/下架
					</li>
					<li onClick="updatecar()">
						修改数据
					</li>
				</ul>
			</div>
			<!-- 订单 -->
			<div id="carding">
				<div id="carding-name" onclick="carding()">
					订单操作
				</div>
				<ul>
					<li>
						查看订单
					</li>
				</ul>
			</div>
		</div>
		
		<!-- 内容区域 -->
		<div style="width: 100%; height: 100%; background-image: url(image/web/h_bg1.jpg); background-size: 100%; padding-top: 50px;">
			<div id="welcome-admin">
				欢迎使用~
			</div>
		</div>
	</body>
	<script type="text/javascript">
		function lookcar()
		{
			location.href="${pageContext.request.contextPath}/lookcarnameServlet";
		}
		function updatecar()
		{
			location.href="${pageContext.request.contextPath}/updatecarnameServlet";
		}
	</script>
</html>