	//微信显示
	function onweixin(){
		$("#weixin-onms").css("display","block");
	}
	function outweixin(){
		$("#weixin-onms").css("display","none");
	}
	
	
	/* 汽车展示柜 */
	
	function showcar(id)
	{
		$(".big-img").css("display","none");
		$(".big-img").eq(id).css("display","block");
	}
	

	
	
	/* 选择汽车配置动画 */


	
	function onmos(id)
	{
		$(".lidh").css("border","1px solid #808080");
		$(".lidh").eq(id).css("border","1px solid #ffb400");
	}
	
	function outmos()
	{
		var i=0;
		$(".lidh").css("border","1px solid #808080");
/* 		$(".lidh").each(function(i){
			console.log($(this).css("borderColor"));
			alert($(this).css("borderColor"));
			i++;
		}); */
	}
	

	
		function onmos2(id)
		{
			$(".lidh2").css("border","1px solid #808080");
			$(".lidh2").eq(id).css("border","1px solid #ffb400");
		}
		
		function outmos2()
		{
			var i=0;
			$(".lidh2").css("border","1px solid #808080");
/* 	 		$(".lidh").each(function(i){
				console.log($(this).css("border"));
				i++;
				console.log(i);
			}); */
			/* var c=$(".lidh2").css("border-color");
			console.log(c); */
		}
	
	/* 汽车配置标题li */
	function btli(id,imgid)
	{
		$(".lidh3").css("background-color","#ebebeb");
		$(id).css("background-color","#f6c645");
		$(".bottom-img").css("display","none");
		$(".bottom-img").eq(imgid).css("display","block");
	}