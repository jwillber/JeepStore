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
										<div class="col-sm-10">
											<select class="form-control xlcss" style="width: 100px; float: left; background-image: url(image/web2/selectRight.png); margin-left: 0px;"
											id="shengfen-2-select">
											</select>
											<select class="form-control xlcss" style="width: 100px; float: left; background-image: url(image/web2/selectRight.png);"
											id="form-city-select">
											</select>
											<select class="form-control xlcss" style="width: 100px; float: left; background-image: url(image/web2/selectRight.png); "
											id="jingxiaoshang-select">
											</select>
											<!-- <input type="text" class="form-control" id="firstname" placeholder="请输入家庭住址"> -->
											<span id="newarr" style="color:red;"></span>
											<input type="button" value="确认" id="sanniu" style="margin-top: 20px;" onClick="newaddr()"/>
										</div>
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
	var sheng=null;
	var shi=null;
	var qu=null;
//====================
		layui.use(['layer','laypage', 'layedit','form','table','laytpl'], function(){
  var layer = layui.layer,
  	form = layui.form,
  	$ = layui.$,
	table = layui.table,
	laytpl = layui.laytpl,
  	layedit = layui.layedit;

  
});
		  
		function newaddr(){
			 $.ajax({
				              url:"${pageContext.request.contextPath}/newaddrSrvlet",
				              async:true,
				              data:{"sheng":sheng,"shi":shi,"qu":qu},
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
	$(document).ready(function () {
		$("#shengfen-2-select").change(function(){
			  sheng=$(this).val();
		});
		$("#form-city-select").change(function(){
			shi=$(this).val();
		});
		$("#jingxiaoshang-select").change(function(){
				qu=$(this).val();
		});
		
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
	//
	function upuser()
	{
		location.href="${pageContext.request.contextPath}/user-addr.jsp";
	}
	function updingdan(){
		location.href="${pageContext.request.contextPath}/lookdingdanServlet";
	}
	function uppwd()
	{
		location.href="${pageContext.request.contextPath}/newpwd.jsp";
	}
	//

	</script>
</html>