<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="height:100%">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="image/index/timg.jpg" rel="SHORTCUT ICON" /> <!-- title图片 -->
		<link rel="stylesheet" type="text/css" href="css/lookcark.css" />
		<script src="js/jquery-3.3.1%20-%20xz.js" type="text/javascript">
		</script>
		<script src="js/lookcark.js" type="text/javascript">
		</script>
		<!-- boos -->
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
		<script src="js/bootstrap.js" type="text/javascript">

		</script>
		<title>LOOK-Jeep</title>
	</head>
	<body style="height: 100%;">
		<div style="width: 100%; height: 100%;">


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
			<div style="background-color: #000000; height: 100%; width: 240px; border-right: 2px solid #ffb400; color: white; float: left; border-bottom: 2px solid #ffb400; padding-bottom: 10px;">
				<!-- 查询车库 -->
				<div id="cark">
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
			<div style="width: 100%;  background-image: url(image/web/h_bg1.jpg); background-size: 100%; padding-top: 50px; padding-left: 260px;">
								<div id="tiaojian">
					<div id="xxcarname">
						系列：
						<ul>
						<c:forEach items="${lookcar }" var="car" varStatus="js">
							<li class="huoqucar" onclick="lookx('${js.count-1}','${car.carid }')">${car.carname }</li>
						</c:forEach>
						</ul>
					</div>
					<!-- 配置 -->
					<div id="xxpeizhi">
						配置：
						<ul id="getpeizhi">
						</ul>
					</div>
					<!-- 颜色 -->
					<div id="textcont">
						<p id="xxsp1" style="float: left;">
							
						</p>
						<p id="xxsp2" style="float: left;">
							
						</p>
						<p id="xxsp3" style="float: left;">
							
						</p>
					</div>
				</div>
				<div style="clear: right;">
					
				</div>
				<div id="lookcark">
					<table class="table table-hover" id="newtables">
						<caption>车库</caption>
						<thead>
							<tr>
								<th>编号</th>
								<th>图片</th>
								<th>车名</th>
								<th>描述</th>
								<th>修改</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${lookcar }" var="car">
							<tr>
								<td>${car.carid }</td>
								<td><img src="${car.carimg }" style="width: 120px; height: 90px;"></td>
								<td>
									<input class="newcarname" type="text" value="${car.carname }" onblur="newcarnames(this)"  />
								</td>
								<td>
									<input class="newtext" type="text" value="${car.cartext }"  onblur="newcartexts(this)" />
								</td>
								<td><a href="javascript:void(0)" onClick="updatecarname('${car.carid }')">修改</a></td>
							</tr>
						</c:forEach>
						</tbody>
					</table>

				</div>
				<div style="height: 100px;">

				</div>
			</div>
		</div>
	</body>
<script type="text/javascript">
	
	/* 事实查看现状 */
	var carname=null;
	var pname=null;
	var colorname=null;
	function lookx(id,carid){
		$(".huoqucar").css("backgroundColor","#ffffff");
		$(".huoqucar").css("color","black");
		$(".huoqucar").eq(id).css("backgroundColor","#ffb400");
		$(".huoqucar").eq(id).css("color","#ffffff");
		$("#xxsp1").html("");
		$("#xxsp2").html("");
		$("#xxsp3").html("");
		
		var str=$(".huoqucar").eq(id).html();
		$("#xxsp1").html(str);
		carname=carid;
		console.log(carname);
	 	 $.ajax({
			              url:"${pageContext.request.contextPath}/lookpeizhiServlet",
			              async:true,
			              data:{"carid":carname},
			              success:function(data){
			            	  $("#newtables").html("");
			            	  $("#newtables").html("<caption>配置</caption>"+
			  						"<thead>"+
									"<tr>"+
										"<th>编号</th>"+
										"<th>图片</th>"+
										"<th>系列</th>"+
									"</tr>"+
								"</thead>");
			            	  var ts;
			            	  for(var i=0;i<data.length;i++){
			            		  $("#newtables").append("<tbody>"+
			            				  	"<tr>"+
												"<td>"+data[i].pid+"</td>"+
												"<td><img src='"+data[i].carimg+"' style='width: 120px; height: 90px;''></td>"+
												"<td>"+data[i].pname+"</td>"+
											"</tr>"+
										"</tbody>");
			            	  }
			            	  /* li */
			            	   $("#getpeizhi").html("");
			            	  for(var j=0;j<data.length;j++){
			            		  $("#getpeizhi").append("<li class='huoqup' onclick='lookp("+j+","+data[j].pid+")'>"+data[j].pname+"</li>");
			            	  }
			              },
			             type:"post",
			             dataType:"json"
			         }) 
	}

	function lookp(id,pid)
	{
		$(".huoqup").css("backgroundColor","#ffffff");
		$(".huoqup").css("color","black");
		$(".huoqup").eq(id).css("backgroundColor","#ffb400");
		$(".huoqup").eq(id).css("color","#ffffff");
		$("#xxsp2").html("");
		$("#xxsp3").html("");
		var str=$(".huoqup").eq(id).html();
		$("#xxsp2").html("&nbsp;&nbsp>>&nbsp;&nbsp"+str);
		pname=pid;
		     $.ajax({
              		url:"${pageContext.request.contextPath}/onepeizhiServlet",
              		async:true,
             		data:{"pid":pid},
              		success:function(data){
		            	  $("#newtables").html("");
		            	  $("#newtables").html("<caption>配置</caption>"+
		  						"<thead>"+
								"<tr>"+
									"<th>编号</th>"+
									"<th>系列</th>"+
									"<th>修改</th>"+
								"</tr>"+
							"</thead>");
		            	  $("#newtables").append(
		            			 "<tbody>"+
									"<tr>"+
										"<td>"+data.pid+"</td>"+
										"<td><input type='text' value='"+data.pname+"' onblur='newpnae(this)' /></td>"+
										"<td><a href='javascript:void(0)' onClick='uppeizhi("+data.pid+")'>修改</a></td>"+
									"</tr>"+
								"</tbody>");
              },
            		 type:"post",
             		 dataType:"json"
		         })
	}
//获取新配置名
var newpnames=null;
function newpnae(newpname){
	newpnames=$(newpname).val();
}
//返回新配置
function uppeizhi(pid){
    $.ajax({
  		url:"${pageContext.request.contextPath}/newpeizhiServlet",
  		async:true,
 		data:{"pid":pid,"newpnames":newpnames},
  		success:function(data){
        	  $("#newtables").html("");
        	  $("#newtables").html("<caption>配置</caption>"+
						"<thead>"+
					"<tr>"+
						"<th>编号</th>"+
						"<th>系列</th>"+
						"<th>修改</th>"+
					"</tr>"+
				"</thead>");
        	  $("#newtables").append(
        			 "<tbody>"+
						"<tr>"+
							"<td>"+data.pid+"</td>"+
							"<td><input type='text' value='"+data.pname+"' onblur='newpnae(this)' /></td>"+
							"<td><a href='javascript:void(0)' onClick='uppeizhi("+data.pid+")'>修改</a></td>"+
						"</tr>"+
					"</tbody>");
  },
		 type:"post",
 		 dataType:"json"
     })
}
	
	//新车名  描述
	var newcarname=null;
	var newcartext=null;
	function newcarnames(carname){
		newcarname=$(carname).val();
		console.log(newcarname);
	}
	function newcartexts(cartext){
		newcartext=$(cartext).val();
		console.log(newcartext);
	}
	
	//修改按钮 汽车信息
	function updatecarname(carid){
		$.ajax({
			              url:"${pageContext.request.contextPath}/updatecarServlet",
			              async:true,
			              data:{"newcarname":newcarname,"newcartext":newcartext,"carid":carid},
			              success:function(data){
			            	  $("#newtables").html("");
			            	  $("#newtables").html("<caption>车库</caption>"+
			  						"<thead>"+
									"<tr>"+
									"<th>编号</th>"+
									"<th>图片</th>"+
									"<th>车名</th>"+
									"<th>描述</th>"+
									"<th>修改</th>"+
									"</tr>"+
								"</thead>");
			            	  for(var i=0;i<data.length;i++){
			            		  $("#newtables").append("<tbody>"+
			            				  	"<tr>"+
												"<td>"+data[i].carid+"</td>"+
												"<td><img src='"+data[i].carimg+"' style='width: 120px; height: 90px;''></td>"+
												"<td><input class='newcarname' type='text' value='"+data[i].carname+"' onblur='newcarnames(this)'  /></td>"+
												"<td><input class='newtext' type='text' value='"+data[i].cartext+"'  onblur='newcartexts(this)' /></td>"+
												"<td><a href='javascript:void(0)' onClick='updatecarname("+data[i].carid+")'>修改</a></td>"+
											"</tr>"+
										"</tbody>");
			            	  }
			              },
			             type:"post",
			             dataType:"json"
			         })
	}
	
	//修改配置信息
	function updatepeizhiname(){
		
	}
	
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