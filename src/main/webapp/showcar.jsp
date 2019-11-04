<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="js/bootstrap.css" />
<script src="js/bootstrap.js" type="text/javascript">
	
</script>
<link href="image/index/timg.jpg" rel="SHORTCUT ICON" />
<!-- title图片 -->
<link rel="stylesheet" type="text/css" href="css/showcar.css" />
<script type="text/javascript" src="js/showcar.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1%20-%20xz.js"></script>

<title>单品列表-Jeep</title>
</head>
<body>
	<!-- 头部 ==================================================================================-->
	<div
		style="width: 100%; background-color: #000000; position: fixed; height: 93px; z-index: 1;">
		<jsp:include page="heard.jsp" />
	</div>
	<div style="height: 93px;"></div>

	<!-- 标题 -->
	<div style="width: 100%; background-color: #dadada;">
		<div style="width: 100%; height: 228px;">
			<img src="image/jeepshowcar/bda971e9-ad85-4d91-a244-f7e2bd8e99e6.png"
				style="display: block; margin: 0 auto;">
		</div>
		<div id="showcar">
			<ul>
				<!-- 				<li>
					<div class="car-image">
						<img src="image/jeepshowcar/list_jeep.png" class="imgd1"> <img
							src="image/jeepshowcar/dq.jpg" class="img2">
					</div>
					<div class="car-font">
						<h3 style="margin-top: 6px;">jeep新指挥官</h3>
						<p class="p2">专业级suv</p>
						<p class="p3" id="zt">订金：¥8.80</p>
					</div>
				</li> -->
				<c:forEach items="${lim.arr }" var="car">
					<c:if test="${car.carzt==0 }">
						<li onClick="carx(${car.carid})">
							<div class="car-image">
								<img src="image/jeepshowcar/list_jeep.png" class="imgd1">
								<img src="${car.carimg }" class="img2">
							</div>
							<div class="car-font">
								<h3 style="margin-top: 6px;">${car.carname }</h3>
								<p class="p2">${car.cartext }</p>
								<p class="p3" id="zt">订金：¥8.80</p>
							</div>
						</li>
					</c:if>
					<c:if test="${car.carzt==1 }">
						<li>
							<div class="car-image">
								<img src="image/jeepshowcar/list_jeep.png" class="imgd1">
								<img src="${car.carimg }" class="img2">
							</div>
							<div class="car-font">
								<h3 style="margin-top: 6px;">${car.carname }</h3>
								<p class="p2">${car.cartext }</p>
								<p class="p3" id="zt">暂停出售</p>
							</div>
						</li>
					</c:if>
				</c:forEach>
				<!-- =========================================================  -->
			</ul>
			<div style="clear: both;"></div>
		</div>
		<div style="background-color: #dadada; width: 100%;">
			<div style="margin: 0 auto; width: 990px; text-align: center;">
				<!-- 				<ul class="pagination">
						<li class=""><a href="#">&laquo;</a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>  -->
				<ul class="pagination" style="text-align: center; margin-top: 20px;">
					<!-- 上一页 -->
					<c:if test="${lim.curr==1 }">
						<li class="disabled">
							<a href="javascript:void(0)" aria-label="Next"> 
								<span aria-hidden="true">&laquo;</span>
							</a>
						</li>
					</c:if>
					<c:if test="${lim.curr!=1 }">
						<li>
							<a href="${pageContext.request.contextPath }/limitServlet?curr=${lim.curr-1}" aria-label="Next">
							 		<span aria-hidden="true">&laquo;</span>
							</a>
						</li>
					</c:if>
					<!--  -->
					<c:forEach begin="1" end="${lim.zcurr }" var="page">
						<c:if test="${page==lim.curr }">
							<li class="active">
								<a href="${pageContext.request.contextPath }/limitServlet?curr=${page}">${page }</a>
							</li>
						</c:if>
						<c:if test="${page!=lim.curr }">
							<li>
								<a href="${pageContext.request.contextPath }/limitServlet?curr=${page}">${page }</a>
							</li>
						</c:if>
					</c:forEach>
					<!-- 下一页 -->
					<c:if test="${lim.curr==lim.zcurr }">
						<li class="disabled">
							<a href="javascript:void(0)" aria-label="Next"> 
								<span aria-hidden="true">&raquo;</span>
							</a>
						</li>
					</c:if>
					<c:if test="${lim.curr!=lim.zcurr }">
						<li>
							<a href="${pageContext.request.contextPath }/limitServlet?curr=${lim.curr+1}"aria-label="Next"> 
								<span aria-hidden="true">&raquo;</span>
							</a>
						</li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
	<!-- 尾巴 -->
	<div style="width: 100%; height: 150px; background-color: #131313;">
	<!-- 动态引入 -->
		<jsp:include page="footer.jsp" />
	</div>
</body>
<script type="text/javascript">
	function carx(carid)
	{
		location.href="${pageContext.request.contextPath }/carxServlet?carid="+carid;
	}
</script>
</html>