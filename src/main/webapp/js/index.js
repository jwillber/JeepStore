     // 鼠标移上  品牌车型
function oncars(){    
	// 换颜色
	$("#oncar").children("a").css("color","black");
	$("#oncar").css("background-color","white");
	
	// 隐藏下箭头   显示上箭头
	$("#xiabiao").css("display","none");
	$("#shangbiao").css("display","block");
	// 隐藏得汽车列表显示
	$("#hid-car").css("display","block");
	// console.log("a");
}

// 鼠标移开   品牌车型
function outcars(){
	// 换颜色
	$("#oncar").children("a").css("color","white");
	$("#oncar").css("background-color","black");
	
	// 显示下箭头   隐藏上箭头
	$("#xiabiao").css("display","block");
	$("#shangbiao").css("display","none");
	// 显示得汽车列表隐藏
	$("#hid-car").css("display","none");
}

// 鼠标移上li标签
function onli(a,data){
	$(a).css("background-color","#cdced0");
	$(".yincangcar").css("display","none");
	$("#"+data).css("display","block");
}
// 鼠标移开li标签
function outli(b){
	$(b).css("background-color","white"); 
}



// 轮播图-----------------------------------------------------------------
// 加载页面调用函数
		window.onload = function(){
			// 调用轮播图
			goleft();
			// 控制第一张图片的大小   用于汽车滚动图
			$("#a" + ll).animate({width:'115%',height:'115%'});
			
		}
		var donghua = setInterval("goleft()",2500);
		// 计数
		var img = 0;  
		// left-margin  滚动距离
		var i = 0;
		// 小点的class获取
		// var dongtai = $(".dongtai");
		// 定义一个空循环
		var t = 0;
		
		function goleft(){
			  // 清空左边的距离   和  小点初始化
			if(i < -6745){     
				i=0;
				img = 0;
				t = 0;
			}
			
			
			// $("#gundong-neirong-content").css("margin-left",i);
			
			  $("#gundong-neirong-content").animate({left:i+'px'},"slow");
			 i = i - 1349;
			// console.log(img);
			
// 			for(var kk = 0; kk <=  $(".dongtai").length-1; kk++){
// 				
// 				
// 				
// 			}
			$(".dongtai").css("background-color","white");

			$(".dongtai").eq(img).css("background-color","#ffb300");

			// var oo = $(".dongtai").eq(img).css("background-color");

			// 计数第几张图
			img++;    
			// console.log( $(".dongtai").eq(0));
			// console.log(t);
			
		}
		
		// 点击小点跳转图片
		function dddj(tzsz){
			
			clearInterval(donghua);
			
			switch (tzsz){
				
				case '0':
					i = 0;
				break;
					
				case '1':
					i = -1349;
					break;
				
				case '2':
					i = -2698;
					break;
				
				case '3':
					i = -4047;
					break;
				
				case '4':
					i = -5396;
					break;
				
				case '5':
					i = -6745;
					break;
			}
			console.log(i);
			console.log(tzsz);
			img = tzsz;
			
			goleft();
			donghua = setInterval("goleft()",2500);
		}
		
		
		
		// 汽车轮播和放大缩小----------------------------------------------------
	
		// 定义一个margin-left变量
		var ii = -1399;
		// 标识
		var ll = 9;
		// 循环变量
		var mm = 0;
		
		
		
		function dianjileft(){
// 			
			$("#carmain-bigdiv").stop();
			if(ii != -2797){
				ii = ii - 233;
				$("#carmain-bigdiv").animate({marginLeft:ii + 'px'},"slow");
				console.log(ii);
			}
			else
				if(ii == -2797){
					ii = -1399;
					$("#carmain-bigdiv").css("margin-left",ii + "px");
					$("#carmain-bigdiv").animate({marginLeft:'-1632px'},"slow");
					ii = -1632;
				}
			ll++;
			if(ll == 16){
				
				ll=10;
			}
			for(mm = 0; mm < $(".xxx").length; mm++){
				
				$(".xxx").css("width","80%");
				$(".xxx").css("height","80%");
				
			}
			$("#a"+ll).animate({width:'110%',height:'110%'});
		}
		
		// 向右移动车
		function dianjiright(){
			
			$("#carmain-bigdiv").stop();
			if(ii != -1){
				ii = ii + 233;
				$("#carmain-bigdiv").animate({marginLeft:ii+'px'},"slow");
				console.log(ii);
			}
			else
				if(ii == -1){
					ii = -1399;
					$("#carmain-bigdiv").css("margin-left",ii + "px");
					$("#carmain-bigdiv").animate({marginLeft:'-1166px'},"slow");
					ii = -1166;
					console.log(ii);
				}
			ll--;
			if(ll == 2){
				
				ll = 8;
			}
			for(mm = 0; mm < $(".xxx").length; mm++){
				
				$(".xxx").css("width","80%");
				$(".xxx").css("height","80%");
				
			}
			$("#a"+ll).animate({width:'110%',height:'110%'});
		}
		
		
		// 下面三个小黄色线条----------------------------------------
		
		function onyellow(xianshi){
			
			$(".yellow-gang").css("display","none");
			$("#"+xianshi).css("display","block");
		}
		
		
		
		// 底部三个图片 js样式
		function sanimg(bianbg){
			
			// $("#"+bianbg).css("background-size","120% 120%");
			$("#"+bianbg).animate({backgroundSize:"120%"},"slow");
		}
		
		function sanimgx(bianbgx){
			
			$("#"+bianbgx).animate({backgroundSize:"100%"},"slow");
		}
		
		
		// 放上鼠标显示二维码
		function onmserweima(){
			
			$("#onms-erweima").css("display","block");
			
		}
		
		// 鼠标移开隐藏二维码
		function outmserweima(){
			
			$("#onms-erweima").css("display","none");
			
		}
		
		

		
		