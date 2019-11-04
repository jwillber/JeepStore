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

		// 放上鼠标显示二维码
		function onmserweima(){
			
			$("#onms-erweima").css("display","block");
			
		}
		
		// 鼠标移开隐藏二维码
		function outmserweima(){
			
			$("#onms-erweima").css("display","none");
			
		}
		