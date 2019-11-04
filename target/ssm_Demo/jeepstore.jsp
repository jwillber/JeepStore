<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="${pageContext.request.contextPath }/image/index/timg.jpg" rel="SHORTCUT ICON"  /> <!-- title图片 -->
		<link href="${pageContext.request.contextPath }/css/jeepstore.css" type="text/css" rel="stylesheet" />
		<script src="${pageContext.request.contextPath }/js/jeepstore.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath }/js/jquery-3.3.1.js" type="text/javascript"></script>
		<title>商品列表-Jeep</title>
	</head>
	<body>
		<!-- 头部 ==================================================================================-->
		<div style="width: 100%; background-color: #000000; position: fixed; height:93px; z-index: 21;">
			<jsp:include page="/heard.jsp" />
		</div>
		<div style="height:96px;">
			
		</div>
		<!-- 轮播图 -->
		<div style="width: 100%; height: 600px;">
			<div id="lunbo-img">
				<div id="go-img">
					<img src="${pageContext.request.contextPath }/image/jeepstore/car1.jpg"  style="width: 1349px; height: 600px;">
					<img src="${pageContext.request.contextPath }/image/jeepstore/car2.jpg" style="width: 1349px; height: 600px;">
				</div>
				<ul id="go-img-dian">
					<li class="dian1" onclick="dddj('0')">
						
					</li>
					<li class="dian1" onclick="dddj('1')">
						
					</li>
				</ul>
			</div>

		</div>
		
		<div style="width: 100%;">
			<div id="contentframe">
				<div id="content2">
					<div id="content2-top">
						
					</div>
					<div id="content2-b">
						<img src="${pageContext.request.contextPath }/image/jeepstore/092673a4-d7c5-4f34-999f-42e270de4256.jpg" >
						<ul>
							<li>
								<img src="${pageContext.request.contextPath }/image/jeepstore/36e42429-cec4-4d60-b693-dc8f146e792d.jpg" >
							</li>
							<li>
								<img src="${pageContext.request.contextPath }/image/jeepstore/ddbe4c41-72fb-4517-9f28-934c24c9cef2.jpg" >
							</li>
							<li>
								<img src="${pageContext.request.contextPath }/image/jeepstore/8ecc758e-a13a-4fd6-b4c6-81c6f2cccbde.jpg" >
							</li>
							<li>
								<img src="${pageContext.request.contextPath }/image/jeepstore/1f96deed-98be-4cca-83df-3ad15913546a.jpg" >
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 尾巴 -->
		<div style="width: 100%;height: 150px; background-color: #131313;">
			<jsp:include page="footer.jsp" />
		</div>
	</body>
</html>