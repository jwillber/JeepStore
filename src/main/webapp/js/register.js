
//正则全局变量
var znum=0;

//微信显示
	function onweixin(){
		$("#weixin-onms").css("display","block");
	}
	function outweixin(){
		$("#weixin-onms").css("display","none");
	}
	
	
	function xieyi()
	{
		var zhuangtai=$("#zc-xieyi").prop('checked');
		if(zhuangtai==true)
		{
			$("#tj").css("backgroundColor","#ffb400");
		}
		if(zhuangtai==false)
		{
			$("#tj").css("backgroundColor","#7c7c7c");
		}
	}
	
	
	function anniu()
	{znum++;
		var zhuangtai=$("#zc-xieyi").prop('checked');
		if(zhuangtai==true)
		{
			$("#tj").removeAttr("disabled");
			
		}
		if(zhuangtai==false)
		{
			$("#tj").attr("disabled","disabled");
			znum--;
		}
	}
	
	/* ===================================================================================  正则 */
	/* 姓名 */
	function uuname()
	{
		var uname=$(".ze1-2").val();
		var zuname = /^[\u4E00-\u9FA5]{1,6}$/;
		if(zuname.test(uname))
		{
			$(".ze1-1").attr("class","form-group ze1-1 has-success");
			$(".ze1-2").attr("id","inputSuccess");
			znum++;
		}else{
			$(".ze1-1").attr("class","form-group ze1-1 has-error");
			$(".ze1-2").attr("id","inputError");
			/* alert("输入中文姓名！"); */
			$("#alert-1").html("输入中文姓名!<div id='okokok' onclick='alertt()' style='cursor: pointer; width: 100px; height: 40px; margin: 0 auto; background-color: #ffb400; margin-top: 35px; text-align: center; line-height: 40px;'>确定</div>");
			$("#alert-2").css("display","block");
			
		}
	}
	
	/* 密码 */
	/* 密码 */
	function upwd()
	{
		
		var zupwd=/^[A-Za-z][A-Za-z0-9]{5,11}$/;
		var upwd=$(".ze2-2").val();
		 console.log(zupwd.test(upwd)); 
		if(zupwd.test(upwd))
		{
			$(".ze2-1").attr("class","form-group ze2-1 has-success");
			$(".ze2-2").attr("id","inputSuccess");
			znum++;
		}else{
			$(".ze2-1").attr("class","form-group ze2-2 has-error");
			$(".ze2-2").attr("id","inputError");
			/* alert("密码格式错误！"); */
			$("#alert-1").html("密码格式错误!<div id='okokok' onclick='alertt()' style='cursor: pointer; width: 100px; height: 40px; margin: 0 auto; background-color: #ffb400; margin-top: 35px; text-align: center; line-height: 40px;'>确定</div>");
			$("#alert-2").css("display","block");
		}
	}
	
	
	
	/* 身份证号 */

	
	/* 手机号正则 */
	function sjh()
	{
		var zsjh=/^1[34578]\d{9}$/;
		var usjh=$(".ze5-2").val();
		if(zsjh.test(usjh))
		{
			$(".ze5-1").attr("class","form-group ze5-1 has-success");
			$(".ze5-2").attr("id","inputSuccess");
			znum++;
		}else{
			$(".ze5-1").attr("class","form-group ze5-2 has-error");
			$(".ze5-2").attr("id","inputError");
			/* alert("手机号不正确！"); */
			$("#alert-1").html("手机号不正确!<div id='okokok' onclick='alertt()' style='cursor: pointer; width: 100px; height: 40px; margin: 0 auto; background-color: #ffb400; margin-top: 35px; text-align: center; line-height: 40px;'>确定</div>");
			$("#alert-2").css("display","block");
		}
	}
									
									
		/* 关闭提示框 */
		function alertt()
		{
			$("#alert-2").css("display","none");
		}
		
		
		

