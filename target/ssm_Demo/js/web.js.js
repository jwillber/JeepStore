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

// 监视滚动条事件--------------------------------------------------------------------

	$(document).scroll(function (){
		
			var gdttop = $(document).scrollTop();
		console.log(gdttop);
		if(gdttop > 100){
			$("#heard").slideUp("normal");
			$("#zhanweidiv1").slideUp("normal");
			$("#toptoptop").slideUp("normal");
		}
		if(gdttop < 10){
			
			$("#heard").slideDown("normal");
			$("#zhanweidiv1").slideDown("normal");
			$("#toptoptop").slideDown("normal");
		}
		
		// 第二个导航栏跟随
		if(gdttop < 1354){
			
			$("#lscx").css("border-bottom","3px solid #f8be00");
			$("#txjlb").css("border-bottom","none");
		}
		if( gdttop > 1354){
			$("#txjlb").css("border-bottom","3px solid #f8be00");
			$("#lscx").css("border-bottom","none");
		}
	});
// 历史车型跳转
	function lscx(){
		
		$('body,html').animate({scrollTop:'0'},'slow');
		
	}
function txjlb(){
	
	$('body,html').animate({scrollTop:'1355'},'slow');
	
}
// ------------------------------------------------------------------------


// 局部滚动条事件

	function yearsgundong(){
		
		var yearsgd = $("#years-content").scrollTop();
		// console.log(yearsgd);
		
		if(yearsgd > 0 && yearsgd < 878){
			$(".ligd").css("border-bottom","none");
			$("#ycdiv1").css("display","block");
		}
		else
		{
			$("#ycdiv1").css("display","none");
		}
		
		if(yearsgd > 878 && yearsgd < 1444){
			$(".ligd").css("border-bottom","none");
			$("#ycdiv2").css("display","block");
		}
		else
		{
			$("#ycdiv2").css("display","none");
		}
		
		if(yearsgd >1444 && yearsgd < 1732){
			$(".ligd").css("border-bottom","none");
			$("#ycdiv3").css("display","block");
		}
		else
		{
			$("#ycdiv3").css("display","none");
		}
		
		if(yearsgd > 1732 && yearsgd < 2348){
			$(".ligd").css("border-bottom","none");
			$("#ycdiv4").css("display","block");
		}
		else
		{
			$("#ycdiv4").css("display","none");
		}
		
		if(yearsgd > 2348 && yearsgd < 2633){
			$(".ligd").css("border-bottom","none");
			$("#ycdiv5").css("display","block");
		}
		else
		{
			$("#ycdiv5").css("display","none");
		}
		
		if(yearsgd > 2633 && yearsgd < 2931){
			$(".ligd").css("border-bottom","none");
			$("#ycdiv6").css("display","block");
		}
		else
		{
			$("#ycdiv6").css("display","none");
		}
		
		if(yearsgd > 2931 && yearsgd < 3231){
			$(".ligd").css("border-bottom","none");
			$("#ycdiv7").css("display","block");
		}
		else
		{
			$("#ycdiv7").css("display","none");
		}
		
		if(yearsgd > 3231 ){
			$(".ligd").css("border-bottom","none");
			$("#ycdiv8").css("display","block");
		}
		else
		{
			$("#ycdiv8").css("display","none");
		}
	}
// 局部滚动条事件   数字横杠隐藏显示

// 点击

function lidj(li,bs){
	

	$(".ligd").css("border-bottom","none");
	$("#"+li).css("border-bottom","2px solid #f8be00");

	var ttt = $("#"+li).attr("bs");

	if(ttt == 1){
		$("#years-content").scrollTop(0);
	}
	

	if(ttt == 2){
		$("#years-content").scrollTop(878);
		}
	if(ttt == 3){
		$("#years-content").scrollTop(1444);
	}
	if(ttt == 4){
		$("#years-content").scrollTop(1732);
	}
	
	if(ttt == 5){
		$("#years-content").scrollTop(2348);
	}
	if(ttt == 6){
		$("#years-content").scrollTop(2633);
	}

	if(ttt == 7){
		$("#years-content").scrollTop(2931);
	}


	if(ttt == 8){
		$("#years-content").scrollTop(3231);
	}

}
// 鼠标移上显示
window.onload=function(){
	
	$(".ht").css("display","none");
}

function onlixs(lii){
	
	$("#"+lii).css("display","block");
	
}
// 鼠标移开隐藏

function ouliyc(liii){
	
	$("#"+liii).css("display","none");
	
}


// ----------------------------------------------------------
// 小轮播图-------------------------------------------------------
// 定义一个左marging
// var ml = -880;
// function gundongimgl(tmdimg){
// 	
// 	$("#gundongkuang").css("margin-left",ml);
// 	// $(".lit").css("opacity",0);
// 	
// 	ml = ml-880;
// 	if(ml == -2640){
// 		ml=0;
// 	}
// }
//计数
	var js = 0;
	// var imgg = $(".imggd");
	// 定义一个循环初始值
	var q = 0;
	function imgleft(jishux){
		// 控制图片张数
		// 向左
	
			if( jishux == '0'){
				
				js++;
				
				console.log(js);
			
			}
			else
			{
				js--;
				
			}
			
			if(js > 2 ){
				
				js=0;
				
			}
			if( js < 0 ){
				js=2;
			}
			// 三个点
			if(js == 0){
				$("#lixx1").css('background-color', '#fabe00');
				$("#lixx2").css('background-color', '#323232');
				$("#lixx3").css('background-color', '#323232');
			}
			if(js == 1){
				$("#lixx1").css('background-color', '#323232');
				$("#lixx2").css('background-color', '#fabe00');
				$("#lixx3").css('background-color', '#323232');
			}
			if(js == 2){
				$("#lixx1").css('background-color', '#323232');
				$("#lixx2").css('background-color', '#323232');
				$("#lixx3").css('background-color', '#fabe00');
			}
			$(".imggd").css("display","none");
			// $(".imggd").eq(js).css("display","block");
			 // 渐隐渐入
			$(".imggd").eq(js).fadeIn(); 
	}

function lidiaoxian(numli){
	js = numli;
	imgleft();
	
}


// 返回顶部
	function rttop(){
		// 返回顶部
		$('body,html').animate({scrollTop:'0'},'slow');
		
		// console.log(gdttop);
		
	}



// 放上鼠标显示二维码
		function onmserweima(){
			
			$("#onms-erweima").css("display","block");
			
		}
		
		// 鼠标移开隐藏二维码
		function outmserweima(){
			
			$("#onms-erweima").css("display","none");
			
		}
		
		
		// 优酷视频显示和播放暂停功能
		function ykvido(){
			$("#jizhipaoku-vido").css("display","block");
			$("#yk").attr("src","https://player.youku.com/embed/XMTU5OTE4MDUxNg==?client_id=0464de39d95a41e3&amp;password=&amp;autoplay=true#www.jeep.com.cn");
			console.log("s");
		}
		
		function yincangyk(){
			$("#jizhipaoku-vido").css("display","none");
			$("#yk").attr("src","https://player.youku.com/embed/XMTU5OTE4MDUxNg==?client_id=0464de39d95a41e3&amp;password=&amp;#www.jeep.com.cn");
		}
		
		// autoplay=true  自动播放属性