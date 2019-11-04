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
				if(gdttop < 758){
					
					$("#lscx").css("border-bottom","3px solid #f8be00");
					$("#txjlb").css("border-bottom","none");
				}
				if( gdttop > 757 && gdttop < 1540){
					$("#txjlb").css("border-bottom","3px solid #f8be00");
					$("#lscx").css("border-bottom","none");
				}
				if( gdttop > 1539 && gdttop < 2334){
					$("#jrfw").css("border-bottom","3px solid #f8be00");
					$("#lscx").css("border-bottom","none");
					$("#txjlb").css("border-bottom","none");
				}
				else
				{
					$("#jrfw").css("border-bottom","none");
				}
				if(gdttop >2333 && gdttop < 3116){
					$("#zyxzh").css("border-bottom","3px solid #f8be00");
					$("#jrfw").css("border-bottom","none");
					$("#lscx").css("border-bottom","none");
					$("#txjlb").css("border-bottom","none");
				}
				else{
					$("#zyxzh").css("border-bottom","none");
				}
				
				if(gdttop > 3103  ){
					$("#cxjxs").css("border-bottom","3px solid #f8be00");
					$("#zyxzh").css("border-bottom","none");
					$("#jrfw").css("border-bottom","none");
					$("#lscx").css("border-bottom","none");
					$("#txjlb").css("border-bottom","none");
				}
				else
				{
					$("#cxjxs").css("border-bottom","none");
				}
				
			
				
		
		
		});
		
		 
		// 鼠标点击显li边框     更换背景图片            更换颜色
		function djquan(aa,bb,cc){
			if(aa == 0){
				$("#jpqjj-main-content-title").css("background-image","url(image/web3/bj-1.png)");
			}
			if(aa == 1){
				$("#jpqjj-main-content-title").css("background-image","url(image/web3/bj-2.png)");
			}
			if(aa == 2){
				$("#jpqjj-main-content-title").css("background-image","url(image/web3/bj-3.png)");
			}
			$(".caokongbk").css("border","none");
			$(".caokongbk").eq(aa).css("border","1px solid #fabe00");
			
			$(".limian").css("background-color","black");
			$(".limian").eq(bb).css("background-color","#fabe00");
			
			$(".jpqjj-main-content-neirong").css("display","none");
			$(".jpqjj-main-content-neirong").eq(cc).css("display","block");
		}
		
		
		// 车主权益事件
function jrfuwu(){
	
	$("#jr-border").css("display","block");
	$("#jinrongfuwu-none").css("display","block");
	
	$("#jsq-border").css("display","none");
	$("#jrjsq-none").css("display","none");
}
function jrjsq(){
	$("#jr-border").css("display","none");
	$("#jinrongfuwu-none").css("display","none");
	
	$("#jsq-border").css("display","block");
	$("#jrjsq-none").css("display","block");
	
	
}		
		// 车主服务js事件====================================================================

			function chezhufuwu(x,cc){
				
				if( x == 0){
					$("#qje-b").css("display","block");
					$("#jiuyuan-b").css("display","none");
					$("#huanbao-b").css("display","none");
					$("#chejia-b").css("display","none");
					$("#tuijian-b").css("display","none");
				}
				if(x == 1){
					$("#qje-b").css("display","none");
					$("#jiuyuan-b").css("display","block");
					$("#huanbao-b").css("display","none");
					$("#chejia-b").css("display","none");
					$("#tuijian-b").css("display","none");
				}
				if(x == 2){
					$("#qje-b").css("display","none");
					$("#jiuyuan-b").css("display","none");
					$("#huanbao-b").css("display","block");
					$("#chejia-b").css("display","none");
					$("#tuijian-b").css("display","none");
				}
				if(x == 3){
					$("#qje-b").css("display","none");
					$("#jiuyuan-b").css("display","none");
					$("#huanbao-b").css("display","none");
					$("#chejia-b").css("display","block");
					$("#tuijian-b").css("display","none");
				}
				if(x == 4){
					$("#qje-b").css("display","none");
					$("#jiuyuan-b").css("display","none");
					$("#huanbao-b").css("display","none");
					$("#chejia-b").css("display","none");
					$("#tuijian-b").css("display","block");
				}
				$(".ycxs").css("display","none");
				$(".ycxs").eq(x).css("display","block");
				
			}
			
				// 车主服务下方的图片上来
				var mal = 0;
				function bottomimg(){
					
					if(mal == 0){
						$("#neirong1").animate({marginTop:"-515px"},1500);
						mal++;
					}
					else
					if(mal == 1){
						$("#neirong1").animate({marginTop:"0px"},1500);
						mal=0;
					}
				}
				// 参加活动鼠标移上显示二维码
				function onerweima(){
					$("#erweima").css("display","block");
				}
				// 鼠标移开 隐藏二维码
				function outerweima(){
					$("#erweima").css("display","none");
					
				}
				
				
			//=====================================================================================
			
			// 个人信息三级联动==========================================================================================
				$(document).ready(function(){
									var b1;
									var b2;
									var bprovnice = ['山东','黑龙江','北京'];
									var bcity =[['淄博','桓台','临淄'],['齐齐哈尔','松花江','屯门'],['东城','西城','朝阳']];
									var bcountry =[[['张店久盛','周村jeep','淄博克莱斯'],['桓台jeep售后','桓台久盛'],['临淄克莱斯勒jeep','临淄Bigjeep']],[['齐齐哈尔进口','久盛全球店'],['松花江越野俱乐部','jeep之家'],['屯门牧马人','jeep段友之家']],[['北京东城店','东城专卖店'],['西城服务售后','JEEP'],['jeep环球旅行','jeep中国']]];
								
									$(function () { for(var i=0;i<bprovnice.length;i++){ 
										$('#shengfen-2-select').append('<option>'+bprovnice[i]+'</option>');
										};
										$('#shengfen-2-select').change(function () { $('#form-city-select').children().not(':eq(0)').remove();
											
											$('#jingxiaoshang-select').children().not(':eq(0)').remove();
											b1 = $(this).children('option:selected').index();
											var abcity = bcity[b1-1];
											
											for(var j=0;j<abcity.length;j++){ 
												$('#form-city-select').append('<option>'+abcity[j]+'</option>');
												} });
												
										$('#form-city-select').change(function () { $('#jingxiaoshang-select').children().not(':eq(0)').remove();
										
											b2 = $(this).children('option:selected').index();
											
											var abcountry = bcountry[b1-1][b2-1];
											
											for(var k=0;k<abcountry.length;k++){ 
												$('#jingxiaoshang-select').append('<option>'+abcountry[k]+'</option>');
											} }) }) 
								
							});
					
					
					// 底部汽车联动
					// 下拉列表联动
							var iNum1;
					        var iNum2;
					        var aProvince = ['进口全新大切诺基','全新指南者','进口牧马人','全新自由光','全新自由侠','全新Jeep大指挥官'];
					        var aCity =
							[
								[
								'3.0L 舒享导航版',
								'3.0TD 舒享导航版',
								'3.0L精英导航版',
								'3.6L 精英导航版',
								'3.0TD 高性能四驱版',
								'3.6L 豪华导航版',
								'3.6L 旗舰尊耀版',
								],
								[
								'200T 劲享版',
								'200T 驭享版',
								'200T 舒享版',
								'200T 悦享版',
								'200T 家享版',
								'200T 家享四驱版',
								'200T 臻享版',
								'200T 臻享四驱版',
								'200TS 高性能四驱版',
								],
								[
								'2.8TD Sahara四门舒享版',
								'3.0L Sahara四门舒享版',
								'3.6L Rubicon两门舒享版',
								'3.6L Rubicon四门舒享版'
								],
								[
								'2.0L 领先版',
								'2.0L 优越版',
								'2.4L 领先版',
								'2.4L 领先版+智能包',
								'2.4L 专业版',
								'2.4L 专业版+智能包',
								'2.4L 卓越版',
								'2.4L 优越版',
								'2.4L 全能版'
								],
								[
								'180T 动能版',
								'180T 动能版+',
								'180T 高能版',
								'180T 劲能版',
								'180T 智能版',
								'180T 智能敞篷版',
								'180TS 越能版',
								'180TS 越能敞篷版',
								'180TS 全能版',
								'180TS 全能敞篷版',
								],
								[
								'2.0T两驱畅享版',
								'2.0T两驱进享版',
								'2.0T四驱智享版',
								'2.0T四驱尊享导航版',
								'2.0T四驱御享版',
								]
							];
					        
					  
					       $(function () { 
							    for(var i=0;i<aProvince.length;i++){ 
									$('#selProvince').append('<option>'+aProvince[i]+'</option>');
								};
					            $('#selProvince').change(function () {
									$('#selCity').children().not(':eq(0)').remove();
					               
								   // 汽车图片显示
								  
								   
									$('#selCountry').children().not(':eq(0)').remove();
					                iNum1 = $(this).children('option:selected').index();
					                var aaCity = aCity[iNum1-1];
					                
									for(var j=0;j<aaCity.length;j++){ 
										$('#selCity').append('<option>'+aaCity[j]+'</option>');
									} 
								});
								var manei = null;		
					            $('#selCity').change(function () { 
									
									$('#selCountry').children().not(':eq(0)').remove();
								
								
									
									
									
									
					                iNum2 = $(this).children('option:selected').index();
									
					                var aaCountry = aCountry[iNum1-1][iNum2-1];
									
					                for(var k=0;k<aaCountry.length;k++){ 
										$('#selCountry').append('<option>'+aaCountry[k]+'</option>');
					            } }) 
								
								
								
								
							}) 
					
					
				
							
			
			
			// =============================================================================================================
			///////////////////////--------------------------------------------------------------底部表单验证	
			function yz(){
				var ttttt = $("#tiaoyue-dianji").prop("checked");
				console.log(ttttt);
				if($("#form-name").val()==""){
					alert("输入用户名！");
				}
				
				if($("#tell").val()==""){
					alert("输入正确的手机号！");
				}
				if(ttttt == false){
					alert("请阅读并勾选隐私声明~");
				}
			};
			
			
			
		// 历史车型跳转
			function lscx(){
				
				$('body,html').animate({scrollTop:'0'},'slow');
				
			}
		function txjlb(){
			
			$('body,html').animate({scrollTop:'758'},'slow');
			
		}
		function jrfw(){
			
			$('body,html').animate({scrollTop:'1540'},'slow');
			
		}
		function zyxzh(){
			
			$('body,html').animate({scrollTop:'2334'},'slow');
			
		}
		function cxjxs(){
			
			$('body,html').animate({scrollTop:'3104'},'slow');
		
			
		}
		
// 		function yysj(){
// 			
// 			$('body,html').animate({scrollTop:'4481'},'slow');
// 		}
		
		
		
		
		
		
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