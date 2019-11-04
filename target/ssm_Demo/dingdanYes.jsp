<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="image/index/timg.jpg" rel="SHORTCUT ICON" />
<!-- title图片 -->
		<link rel="stylesheet" type="text/css" href="css/moneycar.css"/>
		<script src="js/moneycar.js" type="text/javascript"></script>
		<script src="js/jquery-3.3.1%20-%20xz.js" type="text/javascript"></script>
		<title>提交订单-Jeep</title>
	</head>
	<body>
		<!-- 提示框 -->
		<div id="alert-2" style="position: absolute; width: 100%; height: 641px; background: rgb(255,255,255,0.5); z-index: 20;">
			<div id="alert-1">
				订单提交成功
				<div id="okokok" onclick="alertt()" style="cursor: pointer; width: 100px; height: 40px; margin: 0 auto; background-color: #ffb400; margin-top: 35px; text-align: center; line-height: 40px;">
					确定
				</div>
			</div>
		</div>
	<!-- 头部 ==================================================================================-->
	<div style="width: 100%; background-color: #000000; position: fixed; height: 93px; z-index: 999;">
		<jsp:include page="heard.jsp" />
	</div>
	<div style="height: 93px;"></div>
		
		<!-- 订单信息 -->
		<div style="width: 100%; background-color: #dadada; overflow: hidden;"> 
			<div id="mycar-bt">
				确认订单/信息
			</div>
			<div id="mycar-xinxi">
				<p style="font-size: 13px; color: red;">*尊敬的客户，请务必保证您填写的姓名、手机号、实际到店购车登记姓名、号码一致，否则将不能保障您的商城定车服务及订车宝特权</p>
				<div id="xinxi">
					<!-- 用户名 -->
					<table border="0" cellspacing="20" cellpadding="15" style="font-size: 14px;">
						<tr>
							<td>姓名</td>
							<td><input type="text" name="" id="" disabled="disabled"  value="" /></td>
						</tr>
						<tr>
							<td>地址</td>
							<td><input type="text" name="" id="" disabled="disabled" value="" /></td>
						</tr>
						<tr>
							<td>电话</td>
							<td><input type="text" name="" id="" disabled="disabled" value="" /></td>
						</tr>
					</table>
					
				</div>
			</div>
			<div id="mycar-con">
				<ul>
					<li style="width: 200px; border-left: none;">
						商品图片
					</li>
					<li style="width:240px">
						商品名称
					</li>
					<li style="width:400px">
						规格
					</li>
					<li style="width:150px">
						单价
					</li>
				</ul>
				<table border="0" cellspacing="" cellpadding="" class="table-css">
				<c:forEach items="" var="mored" varStatus="js">
					<tr class="trb">
						<td style="width: 20px;">
							
						</td>
						<td style="width: 180px">
							<img src="" style="width: 85%;" >
						</td>
						<td style="width: 240px;">
							<span>
								
							</span>
						</td>
						<td style="width: 400px;">
							<span>
								
							</span><br />
							<p>
								
							</p>
						</td>
						<td style="width: 150px;">
							<span style="color: #ff4500; display: block; margin: 0 auto; margin-top: 45px;">
								订金:¥ <span></span>
							</span>
							<div style="float: right; margin-top: 33px;">
								
							</div>
						</td>
					</tr>
				</c:forEach>
					<%-- <tr class="trb">
						<td style="width: 20px;">
							
						</td>
						<td style="width: 180px">
							<img src="${dingdanq.carimg }" style="width: 85%;" >
						</td>
						<td style="width: 240px;">
							<span>
								${dingdanq.carname }
							</span>
						</td>
						<td style="width: 400px;">
							<span>
								${dingdanq.pname }
							</span><br />
							<p>
								${dingdanq.colorname }
							</p>
						</td> --%>
				</table>
				<div id="mycar-bottom">
					<div id="ch">
						
					</div>
					<div id="jiage" onClick="adddingdan()">
						提交订单
					</div>
					<div id="jiage2">
						总计:<span style="color: #ff4500;">¥</span>
						<span id="jiagehtml">
							
						</span>
					</div>
				</div>
				<!-- 撑起底部的div -->
				<div style="height: 50px;">
					
				</div>
											<!-- 清除浮动 -->
											<div style="clear: both;">
			
											</div>
			</div>
		</div>
			<!-- 尾巴 -->
	<div style="width: 100%; height: 150px; background-color: #131313;">
		<jsp:include page="footer.jsp" />
	</div>
	</body>
	<script type="text/javascript">
		function alertt(){
			location.href="jeepstore.jsp";
		}
	</script>
</html>