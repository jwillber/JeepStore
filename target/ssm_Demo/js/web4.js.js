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
		var bss= 0;
		// 全局变量
		var asd= 0;
		//sss变量用于控制
		var sss=0;
		var bl= 1;
		var gdttop = 0;
// 		window.onwheel=function(e){
// 			var gdttop = $(document).scrollTop();
// 			var aaa = e.deltaY;
// 			 console.log(gdttop);	
// 						
// 						
// 		}
		function asdql(){
			asd=0;
		}
		// 全局变量函数    用于终止 鼠标轮动
		function onmsgd(){
			sss=1;
		}
		function outmsgd(){
			sss=0;
		}
		
	// $(document).scroll(function (e)
	window.onwheel=function(bbb){
		
			
		var aaa = bbb.deltaY;
		console.log(aaa);
		
		
			// gdttop = $(document).scrollTop();
			// console.log(aaa);
			
		// 直接跳转到某个滚动高度
		 // aaa小于0 向上滚动
			if(aaa > 0 && asd == 0 && sss == 0){ 
				asd++;
				// bss为标识，让页面知道自己滚到你感到第几个  块 
				bss++;
				//  测量出640为本页面 的  显示固定块的   滚动高度    所以bl高度变量 * 上640，就是第几个块的高度
				 // 例如   第一块的滚动高度 是640    那么1*640  就是 显示第一块
				bl = bss*640;
				// console.log(bss);
				// 640  此值为  每次滚动高度
				$('body,html').animate({scrollTop:bl},'slow');
				
				gdttop = $('body,html').scrollTop();
				
				// console.log(gdttop);
				setTimeout("asdql()",1500);
			}
			if(aaa < 0 && asd == 0 && sss == 0){
				asd++;
				// 当bss已经为0之后,再向上滚动会出现负数,并且伴随bug出现,所以在此如果已经滚动到顶部,那么bss一直为0,防止负数出现
				if(bss == 0){
					bss=0;
					// console.log(bss);
				}
				
				if(bss > 0){
					bss--;
				}
				
				// 同理防止负高度出现
				//bl为高度的变量
				bl = bl - 640;
				if(bl == 0){
					bl=0;
				}
				$('body,html').animate({scrollTop:bl},'slow');
				gdttop = $('body,html').scrollTop();
				setTimeout("asdql()",1500);
				
			}
// 			
			
			
			// ===============================================================================================
		gdttop = $('body,html').scrollTop();
		//console.log(gdttop);
		//1滚动事件     当鼠标轮滚向下时  bss加1   所以收起
		if(bss > 0){
			$("#heard").slideUp("normal");
			$("#zhanweidiv1").slideUp("normal");
			$("#toptoptop").slideUp("normal");
		}
		// 1滚动事件    当鼠标滚轮向上到顶部时    bss清零  所以
		if(bss == 0){
			
			$("#heard").slideDown("normal");
			$("#zhanweidiv1").slideDown("normal");
			$("#toptoptop").slideDown("normal");
		}
		
		// 第二个导航栏跟随
		// 1滚动事件   bss标识来控制  每块对应的横条 
		if(bss == 0 ){
			
			$("#lscx").css("border-bottom","3px solid #f8be00");
			$("#txjlb").css("border-bottom","none");
		}
		if( bss == 1){
			$("#txjlb").css("border-bottom","3px solid #f8be00");
			$("#lscx").css("border-bottom","none");
		}
		if( bss == 2 ){
			$("#jrfw").css("border-bottom","3px solid #f8be00");
			$("#lscx").css("border-bottom","none");
			$("#txjlb").css("border-bottom","none");
		}
		else if(bss < 2){
			$("#jrfw").css("border-bottom","none");
		}
		
		
		
		
		
		};
		
		// 点击事件   的隐藏黄条      展开标题栏
		function lscx(){
				
				$('body,html').animate({scrollTop:'0'},'slow');
				bss=0;
				if(bss == 0){
					
					$("#heard").slideDown("normal");
					$("#zhanweidiv1").slideDown("normal");
					$("#toptoptop").slideDown("normal");
				}
				if(bss == 0 ){
					
					$("#lscx").css("border-bottom","3px solid #f8be00");
					$("#txjlb").css("border-bottom","none");
					$("#jrfw").css("border-bottom","none");
				}
				
				
			}
		function txjlb(){
			
			$('body,html').animate({scrollTop:'640'},'slow');
			bss=1;
			bl=640;
			
			if(bss > 0){
				$("#heard").slideUp("normal");
				$("#zhanweidiv1").slideUp("normal");
				$("#toptoptop").slideUp("normal");
			}
			
			if( bss == 1){
				$("#txjlb").css("border-bottom","3px solid #f8be00");
				$("#lscx").css("border-bottom","none");
				$("#jrfw").css("border-bottom","none");
			}
		}
		function jrfw(){
			
			$('body,html').animate({scrollTop:'1280'},'slow');
			bss=2;
			bl=1280;
			
			
			if(bss > 0){
				$("#heard").slideUp("normal");
				$("#zhanweidiv1").slideUp("normal");
				$("#toptoptop").slideUp("normal");
			}
			
			
			if( bss == 2 ){
				$("#jrfw").css("border-bottom","3px solid #f8be00");
				$("#lscx").css("border-bottom","none");
				$("#txjlb").css("border-bottom","none");
			}
			else
			{
				$("#jrfw").css("border-bottom","none");
			}
			
		}
// 		function zyxzh(){
// 			
// 			$('body,html').animate({scrollTop:'2621'},'slow');
// 			
// 		}
// 		function cxjxs(){
// 			
// 			$('body,html').animate({scrollTop:'3599'},'slow');
// 		
// 			
// 		}
// 		
// 		function yysj(){
// 			
// 			$('body,html').animate({scrollTop:'4481'},'slow');
// 		}
		
		//公司新闻  title的动画
			function gsxwtit(xxll){
				$(".title-bord").css("display","none");
				$(".title-bord").eq(xxll).css("display","block");
				
				$(".xinwenneirong-content").css("display","none");
				$(".xinwenneirong-content").eq(xxll).css("display","block");
				// 清空方向标识
				xzz = 0;
			}
		
		
		
		// 旋转按钮=====和下拉动画===========================================================================
		// 此参数用于箭头向上向下的   确定   
		var xzz = 0;
		// xl参数控制方向标志, xl2控制展开的项
			function buttanxs(xl,xl2){  
			var csz = 0;
			var zuizhonhz = 180;
				if(xzz == 0){
					$(xl).rotate({angle: csz, animateTo: zuizhonhz, });
					$("#"+xl2).animate({height:'970px'},500);
					xzz++;
				}
				else
				if(xzz == 1){
					csz = 180;
					zuizhonhz = 0;
					$(xl).rotate({angle: csz, animateTo: zuizhonhz, });
					$("#"+xl2).animate({height:'207px'},300);
					xzz = 0;
				}
				
			}
		
		
		
		
		// 放上鼠标显示二维码
		function onmserweima(){
			
			$("#onms-erweima").css("display","block");
			
		}
		
		// 鼠标移开隐藏二维码
		function outmserweima(){
			
			$("#onms-erweima").css("display","none");
			
		}
		
		
		
		
		
		// 返回顶部
			function rttop(){
				// 返回顶部
				$('body,html').animate({scrollTop:'0'},'slow');
				
				// console.log(gdttop);
				bss=0;
				if(bss == 0){
					
					$("#heard").slideDown("normal");
					$("#zhanweidiv1").slideDown("normal");
					$("#toptoptop").slideDown("normal");
					
					if(bss == 0 ){
						
						$("#lscx").css("border-bottom","3px solid #f8be00");
						$("#txjlb").css("border-bottom","none");
						$("#jrfw").css("border-bottom","none");
					}
					
				}
			}