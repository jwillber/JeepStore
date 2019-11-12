<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="${pageContext.request.contextPath}/image/index/timg.jpg" rel="SHORTCUT ICON"  /> <!-- title图片 -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mycar.css"/>
		<script src="${pageContext.request.contextPath}/js/jquery-3.3.1%20-%20xz.js" type="text/javascript"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/mycar.js"></script>
		
		<title>我的购物车-Jeep</title>
	</head>
	<body>
		<!-- 头部 ==================================================================================-->
		<div style="width: 100%; background-color: #000000; position: fixed; height:93px; z-index: 21;">
			<jsp:include page="heard.jsp" />
		</div>
		<div style="height: 93px;">
			
		</div>
		
		
		<!-- 购物车内容 -->
		<div style="width: 100%; background-color: #dadada; overflow: hidden;"> 
			<div id="mycar-bt">
				我的购物车
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
				
				<table border="0" cellspacing="" cellpadding="" class="table-css" id="ajaxcount">
				<c:if test="${empty goucar}">
					<div style="width:100%; height:200px; text-align: center; line-height: 100px; font-weight: bold;">
						还没有收藏~
					</div>
				</c:if>
					<c:forEach items="${goucar }" var="car" >
					<tr class="trb">
						<td style="width: 20px;">
							<input type="checkbox" names="aaa" name=${car.gid } id="" value="" onclick="onecbox('${car.gid}')" bs="${car.gid }" />
						</td>
						<td style="width: 180px">
							<img src="${pageContext.request.contextPath}/${car.carimg }" style="width: 85%;" >
						</td>
						<td style="width: 240px;">
							<span>
								${car.carname }
							</span>
						</td>
						<td style="width: 400px;">
							<span>
								${car.pname }
							</span><br />
							<p>
								${car.colorname }
							</p>
						</td>
						<td style="width: 150px;">
							<span style="color: #ff4500; display: block; margin: 0 auto; margin-top: 45px;">
								订金:¥ <span id="baba">${car.jiage }</span>
							</span>
							<div style="float: right; margin-top: 33px;">
								<img src="${pageContext.request.contextPath}/image/jeepmycar/delete.png" style="margin-right: 10px;" ><a href="javascript:void(0)" onClick="delmycar(${car.gid})">删除</a>
							</div>
						</td>
					</tr>
					</c:forEach>
					
					<!-- <tr class="trb">
						<td style="width: 20px;">
							<input type="checkbox" name="aaa" id="" value="" onclick="onecbox()" bs="1" />
						</td>
						<td style="width: 180px">
							<img src="image/jeepcarx/jkm/eb636c04-ff2f-4d70-8629-cd675e4d72f3-source.jpg" style="width: 85%;" >
						</td>
						<td style="width: 240px;">
							<span>
								牧马人
							</span>
						</td>
						<td style="width: 400px;">1
							<span>
								车型:3.6L Rubicon Recon 十年限量珍藏版 ￥549,90011111111111111
							</span><br />
							<p>
								颜色:111111111111111111111
							</p>
						</td>
						<td style="width: 150px;">
							<span style="color: #ff4500; display: block; margin: 0 auto; margin-top: 45px;">
								订金:¥ 8.8
							</span>
							<div style="float: right; margin-top: 33px;">
								<img src="image/jeepmycar/delete.png" style="margin-right: 10px;" ><a href="#">删除</a>
							</div>
						</td>
					</tr> -->
					
					
				</table>
				<div id="mycar-bottom">
					<div id="ch">
						<!-- <input type="checkbox" name="" id="all" value="" style="margin-right: 10px;" onclick="allcbox()" /><span style="font-size: 14px;">全选</span> -->
					</div><!-- 
					<div id="jiage" onClick="gojiesuan()">
						结算
					</div> -->
					<input type="submit" id="jiage"  style="border: none;" disabled="disabled" onClick="gojiesuan()"/>
					<div id="jiage2">
						总计:<span style="color: #ff4500;">¥</span>
						<span id="jiagehtml">
							 0
						</span>
					</div>
				</div>
				<!-- ======================================== -->
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
	
		function delmycar(gid)
		{
	        $.ajax( { type:"post",
				url:"${pageContext.request.contextPath}/user/delGouCar.do",
				data:{
					"gid":gid
				},
	            success: function (data) {
	            	//遍历数组
	            	/* alter(data); */
	        	 	/* $.each(data,function(n,item){
	        	 		
	           		 });  */
	           		/* $("#shopcar").html(data); */
	           		//清空原本回弹模量内容
	           		 $("#ajaxcount").html(""); 
	           		//添加新的返回内容
	           		
	           		data = eval("("+data+")");//让系统识别json格式
	           		$("#shopcar").html(data.count);
	           		var count=$("#shopcar").html();
	           		if(count==0){
	           			$("#ajaxcount").html("<div style='width:990px; height:200px; text-align: center; line-height: 100px; font-weight: bold; background-color: #dadada;'>还没有收藏~</div>");
	           		}
	           		/* console.log(data.goucarArr[0].carimg); */
	           		if(count>0){
	           		for(var i=0;i<data.goucarArr.length;i++){
	           				$("#ajaxcount").append("<tr class='trb'>"+
						"<td style='width: 20px;'>"+
							"<input type='checkbox' name='aaa' id='' value='' onclick='onecbox()' bs='1' />"+
						"</td>"+
						"<td style='width: 180px'>"+
							"<img src='"+data.goucarArr[i].carimg+"' style='width: 85%;' >"+
						"</td>"+
						"<td style='width: 240px;'>"+
							"<span>"+data.goucarArr[i].carname+
							"</span>"+
						"</td>"+
						"<td style='width: 400px;'>"+
							"<span>"+data.goucarArr[i].pname+
							"</span><br />"+
							"<p>"+data.goucarArr[i].colorname+
							"</p>"+
						"</td>"+
						"<td style='width: 150px;'>"+
							"<span style='color: #ff4500; display: block; margin: 0 auto; margin-top: 45px;'>"+
								"订金:¥ <span id='baba'>"+data.goucarArr[i].jiage+"</span>"+
							"</span>"+
							"<div style='float: right; margin-top: 33px;'>"+
								"<img src='image/jeepmycar/delete.png' style='margin-right: 10px;' ><a href='javascript:void(0)' onClick='delmycar("+data.goucarArr[i].gid+")'>删除</a>"+
							"</div>"+
						"</td>"+
					"</tr>");
		           		} 
	           		}
	           		/* console.log(data); */
	            }
	        }
	);
		}
	
//选择提交
	var names=document.querySelectorAll('input[names="aaa"]');
	var mycars=new Array("s");
	var ajx=0;
	/* 全选   全不选 */
	var ddd=0;
	function allcbox(){  
		//此变量用作按钮只读
		var tj=0;
		for(var k=0;k<names.length;k++)
		{
			if(names[k].checked==true){
				$("#jiage").prop("disabled","disabled");
			}
			if(names[k].checked==false){
				tj++;
				console.log(tj);
				if(tj==names.length)
					{
						$("#jiage").prop("disabled","");
					}
			}
		}
	  if($("#all").prop("checked")){
		$("[names='aaa']").prop("checked", true); 
		
		/* 循环 获取 */
		 	 		$("[names='aaa']").each(function(i){
/* 		 	 			if(mycars.length-1<=$("[name='aaa']").length){
		 	 				alert(1);
		 	 				var gid=$("[name='aaa']").eq(i).attr("bs");
		 	 				mycars.push(gid);
		 	 			}
		 	 			else if(mycars.length>$("[name='aaa']").length){
		 	 				mycars=["s"];
		 	 			} */
						ajx++;
						$("#jiagehtml").html(ajx*8.8);
					});
		console.log(mycars);
	  }else{ 
	  $("[names='aaa']").prop("checked", false);

	  	$("#jiagehtml").html(0);
			ajx=0;
	  }  
	}
	var j=0;
	
	
	/* 选择一个 */
	/* 初始化数组 */
		
	function onecbox(gid)
	{
		//此变量用作按钮只读
		var tj=0;
		//
		var js=0;
		var i=0;
		var arrs=0;
		/* mycars.push(gid); */
		for(var j=0;j<mycars.length;j++){
			if(mycars[j]==gid){
				mycars.splice(j, 1); 
				arrs++;
			}/* (mycars[j]!=gid) */
			
		}
		if(arrs==0){
			mycars.push(gid); 
		}
		arrs=0;
		console.log(mycars);
	
		var id=document.getElementById('jiagehtml');
		for(var k=0;k<names.length;k++)
		{
			if(names[k].checked==true){
				$("#jiage").prop("disabled","");
			}
			if(names[k].checked==false){
				tj++;
				console.log(tj);
				if(tj==names.length)
					{
						$("#jiage").prop("disabled","disabled");
					}
			} 
			if(names[k].checked)
			{
				js++;
				id.innerHTML=js*8.8;
				j=parseFloat(id.innerHTML);
			}
			if(js==0)
			{
				id.innerHTML=0;
			}
		}
	}
	
	function gojiesuan(){
		mycars.splice(0,1);
		console.log(mycars);
	 	location.href="${pageContext.request.contextPath}/moredingdanServlet?arr="+mycars;
	}
	
	</script>
</html>