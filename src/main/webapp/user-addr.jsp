<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="js/bootstrap.css"/>
		<script src="js/bootstrap.js" type="text/javascript">	
		</script>
		<link href="image/index/timg.jpg" rel="SHORTCUT ICON"  /> <!-- title图片 -->
		<script type="text/javascript" src="layui/layui.js"></script>
		<link rel="stylesheet" type="text/css" href="layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="css/user-update.css"/>
		<script type="text/javascript" src="js/user-update.js">
		</script>
		<script src="js/jquery-3.3.1%20-%20xz.js" type="text/javascript"></script>

		<title>用户页面-Jeep</title>
	</head>
	<body>
		
		<!-- 头部 ==================================================================================-->
		<div style="width: 100%; background-color: #000000; position: fixed; height:93px; z-index: 21;">
			<jsp:include page="heard.jsp" />
		</div>
		<div style="height: 93px;">
			
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
<!-- 						<div id="update-con">
							
						</div> -->
						<ul>
							<li class="li-bgcolor" onclick="dingdancolor(0)" style="background-color: #ffb400;">
								修改地址
							</li>
							<li class="li-bgcolor" onclick="uppwd()" style="border-right: none;">
								修改密码
							</li>
						</ul>
						<div style="width: 100%; height: 350px;">
								<div style="width: 450px; height: 40px; float: left; margin-left: 160px; margin-top: 85px;">
									<div class="form-group">
										<label for="firstname" class="col-sm-2 control-label" style="padding-right: 3px;"><span class="from-size">
												家庭住址
											</span></label>
										<div class="form-group">
											<label for="firstname" class="col-sm-2 control-label">新住址</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="firstname"
													placeholder="">
											</div>
										</div>
										<span id="newarr" style="color: red;"></span> <input
								type="button" value="确认" id="sanniu" style="margin-top: 20px; margin-left:165px;"
								onClick="newaddr(this)" />
									</div>
								</div>
							<!-- 家庭住址 -->
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
	var uaddr=null;
//====================
		layui.use(['layer','laypage', 'layedit','form','table','laytpl'], function(){
  var layer = layui.layer,
  	form = layui.form,
  	$ = layui.$,
	table = layui.table,
	laytpl = layui.laytpl,
  	layedit = layui.layedit;

  
});
		
		function newaddr(obj){
			uaddr = $("#firstname").val();
			console.log(uaddr)
			 $.ajax({
				              url:"${pageContext.request.contextPath}/user/newUaddr.do",
				              async:true,
				              data:{"uaddr":uaddr},
				              success:function(data){
								if(data==1){
									/* $("#newarr").html("成功"); */
									layer.msg('成功');
								}
				              },
				             type:"post",
				         })
		};
//========================
	/* 三级联动  */

	//
	function upuser()
	{
		location.href="${pageContext.request.contextPath}/user-addr.jsp";
	}
	function updingdan(){
		location.href="${pageContext.request.contextPath}/user/lookdingdan.do";
	}
	function uppwd()
	{
		location.href="${pageContext.request.contextPath}/newpwd.jsp";
	}
	//

	</script>
</html>