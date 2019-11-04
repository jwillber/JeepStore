<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script src="js/jquery-3.3.1%20-%20xz.js" type="text/javascript"></script>
		<link href="image/index/timg.jpg" rel="SHORTCUT ICON" />
		<link rel="stylesheet" type="text/css" href="css/register.css" />
		<script type="text/javascript" src="js/register.js"></script>
		<!-- boots -->
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<!-- 日历引入 -->
		<script type="text/javascript" src="layDate-v5.0.9/laydate/laydate.js"></script>
		<title>用户注册-Jeep</title>
	</head>
	<!--  -->
	<style>
		/*  body{
  padding: 20px;
  } */
  .demo-input{padding-left: 10px; 
		height: 38px;
		min-width: 262px; 
		line-height: 38px; 
		border: 1px solid #e6e6e6; 
		background-color: #fff;  
		border-radius: 2px;}
  .demo-footer{padding: 50px 0; color: #999; font-size: 14px;}
  .demo-footer a{padding: 0 5px; color: #01AAED;}
  </style>


	<body>
		<!-- 提示框 -->
		<div id="alert-2" style="position: absolute; width: 100%; height: 842px; background: rgb(255,255,255,0.5); z-index: 20; ">
			<div id="alert-1" style="font-size:14px; color:red; font-weight: bold;">
				您的账号：${uid }
				<div id="okokok" onclick="go()" style="cursor: pointer; width: 100px; height: 40px; margin: 0 auto; background-color: #ffb400; margin-top: 35px; text-align: center; line-height: 40px;">
					登录
				</div>
			</div>
		</div>

		<!-- 头部 ==================================================================================-->
		<div style="width: 100%; background-color: #000000; position: fixed; height:93px; z-index: 21;">
			<jsp:include page="heard.jsp" />
		</div>
		<div style="height:96px;">
			
		</div>
		<!-- 注册 -->
		<div style="width: 100%;height: 600px;">
		<%-- <span>${uid }</span> --%>
			<div id="zhuce-con" style="margin: 0 auto">
				<div id="zhuce-neirong">
					<form method="post" action="${pageContext.request.contextPath}/registerServlet" class="form-horizontal" role="form">
						<div id="zhuce-mui-input-row">
							<ul>
								<li>
									<!-- 姓名 -->
									<div style="width: 400px;">
										<div class="form-group ze1-1">
											<!-- 标记 此处修改了boots的padding属性 =============================================================-->
											<label for="firstname" class="col-sm-2 control-label" style="padding-right: 3px;"><span class="from-size">真实姓名</span></label>
											<div class="col-sm-10">
												<input name="uname" type="text" class="form-control ze1-2" id="firstname" placeholder="请输入真实姓名" onblur="uuname()">
											</div>
										</div>
									</div>

								</li>
								<li>
									<!-- 密码 -->
									<div style="width: 400px;">
										<div class="form-group ze2-1">
											<!-- 获取class -->
											<label for="firstname" class="col-sm-2 control-label" style="padding-right: 3px;"><span class="from-size">
													输入密码
												</span></label>
											<div class="col-sm-10">
												<!-- 获取class -->
												<input  type="text" class="form-control ze2-2" id="firstname" placeholder="字母数字下划线开头，6~16位，包含字母数字下划线" onblur="upwd()">
											</div>
										</div>
									</div>
								</li>
								<li>
									<!-- 确认密码 -->
									<div style="width: 400px;">
										<div class="form-group ze3-1">
											<label for="firstname" class="col-sm-2 control-label" style="padding-right: 3px;"><span class="from-size">确认密码</span></label>
											<div class="col-sm-10">
												<input name="pwd" type="text" class="form-control ze3-2" id="firstname" placeholder="重复输入密码" onblur="qpwd()">
											</div>
										</div>
									</div>
								</li>
								<li>
									<!-- 身份证号 -->
									<div style="width: 400px;">
										<div class="form-group ze4-1">
											<label for="firstname" class="col-sm-2 control-label" style="padding-right: 3px;"><span class="from-size">
													身份证号
												</span></label>
											<div class="col-sm-10">
												<input name="ushenfen" type="text" class="form-control ze4-2" id="firstname" placeholder="请输入身份证号" onblur="shenfen()">
											</div>
										</div>
									</div>
								</li>
								<li>
									<!-- 家庭住址 -->
									<div style="width: 400px;">
										<div class="form-group">
											<label for="firstname" class="col-sm-2 control-label" style="padding-right: 3px;"><span class="from-size">
													家庭住址
												</span></label>
											<div class="col-sm-10">
												<select name="province" class="form-control xlcss" style="width: 100px; float: left; background-image: url(image/web2/selectRight.png); margin-left: 0px;"
												 id="shengfen-2-select">

												</select>
												<select name="city" class="form-control xlcss" style="width: 100px; float: left; background-image: url(image/web2/selectRight.png);"
												 id="form-city-select">
													
												</select>
												<select name="areaa" class="form-control xlcss" style="width: 100px; float: left; background-image: url(image/web2/selectRight.png); "
												 id="jingxiaoshang-select">
													
												</select>
												<!-- <input type="text" class="form-control" id="firstname" placeholder="请输入家庭住址"> -->
											</div>
										</div>
									</div>
								</li>
								<li>
									<!-- 手机号 -->
									<div style="width: 400px;">
										<div class="form-group ze5-1">
											<label for="firstname" class="col-sm-2 control-label" style="padding-right: 3px;"><span class="from-size">
													输手机号
												</span></label>
											<div class="col-sm-10">
												<input name="utell" type="text" class="form-control ze5-2" id="firstname" placeholder="请输入手机号" onblur="sjh()">
											</div>
										</div>
									</div>
								</li>
								<li>
									<!-- 选择性别 -->
									<div style="width: 400px;">
										<div class="form-group">
											<label for="firstname" class="col-sm-2 control-label" style="padding-right: 3px;"><span class="from-size">选择性别</span></label>
											<div class="col-sm-10">
												<label class="radio-inline">
													<input type="radio" name="usex" id="optionsRadios3" value="1" checked>男
												</label>
												<label class="radio-inline">
													<input type="radio" name="usex" id="optionsRadios4" value="2">女
												</label>
											</div>
										</div>
									</div>
								</li>
								<!--  -->


								<!-- 日历控件 -->
								<li>
									<div id="xiangzuo">
										<label for="firstname" class="col-sm-2 control-label" style="padding-right: 3px; padding-left: 3px;"><span
											 class="from-size">选择生日</span></label>
										<div class="col-sm-10">
											<input name="br" type="text" class="demo-input" placeholder="请选择日期" id="test1" style="border: 2px solid rgba(#5e5e5e,0,0,0.8);;">
										</div>
									</div>
								</li>
								<li>
									<!-- 验证码 -->
									<div style="width: 312px; float: left;">
										<div class="form-group">
											<label for="firstname" class="col-sm-2 control-label" style="padding-right: 3px;"><span class="from-size">
													验证码
												</span></label>
											<div class="col-sm-10">
												<input name="check" type="text" class="form-control" id="firstname" placeholder="请输入验证码" style="margin-left: 15px;">
											</div>
										</div>
									</div>
									<!-- 存放验证码 -->
									<div id="yzimg">
										<img alt="" src="${pageContext.request.contextPath}/CheckImgServlet" onclick="imgs(this)">
									</div>
								</li>
							</ul>
							<div id="from-bottom">
								<div id="fxk">
									<input onclick="xieyi(),anniu()" type="checkbox" name="" id="zc-xieyi" value="" />我同意Jeep商城的 <a href="web6.html"
									 target="_blank">《隐私声明》</a> 条约与条件
								</div>

								<div id="from-bottom-subimst">
									<input type="submit" name="" id="tj" value="提交注册" style="background-color: #7c7c7c;" disabled="disabled" />
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<!-- 尾巴 -->
		<div style="width: 100%;height: 150px; background-color: #131313;">
			<jsp:include page="footer.jsp" />
		</div>

	</body>
	<script type="text/javascript">
		function go()
		{
			location.href="${pageContext.request.contextPath}/login.jsp";
		}
	</script>
</html>