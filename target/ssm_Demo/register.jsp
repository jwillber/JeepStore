<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script src="${pageContext.request.contextPath}/js/jquery-3.3.1%20-%20xz.js" type="text/javascript"></script>
		<link href="${pageContext.request.contextPath}/image/index/timg.jpg" rel="SHORTCUT ICON" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/register.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/register.js"></script>
		<!-- boots -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
		<!-- 日历引入 -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/layDate-v5.0.9/laydate/laydate.js"></script>
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
		<div id="alert-2" style="position: absolute; width: 100%; height: 842px; background: rgb(255,255,255,0.5); z-index: 20; display: none;">
			<div id="alert-1">
				密码不符合
				<div id="okokok" onclick="alertt()" style="cursor: pointer; width: 100px; height: 40px; margin: 0 auto; background-color: #ffb400; margin-top: 35px; text-align: center; line-height: 40px;">
					确定
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
			<div id="zhuce-con" style="width:100%;">
				<div id="zhuce-neirong">
					<form method="post" action="${pageContext.request.contextPath}/user/newUserInfo.do" class="form-horizontal" role="form">
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
												<input name="upwd" type="text" class="form-control ze2-2" id="firstname" placeholder="字母数字下划线开头，6~16位，包含字母数字下划线" onblur="upwd()">
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
									<!-- 住址 -->
									<div style="width: 400px;">
										<div class="form-group ze4-1">
											<label for="firstname" class="col-sm-2 control-label" style="padding-right: 3px;"><span class="from-size">
													家庭住址
												</span></label>
											<div class="col-sm-10">
												<input name="uaddr" type="text" class="form-control" id="firstname" placeholder="住址">
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
							</ul>
							<div id="from-bottom">
								<div id="fxk">
									<input onclick="xieyi(),anniu()" type="checkbox" name="" id="zc-xieyi" value="" />我同意Jeep商城的 <a href="web6.html"
									 target="_blank">《隐私声明》</a> 条约与条件
									 <span style="display: block; float:right; cursor: pointer; margin-top:10px; margin-left: 70px; color:#ffb400" onClick="gologin()">有账号，登录</span>
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
	<script>
		lay('#version').html('-v' + laydate.v);

		//执行一个laydate实例
		laydate.render({
			elem: '#test1', //指定元素
			theme: 'yellow'
		});
		
		function gologin()
		{
			location.href="${pageContext.request.contextPath}/login.jsp";
		}
		
		function shenfen()
		{
			var zusf=/^[0-9]*$/;
			var usf=$(".ze4-2").val();
			if(zusf.test(usf))
			{
				$(".ze4-1").attr("class","form-group ze4-1 has-success");
				$(".ze4-2").attr("id","inputSuccess");
				//验证身份是否重复
				var usershenfeninput=$(".ze4-2").val();
				$.ajax({
					url:"${pageContext.request.contextPath}/user/isIdCode.do",
					async:true,
					type:"post",
					data:{"ushenfen":usershenfeninput},
					success:function(data){
						/* alert("1"); */
						console.log(data)
						var userinfo="";
						if(data == 1)
							{
								userinfo="该身份注册过了~";
								$(".ze4-2").val(userinfo);
							}
					},
					dataType:"json"
				})
			}else{
				$(".ze4-1").attr("class","form-group ze4-2 has-error");
				$(".ze4-2").attr("id","inputError");
				/* alert("身份证号格式不正确！"); */
				$("#alert-1").html("身份证号格式不正确!<div id='okokok' onclick='alertt()' style='cursor: pointer; width: 100px; height: 40px; margin: 0 auto; background-color: #ffb400; margin-top: 35px; text-align: center; line-height: 40px;'>确定</div>");
				$("#alert-2").css("display","block");
			}
		}
		
		
		
		
/* 三级联动  */
		$(document).ready(function () {
		    getprovince();//网页加载完成时自动执行 此方法 
		     $("#shengfen-2-select").change(function () {
		    	 //表示id="province"的标签中的值改变时调用此方法
		    	getcity($(this).val());
		    });
		    $("#form-city-select").change(function () {//以上同理
		    	getarea($(this).val());
		    }); 
		    function getprovince(){//使用ajax获取后台返回的数据
		        $.ajax(
		        {
		            type:"post",//规定请求的类型（GET 或 POST）。
		            url:"${pageContext.request.contextPath}/GetArea",//规定发送请求的 URL。默认是当前页面。
		            async:true,	//表示请求是否异步处理。默认是 true。
		            dataType:"json",//默认类型也为json格式
		            success: function (data) {
		            	//data:代表返回的数据为json格式的数组
					//  [{"id":1,"name":"北京市","parent_id":0},
					//  {"id":2,"name":"天津市","parent_id":0},
					//  {"id":3,"name":"河北省","parent_id":0},
		        	//  {"id":4,"name":"山西省","parent_id":0},.......}
		            	//alert(data)
		                $.each(data,function(n,item){
		                    var option=$("<option></option>");//设置option标签
		                    option.val(item.id);//设置option标签中的value值为数据库表中id字段中的值
		                    option.text(item.name);//设置option标签中的text值为数据库表中name字段中的值
		                    option.appendTo($("#shengfen-2-select"));//将 option添加到id为province标签的结尾（仍然在内部
		                });
		            	//alert($("#province").val());
		                getcity($("#shengfen-2-select").val());//调用getcity方法，并插入参数$("#province").val()(即：id字段中的值)
		           }
		        }
		        );
		    }
		       function getcity(id){
		    	   
		            $("#form-city-select").empty();//清空之前的数据
		            $.ajax({
		            	type:"get",
		            	url:"${pageContext.request.contextPath}/GetArea?id="+id,
		            	data:{
		            		//向服务器发送flag：作为标志字段
		    				flag:"city"
		    			},
		            	success:function(data){
		            		//遍历数组
		            		$.each(data,function(n,item){
		            			var option=$("<option></option>");//设置option标签
		                        option.val(item.id);//设置option标签中的value值为数据库表中id字段中的值
		                        option.text(item.name);//设置option标签中的text值为数据库表中name字段中的值
		                        option.appendTo($("#form-city-select"));//将 option添加到id为province标签的结尾（仍然在内部
		                });
		                 getarea($("#form-city-select").val());
		            	}
		            });
		    }  
		    function getarea(id){
		    	$("#jingxiaoshang-select").empty();
		        $.ajax( { type:"get",
		        			url:"${pageContext.request.contextPath}/GetArea?id="+parseInt(id),//将数据转成int 类型
		        			data:{
		        				flag:"area"
		        			},
		                    success: function (data) {
		                    	//遍历数组
		                		$.each(data,function(n,item){
		                			var option=$("<option></option>");//设置option标签
		                            option.val(item.id);//设置option标签中的value值为数据库表中id字段中的值
		                            option.text(item.name);//设置option标签中的text值为数据库表中name字段中的值
		                            option.appendTo($("#jingxiaoshang-select"));//将 option添加到id为province标签的结尾（仍然在内部
		                    });
		               
		                    }
		                }
		        );
		    } 
		});
	</script>
</html>