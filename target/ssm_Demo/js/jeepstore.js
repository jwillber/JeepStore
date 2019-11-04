
//rukou
window.onload = function(){
	
	goimg();

	
}
	//微信显示
	function onweixin(){
		$("#weixin-onms").css("display","block");
	}
	function outweixin(){
		$("#weixin-onms").css("display","none");
	}
	
	
	//轮播图
	//margin距离
	var left=0;
	var dian=0;
	var dong=setInterval("goimg()",2500);
	function goimg(){
		if(left<-1349)
		{
			left=0;
			dian=0;
		}
		var s=$("#go-img").animate({marginLeft:left+'px'},"slow");
		left=left-1349;

		$(".dian1").css("background-color","white");
		$(".dian1").eq(dian).css("background-color","#ffb300");
		dian++;
		//console.log(s);
	}
	
	function dddj(tzsz){
		
		clearInterval(dong);
		
		switch (tzsz){
			
			case '0':
				left = 0;
			break;
				
			case '1':
				left = -1349;
				break;
		}

		dian = tzsz;
		
		goimg();
		dong = setInterval("goimg()",2500);
	}