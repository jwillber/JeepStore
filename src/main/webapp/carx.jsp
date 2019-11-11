<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/image/index/timg.jpg" rel="SHORTCUT ICON" />
<!-- title图片 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/carx.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/carx.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1%20-%20xz.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/bootstrap.css" />
<script src="${pageContext.request.contextPath}/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<title>汽车名-Jeep专业SUV制造者</title>
</head>
<body>
	<!-- 提示框 -->
		<div id="alert-2" style="position: absolute; width: 100%; height: 3411px; background: rgb(255,255,255,0.5); z-index: 20; display: none;">
			<div id="alert-1">
				必须选择配置和颜色
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

	<!-- 内容 -->
	<div style="width: 100%; background-color: #dadada;">
		<div id="carxiangxi-border">
			<div id="carshow-img">
				<div id="img-top">
					<c:forEach items="${carx.liimg }" var="carimg" varStatus="jishu">
						<c:if test="${jishu.count==1 }">
							<img src="${pageContext.request.contextPath}/${carimg.carimg }" class="big-img" style="">
						</c:if>
						<c:if test="${jishu.count!=1 }">
							<img src="${pageContext.request.contextPath}/${carimg.carimg }" class="big-img"
								style="display: none;">
						</c:if>
					</c:forEach>
					<!-- 	<img src="image/jeepcarx/dq/8ecd1f24-0932-4396-82ec-20579a8f0ed3-source.png" class="big-img" style="display: none;">-->
				</div>
				<ul>
					<c:forEach items="${carx.liimg }" var="carimgg" varStatus="jishu">
						<c:if test="${jishu.count==1 }">
							<li style="margin-left: 0px;"><img src="${pageContext.request.contextPath}/${carimgg.carimg }"
								class="small-img" onmousemove="showcar(${jishu.count-1})">
							</li>
						</c:if>
						<c:if test="${jishu.count!=1 }">
							<li><img src="${pageContext.request.contextPath}/${carimgg.carimg }" class="small-img"
								onmousemove="showcar(${jishu.count-1})"></li>
						</c:if>

					</c:forEach>
					<!-- 					<li>
							<img src="image/jeepcarx/dq/8ecd1f24-0932-4396-82ec-20579a8f0ed3-source.png" class="small-img" onmousemove="showcar(1)">
						</li> -->
				</ul>
			</div>
			<!-- 			<div style="width: 335px;height: 338px;">
					
				</div> -->
			<div style="width: 920px; margin: 0 auto; position: relative;">

				<div id="carxiangxi-right">
					<span id="carname">${carx.carname }</span>
					<div id="car-jiage">
						<div id="car-miaoshu">${carx.cartext }</div>
						<div
							style="width: 100%; height: 2px; background-color: #434343; margin-top: 8px; margin-bottom: 8px;">
						</div>
						<div id="car-j">订金：&yen;<span id="badianba">8.80</span></div>
					</div>

					<div id="dingche"  onClick="heardd()">状态：可用</div>
					<!-- 车配置名字 -->
					<div id="car-name">
						<div
							style="padding-left: 10px; padding-top: 10px; font-size: 14px; color: #434343; float: left;">
							车型：</div>
						<div id="car-name-li">
							<ul>
								<c:forEach items="${carx.peizhi }" var="peizhi" varStatus="jishu">
									<c:if test="${peizhi.pzt==0 }">
										<li class="lidh" onclick="pz(${jishu.count-1},${peizhi.pid },'${peizhi.pname }')"
											onmousemove="onmos(${jishu.count-1})" onmouseout="outmos()" bs="0">
											${peizhi.pname }</li>
									</c:if>
									<c:if test="${peizhi.pzt==1 }">
										<li class="lidh disabledd" bs="1">${peizhi.pname }</li>
									</c:if>
								</c:forEach>
								<!-- 	<li class="lidh disabledd"  onclick="pz(0)" onmousemove="onmos(0)" onmouseout="outmos()">
											11111111111
										</li> -->
							</ul>
						</div>
						<!-- 清除浮动 -->
						<div style="clear: both;"></div>
					</div>

					<!-- 汽车颜色 -->
					<div id="car-color">
						<div
							style="padding-left: 10px; padding-top: 10px; font-size: 14px; color: #434343; float: left;">
							颜色：</div>
						<div id="car-color-li">
							<ul id="newul">
								<c:forEach items="${carx.pandc }" var="pandc" varStatus="jishu">
									<c:if test="${pandc.czt==0 }">
										<li class="lidh2" onclick="colorr(${jishu.count-1})"
											onmousemove="onmos2(${jishu.count-1})" onmouseout="outmos2()">
											${pandc.colorname }
										</li>
									</c:if>
									<c:if test="${pandc.czt==1 }">
										<li class="disabledd">${pandc.colorname }</li>
									</c:if>
								</c:forEach>
								<!-- <li class="lidh2" onclick="color(0)" onmousemove="onmos2(0)" onmouseout="outmos2()">
											222
										</li> -->
							</ul>
						</div>

						<!-- 清除浮动 -->
						<div style="clear: both;"></div>
					</div>

					<!-- 提交按钮   和    收藏按钮 -->
					<div id="anniu">
							<c:if test="${uid==null}">
								<input onClick="gologin()" type="submit" name="" id="tijiao" value="立即获取" /> 
							</c:if>
							<c:if test="${uid!=null}">
								<input onClick="huoqu(0)" type="submit" name="" id="tijiao" value="立即获取" /> 
							</c:if>
							<c:if test="${uid==null}">
								<input onClick="gologin()"  type="submit" id="tijiao2" value="加入购物车" />
							</c:if>
							<c:if test="${uid!=null}">
								<input onClick="huoqu(1)"  type="submit" id="tijiao2" value="加入购物车" />
							</c:if>
					</div>
					<!-- 清除浮动 -->
					<div style="clear: both;"></div>
				</div>

			</div>
		</div>
		<!-- 描述汽车 -->
		<div style="width: 100%;">
			<div style="width: 1000px; margin: 0 auto;">
				<div id="zhanshi-bt">
					<ul>
						<li style="border-left: none;" class="lidh3"
							onclick="btli(this,0)">购车说明</li>
						<li class="lidh3" onclick="btli(this,1)">车型详情</li>
						<li class="lidh3" onclick="btli(this,2)">参数配置</li>
					</ul>
				</div>
				<!-- 车辆信息 -->
				<c:forEach items="${carx.liximg }" var="xcarimg" varStatus="jishu">
					<c:if test="${jishu.count==1 }">
						<div style="width: 1000px; display: block;" class="bottom-img">
							<img src="${pageContext.request.contextPath}/${xcarimg.xcarimg }" style="width: 100%;">
						</div>
					</c:if>
					<c:if test="${jishu.count!=1 }">
						<div style="width: 1000px; display: none;" class="bottom-img">
							<img src="${pageContext.request.contextPath}/${xcarimg.xcarimg }" style="width: 100%;">
						</div>
					</c:if>
				</c:forEach>

				<!-- 				<div style="width: 1000px; display: none;" class="bottom-img">
						<img src="image/jeepcarx/dq/1.png" style="width: 100%;" >
					</div> -->
			</div>
		</div>
	</div>
	<!-- 尾巴 -->
	<div style="width: 100%; height: 150px; background-color: #131313;">
		<jsp:include page="footer.jsp" />
	</div>
	<script type="text/javascript">
	var peizhi=0;
	var color=0;
	var peizhiname=null;
	var colorname=null;
	//此处判断是否选中配置和颜色
			$(function (){
				$(".disabledd").load(function (event) {
					event.preventDefault();
                 });
			
			})
			
			//存储汽车id 汽车图片路径  配置名  颜色名  
			
function pz(id,peizhiid,pname)
	{
		var bsnum=0;

		//获取配置名
		/* $(".lidh").eq(id).html(); */
		peizhiname=pname;
		
		console.log(peizhiname);
		peizhi=1;
		color=0;
		//--
		/* car=$("#car-name-li li").eq(id).html(); */
		
		$(".lidh").css("border","1px solid #808080");
		$(".lidh").css("color","black");
		$(".lidh").css("backgroundColor","#ffffff");
		
		$(".lidh").eq(id).css("backgroundColor","#ffb400");
		$(".lidh").eq(id).css("border","1px solid #ffb400");
		$(".lidh").eq(id).css("color","#ffffff");
		$(".lidh").each(function (){
			if($(this).attr("bs")==1){
				$(this).css("background-color","#717171");
				$(this).css("color","#434343");
			}
		})
		/* console.log(car); */
        $.ajax( { type:"get",
			url:"${pageContext.request.contextPath}/showcar/pColor.do",//将数据转成int 类型
			data:{
				"pid":peizhiid
			},
			dataType:"json",
            success: function (data) {
            	//遍历数组
            	/* alter(data); */
        	 	/* $.each(data,function(n,item){
        	 		
            });  */
           		console.log(data);
           		 var colornum=0;
           		$("#newul").html("");
				for(var i=0; i<data.length;i++)
				{
					if(data[i].czt==0)
						{
							$("#newul").append("<li class='lidh2' onclick='colorr("+colornum+")' onmousemove='onmos2("+colornum+")' onmouseout='outmos2()'>"+data[i].colorname+"</li>");
						}
					if(data[i].czt==1)
						{
							colornum--;
							$("#newul").append("<li class='disabledd'>"+data[i].colorname+"</li>");
						}
					colornum++;
					/* console.log(data[i].colorname); */
				}
            }
        }
);
		
	}
			
			
			/* 选择汽车颜色动画 */

			function colorr(id)
			{
				//获取颜色名字
				colorname=$(".lidh2").eq(id).html();
				color=1;
				
				/* colo=$("#car-color-li li").eq(id).html();	 */
				
				$(".lidh2").css("border","1px solid #808080");
				$(".lidh2").css("color","black");
				$(".lidh2").css("backgroundColor","#ffffff");
				
				$(".lidh2").eq(id).css("backgroundColor","#ffb400");
				$(".lidh2").eq(id).css("border","1px solid #ffb400");
				$(".lidh2").eq(id).css("color","#ffffff");
				/* console.log(colo); */
			}
			
			//两个提交按钮
			function huoqu(id){
				var ba=$("#badianba").html();
				if(color==1&&peizhi==1){
/* 					console.log(color,peizhi);
					console.log(color,peizhi); */
					if(id==0)
						{
							location.href="${pageContext.request.contextPath}/dingdanServlet?carname="+'${carx.carname }'+"&pname="+peizhiname+"&colorname="+colorname+"&jiage="+ba+"&carimg="+'${carx.carimg}';
						}
					if(id==1)
						{
							//车名
							console.log('${carx.carname }');
							//颜色名
							console.log(colorname);
							//配置名
							console.log(peizhiname);
							//价格
							console.log(ba);
							//用户账号从session取
							//图片路径
							console.log('${carx.carimg}');
							//使用ajax
					        $.ajax( { type:"post",
								url:"${pageContext.request.contextPath}/goucarServlet",
								data:{
									"carname":'${carx.carname }',
									"colorname":colorname,
									"pname":peizhiname,
									"jiage":ba,
									"carimg":'${carx.carimg}'
								},
					            success: function (data) {
					            	//遍历数组
					            	/* alter(data); */
					        	 	/* $.each(data,function(n,item){
					        	 		
					           		 });  */
					           		$("#shopcar").html(data);
					           		 console.log(data);
					            }
					        }
					);
							
						}
				}else{
					$("#alert-2").css("display","block");
					 $("html,body").scrollTop(0);
				}
			}
			
			//
			function alertt(){
				$("#alert-2").css("display","none");
			}
			
			function heardd()
			{
				var x=$("#shopcar").html();
				console.log(x);
			}
			
			//
			
			//收藏和购买按钮判断是否登录，否则跳转登录页面
			function gologin(){
				location.href="login.jsp";
			}
			
		</script>
</body>
</html>