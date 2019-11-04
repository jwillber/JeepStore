<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" deferredSyntaxAllowedAsLiteral="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="image/index/timg.jpg" rel="SHORTCUT ICON"  /> <!-- title图片 -->
		<script type="text/javascript" src="js/login.js"></script>
		<link rel="stylesheet" type="text/css" href="css/login.css"/>
			<!-- boots -->
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<script src="js/jquery-3.3.1%20-%20xz.js" type="text/javascript"></script>
		<title>客户登录-Jeep</title>
	</head>
	<body>
		<!-- 头部 -->
		<div style="width: 100%; height: 120px; background-color: black; border-bottom: 2px solid #ffb400;">
			<div id="logo">
				<div id="logo-wenzi">
					<span id="sp1">
						Jeep
					</span>
					<span id="sp2">
						统一会员身份认证平台
					</span>
				</div>
			</div>
		</div>
		
		
		<!-- 中间 -->
		<div style="width: 100%; height: 600px;">
			<div id="login-z">
				<div id="login-con">
					<form class="form-horizontal" role="form" action="user/login.do" method="post">
					<!-- 此div提示账号用户错误 -->
						<div style="padding-top: 5px; padding-bottom: 5px; color: red;">
							${logininfo }
						</div>
					<!-- boots -->
						<ul>
							<li>
								<div style="width: 280px;">
									<div class="form-group">
										<label for="firstname" class="col-sm-2 control-label" style="padding-right: 0px;">账号</label>
										<div class="col-sm-10">
										  <input name="uid" type="text" class="form-control" id="firstname" placeholder="账号">
										</div>
									 </div>
								</div>
							</li>
							<li>
								<div style="width: 280px;">
									<div class="form-group">
										<label for="firstname" class="col-sm-2 control-label" style="padding-right: 0px;">密码</label>
										<div class="col-sm-10">
										<input name="upwd" type="password" class="form-control" id="firstname" placeholder="请输入密码">
										</div>
									</div>
								</div>
							</li>
							<!-- 注册跳转 -->
							<li>
								<span id="zc"><a href="register.jsp">注册</a></span>
							</li>
							<!-- 按钮 -->
							<li>
								<div id="anniu">
									<input type="submit" name="" id="anniu2" value="登录" />
								</div>
							</li>
						</ul>
					</form>
				</div>
			</div>
		</div>
		
		
		<!-- 尾部 -->
				<div style="width: 100%;height: 150px; background-color: #131313;">
					<jsp:include page="footer.jsp" />
				</div>
		
	</body>
	<script type="text/javascript">
	</script>
</html>