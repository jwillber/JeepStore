<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="height:100%">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="image/index/timg.jpg" rel="SHORTCUT ICON" /> <!-- title图片 -->
		<link rel="stylesheet" type="text/css" href="layui/css/layui.css"/>
		<script type="text/javascript" src="layui/layui.js"></script>
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
					<div id="xxcolor">
						颜色：
						<ul id="getcolor">
							
						</ul>
					</div>
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
								<th>系列</th>
								<th>状态</th>
								<th>上架</th>
								<th>下架</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${lookcar }" var="car">
							<tr>
								<td>${car.carid }</td>
								<td><img src="${car.carimg }" style="width: 120px; height: 90px;"></td>
								<td>${car.carname }</td>
								<c:if test="${car.carzt==1 }">
									<td style="color:red;">停售</td>
								</c:if>
								<c:if test="${car.carzt==0 }">
									<td style="color:red;">在售</td>
								</c:if>
								<td><a href="javascript:void(0)" onClick="carup('${car.carid }')">上架</a></td>
								<td><a href="javascript:void(0)" onClick="cardow('${car.carid}')">下架</a></td>
							</tr>
						</c:forEach>
<!-- 							<tr>
								<td>1</td>
								<td><img src="image/jeepshowcar/znz.jpg" style="width: 120px; height: 90px;"></td>
								<td>新指南者</td>
								<td>是</td>
								<td><a>上架</a></td>
								<td><a>下架</a></td>
							</tr> -->
						</tbody>
					</table>

				</div>
				<div style="height: 100px;">

				</div>
			</div>
		</div>
	</body>
<script type="text/javascript">
	
	// 
		layui.use(['layer','laypage', 'layedit','form','table','laytpl'], function(){
  var layer = layui.layer,
  	form = layui.form,
  	$ = layui.$,
	table = layui.table,
	laytpl = layui.laytpl,
  	layedit = layui.layedit;
  
		});
	
	
	
	//
	
	/* 事实查看现状 */
	var carname=null;
	var pname=null;
	var colorname=null;
	function lookx(id,carid){
		$("#getcolor").html("");
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
										"<th>状态</th>"+
										"<th>上架</th>"+
										"<th>下架</th>"+
									"</tr>"+
								"</thead>");
			            	  var ts;
			            	  for(var i=0;i<data.length;i++){
			            		  if(data[i].pzt==0){
			            			  var ts="<td style='color:red;'>在售</td>";
			            		  }
			            		  if(data[i].pzt==1){
			            			  var ts="<td style='color:red;'>停售</td>";
			            		  }
			            		  $("#newtables").append("<tbody>"+
			            				  	"<tr>"+
												"<td>"+data[i].pid+"</td>"+
												"<td><img src='"+data[i].carimg+"' style='width: 120px; height: 90px;''></td>"+
												"<td>"+data[i].pname+"</td>"+
													ts+
												"<td><a href='javascript:void(0)' onClick='uppeizhi("+data[i].pid+")'>上架</a></td>"+
												"<td><a href='javascript:void(0)' onClick='dowpeizhi("+data[i].pid+")'>下架</a></td>"+
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
		/* alert(pname); */
		     $.ajax({
              		url:"${pageContext.request.contextPath}/lookcolorServlet",
              		async:true,
             		data:{"pid":pname},
              		success:function(data){
		            	  $("#newtables").html("");
		            	  $("#newtables").html("<caption>颜色</caption>"+
		  						"<thead>"+
								"<tr>"+
									"<th>编号</th>"+
									"<th>系列</th>"+
									"<th>状态</th>"+
								"</tr>"+
							"</thead>");
		            	  var ts;
		            	  for(var i=0;i<data.length;i++){
		            		  if(data[i].czt==0){
		            			  var ts="<td style='color:red;'>在售</td>";
		            		  }
		            		  if(data[i].czt==1){
		            			  var ts="<td style='color:red;'>停售</td>";
		            		  }
		            		  $("#newtables").append("<tbody>"+
		            				  	"<tr>"+
											"<td>"+data[i].colorid+"</td>"+
											"<td>"+data[i].colorname+"</td>"+
												ts+
										"</tr>"+
									"</tbody>");
		            	  }
		            	  $("#getcolor").html("");
		            	  for(var j=0;j<data.length;j++){
		            		  $("#getcolor").append("<li class='huoqucolor' onclick='lookc("+j+","+data[j].colorid+")'>"+data[j].colorname+"</li>");
		            	  }
              },
            		 type:"post",
             		 dataType:"json"
		         })
	}

	function lookc(id,colorid)
	{
		$(".huoqucolor").css("backgroundColor","#ffffff");
		$(".huoqucolor").css("color","black");
		$(".huoqucolor").eq(id).css("backgroundColor","#ffb400");
		$(".huoqucolor").eq(id).css("color","#ffffff");
		var str=$(".huoqucolor").eq(id).html();
		$("#xxsp3").html("");
		$("#xxsp3").html("&nbsp;&nbsp>>&nbsp;&nbsp"+str);
		colorname=colorid;
		          $.ajax({
			              url:"${pageContext.request.contextPath}/onelookcolorServlet",
			              async:true,
			              data:{"colorid":colorname,"pid":pname},
			              success:function(data){
		            		  if(data.czt==0){
		            			  var ts="<td style='color:red;'>在售</td>";
		            		  }
		            		  if(data.czt==1){
		            			  var ts="<td style='color:red;'>停售</td>";
		            		  }
			            	  $("#newtables").html("");
			            	  $("#newtables").html("<caption>颜色</caption>"+
				  						"<thead>"+
										"<tr>"+
											"<th>配置</th>"+
											"<th>颜色</th>"+
											"<th>名称</th>"+
											"<th>状态</th>"+
											"<th>上架</th>"+"<th>下架</th>"+
										"</tr>"+
									"</thead>");
		            		  $("#newtables").append("<tbody>"+
		            				  	"<tr>"+
											"<td>"+data.pid+"</td>"+
											"<td>"+data.colorid+"</td>"+
											"<td>"+data.colorname+"</td>"+
												ts+
												"<td><a href='javascript:void(0)' onClick='upcolor()'>上架</a></td>"+
												"<td><a href='javascript:void(0)' onClick='dowcolor()'>下架</a></td>"+
										"</tr>"+
									"</tbody>");
			            	  
			              },
			             type:"post",
			             dataType:"json"
			         })
	}
	

	function lookcar()
	{
		location.href="${pageContext.request.contextPath}/lookcarnameServlet";
	}
	
	//上架车
 	function carup(carid)
	{
		          $.ajax({
			              url:"${pageContext.request.contextPath}/carupServlet",
			              async:true,
			              data:{"carid":carid},
			              success:function(data){
			            	  layer.msg('成功'); 
			            	  $("#newtables").html("");
			            	  $("#newtables").html("<caption>车库</caption>"+
			  						"<thead>"+
									"<tr>"+
										"<th>编号</th>"+
										"<th>图片</th>"+
										"<th>系列</th>"+
										"<th>状态</th>"+
										"<th>上架</th>"+
										"<th>下架</th>"+
									"</tr>"+
								"</thead>");
			            	  for(var i=0;i<data.length;i++){
				            		  if(data[i].carzt==0){
				            			  var ts="<td style='color:red;'>在售</td>";
				            		  }
				            		  if(data[i].carzt==1){
				            			  var ts="<td style='color:red;'>停售</td>";
				            		  }
				            		  $("#newtables").append("<tbody>"+
				            				  	"<tr>"+
													"<td>"+data[i].carid+"</td>"+
													"<td><img src='"+data[i].carimg+"' style='width: 120px; height: 90px;''></td>"+
													"<td>"+data[i].carname+"</td>"+
														ts+
													"<td><a href='javascript:void(0)' onClick='carup("+data[i].carid+")'>上架</a></td>"+
													"<td><a href='javascript:void(0)' onClick='cardow("+data[i].carid+")'>下架</a></td>"+
												"</tr>"+
											"</tbody>");
			            	  }
			              },
			             type:"post",
			             dataType:"json"
				        })
	} 
	//下架汽车
	function cardow(carid){
        $.ajax({
            url:"${pageContext.request.contextPath}/cardowServlet",
            async:true,
            data:{"carid":carid},
            success:function(data){
            	layer.msg('成功'); 
          	  $("#newtables").html("");
          	  $("#newtables").html("<caption>车库</caption>"+
						"<thead>"+
						"<tr>"+
							"<th>编号</th>"+
							"<th>图片</th>"+
							"<th>系列</th>"+
							"<th>状态</th>"+
							"<th>上架</th>"+
							"<th>下架</th>"+
						"</tr>"+
					"</thead>");
          	  for(var i=0;i<data.length;i++){
	            		  if(data[i].carzt==0){
	            			  var ts="<td style='color:red;'>在售</td>";
	            		  }
	            		  if(data[i].carzt==1){
	            			  var ts="<td style='color:red;'>停售</td>";
	            		  }
	            		  $("#newtables").append("<tbody>"+
	            				  	"<tr>"+
										"<td>"+data[i].carid+"</td>"+
										"<td><img src='"+data[i].carimg+"' style='width: 120px; height: 90px;''></td>"+
										"<td>"+data[i].carname+"</td>"+
											ts+
										"<td><a href='javascript:void(0)' onClick='carup("+data[i].carid+")'>上架</a></td>"+
										"<td><a href='javascript:void(0)' onClick='cardow("+data[i].carid+")'>下架</a></td>"+
									"</tr>"+
								"</tbody>");
          	  }
            },
           type:"post",
           dataType:"json"
	        })
	}
	//下架配置
	function dowpeizhi(pid){
		          $.ajax({
			              url:"${pageContext.request.contextPath}/dowpeizhiServlet",
			              async:true,
			              data:{"pid":pid,"carid":carname},
			              success:function(data){
			            	  layer.msg('成功'); 
			            	  $("#newtables").html("");
			            	  $("#newtables").html("<caption>配置</caption>"+
			  						"<thead>"+
									"<tr>"+
									"<th>编号</th>"+
									"<th>图片</th>"+
									"<th>系列</th>"+
									"<th>状态</th>"+
									"<th>上架</th>"+
									"<th>下架</th>"+
									"</tr>"+
								"</thead>");
			            	  var ts;
			            	  for(var i=0;i<data.length;i++){
			            		  if(data[i].pzt==0){
			            			  var ts="<td style='color:red;'>在售</td>";
			            		  }
			            		  if(data[i].pzt==1){
			            			  var ts="<td style='color:red;'>停售</td>";
			            		  }
			            		  $("#newtables").append("<tbody>"+
			            				  	"<tr>"+
												"<td>"+data[i].pid+"</td>"+
												"<td><img src='"+data[i].carimg+"' style='width: 120px; height: 90px;''></td>"+
												"<td>"+data[i].pname+"</td>"+
													ts+
												"<td><a href='javascript:void(0)' onClick='uppeizhi("+data[i].pid+")'>上架</a></td>"+
												"<td><a href='javascript:void(0)' onClick='dowpeizhi("+data[i].pid+")'>下架</a></td>"+
											"</tr>"+
										"</tbody>");
			            	  }
			              },
			             type:"post",
			             dataType:"json"
			         })

	}
	
    
    //上架配置
    function uppeizhi(pid){
        $.ajax({
            url:"${pageContext.request.contextPath}/uppeizhiServlet",
            async:true,
            data:{"pid":pid,"carid":carname},
            success:function(data){
            	layer.msg('成功'); 
          	  $("#newtables").html("");
          	  $("#newtables").html("<caption>配置</caption>"+
						"<thead>"+
						"<tr>"+
						"<th>编号</th>"+
						"<th>图片</th>"+
						"<th>系列</th>"+
						"<th>状态</th>"+
						"<th>上架</th>"+
						"<th>下架</th>"+
						"</tr>"+
					"</thead>");
          	  var ts;
          	  for(var i=0;i<data.length;i++){
          		  if(data[i].pzt==0){
          			  var ts="<td style='color:red;'>在售</td>";
          		  }
          		  if(data[i].pzt==1){
          			  var ts="<td style='color:red;'>停售</td>";
          		  }
          		  $("#newtables").append("<tbody>"+
          				  	"<tr>"+
									"<td>"+data[i].pid+"</td>"+
									"<td><img src='"+data[i].carimg+"' style='width: 120px; height: 90px;''></td>"+
									"<td>"+data[i].pname+"</td>"+
										ts+
									"<td><a href='javascript:void(0)' onClick='uppeizhi("+data[i].pid+")'>上架</a></td>"+
									"<td><a href='javascript:void(0)' onClick='dowpeizhi("+data[i].pid+")'>下架</a></td>"+
								"</tr>"+
							"</tbody>");
          	  }
            },
           type:"post",
           dataType:"json"
       })
    }
	
    //下架颜色
    function dowcolor(){
        $.ajax({
            url:"${pageContext.request.contextPath}/dowcolorServlet",
            async:true,
            data:{"pid":pname,"colorid":colorname},
            success:function(data){
            	layer.msg('成功'); 
      		  if(data.czt==0){
      			  var ts="<td style='color:red;'>在售</td>";
      		  }
      		  if(data.czt==1){
      			  var ts="<td style='color:red;'>停售</td>";
      		  }
          	  $("#newtables").html("");
          	  $("#newtables").html("<caption>颜色</caption>"+
	  						"<thead>"+
							"<tr>"+
								"<th>配置</th>"+
								"<th>颜色</th>"+
								"<th>名称</th>"+
								"<th>状态</th>"+
								"<th>上架</th>"+"<th>下架</th>"+
							"</tr>"+
						"</thead>");
      		  $("#newtables").append("<tbody>"+
      				  	"<tr>"+
								"<td>"+data.pid+"</td>"+
								"<td>"+data.colorid+"</td>"+
								"<td>"+data.colorname+"</td>"+
									ts+
									"<td><a href='javascript:void(0)' onClick='upcolor()'>上架</a></td>"+
									"<td><a href='javascript:void(0)' onClick='dowcolor()'>下架</a></td>"+
							"</tr>"+
						"</tbody>");
          	  
            },
           type:"post",
           dataType:"json"
       })
    }
    //上架颜色
        function upcolor(){
        $.ajax({
            url:"${pageContext.request.contextPath}/upcolorServlet",
            async:true,
            data:{"pid":pname,"colorid":colorname},
            success:function(data){
            	layer.msg('成功'); 
      		  if(data.czt==0){
      			  var ts="<td style='color:red;'>在售</td>";
      		  }
      		  if(data.czt==1){
      			  var ts="<td style='color:red;'>停售</td>";
      		  }
          	  $("#newtables").html("");
          	  $("#newtables").html("<caption>颜色</caption>"+
	  						"<thead>"+
							"<tr>"+
								"<th>配置</th>"+
								"<th>颜色</th>"+
								"<th>名称</th>"+
								"<th>状态</th>"+
								"<th>上架</th>"+"<th>下架</th>"+
							"</tr>"+
						"</thead>");
      		  $("#newtables").append("<tbody>"+
      				  	"<tr>"+
								"<td>"+data.pid+"</td>"+
								"<td>"+data.colorid+"</td>"+
								"<td>"+data.colorname+"</td>"+
									ts+
									"<td><a href='javascript:void(0)' onClick='upcolor()'>上架</a></td>"+
									"<td><a href='javascript:void(0)' onClick='dowcolor()'>下架</a></td>"+
							"</tr>"+
						"</tbody>");
          	  
            },
           type:"post",
           dataType:"json"
       })
    }
		function updatecar()
		{
			location.href="${pageContext.request.contextPath}/updatecarnameServlet";
		}
	</script>
</html>