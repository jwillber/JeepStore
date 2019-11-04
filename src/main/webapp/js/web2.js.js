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
		if(gdttop < 708){
			
			$("#lscx").css("border-bottom","3px solid #f8be00");
			$("#txjlb").css("border-bottom","none");
		}
		if( gdttop > 707 && gdttop < 1675){
			$("#txjlb").css("border-bottom","3px solid #f8be00");
			$("#lscx").css("border-bottom","none");
		}
		if( gdttop > 1675 && gdttop < 2638){
			$("#jrfw").css("border-bottom","3px solid #f8be00");
			$("#lscx").css("border-bottom","none");
			$("#txjlb").css("border-bottom","none");
		}
		else
		{
			$("#jrfw").css("border-bottom","none");
		}
		if(gdttop >2620 && gdttop < 3599){
			$("#zyxzh").css("border-bottom","3px solid #f8be00");
			$("#jrfw").css("border-bottom","none");
			$("#lscx").css("border-bottom","none");
			$("#txjlb").css("border-bottom","none");
		}
		else{
			$("#zyxzh").css("border-bottom","none");
		}
		
		if(gdttop > 3598 && gdttop < 4480 ){
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
		
		if(gdttop > 4480){
			$("#yysj").css("border-bottom","3px solid #f8be00");
			$("#cxjxs").css("border-bottom","none");
			$("#zyxzh").css("border-bottom","none");
			$("#jrfw").css("border-bottom","none");
			$("#lscx").css("border-bottom","none");
			$("#txjlb").css("border-bottom","none");
		}
		else
		{
			$("#yysj").css("border-bottom","none");
		}
		
		
			
	});
	// 最底部的   下拉联动============================================================================================================================
		var b1;
		var b2;
		var bprovnice = ['山东','黑龙江','北京'];
		var bcity =[
			['淄博','桓台','临淄'],
			['齐齐哈尔','松花江','屯门'],
			['东城','西城','朝阳']
			];
		var bcountry =[[['张店久盛','周村jeep','淄博克莱斯勒'],['桓台jeep售后','桓台久盛'],['临淄克莱斯勒jeep','临淄Bigjeep']],[['齐齐哈尔进口','久盛全球店'],['松花江越野','jeep之家'],['屯门牧马人','jeep段友之家']],[['北京东城店','东城专卖店'],['西城服务售后','JEEP'],['jeep环球旅行','jeep中国']]];
	
		$(function () { 
			for(var i=0;i<bprovnice.length;i++){ 
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
	
	
// 历史车型跳转
	function lscx(){
		
		$('body,html').animate({scrollTop:'0'},'slow');
		
	}
function txjlb(){
	
	$('body,html').animate({scrollTop:'708'},'slow');
	
}
function jrfw(){
	
	$('body,html').animate({scrollTop:'1676'},'slow');
	
}
function zyxzh(){
	
	$('body,html').animate({scrollTop:'2621'},'slow');
	
}
function cxjxs(){
	
	$('body,html').animate({scrollTop:'3599'},'slow');

	
}

function yysj(){
	
	$('body,html').animate({scrollTop:'4481'},'slow');
}

// 下拉列表联动
		var iNum1;
        var iNum2;
        var aProvince = ['全新Jeep自由侠','Jeep指南者','进口Jeep大切诺基'];
        var aCity =[
			['200T 家享版 ￥179800','200T 劲享版 ￥159800','200T 驭享版 ￥166800'],
			['180T 高能版 ￥149800','180T 动能版 ￥134800','180T 动能版+ ￥139800'],
			['3.0L 舒享导航版 ￥529900','3.0L精英导航版 ￥559900','3.6L 精英导航版 ￥594900']
			];
        var aCountry =[[['全款'],['全款'],['全款']],[['全款'],['全款'],['全款']],[['全款'],['全款'],['全款']]];
  
       $(function () { 
		    for(var i=0;i<aProvince.length;i++){ 
				$('#selProvince').append('<option>'+aProvince[i]+'</option>');
			};
            $('#selProvince').change(function () {
				$('#selCity').children().not(':eq(0)').remove();
               
			   // 汽车图片显示
			   if($("#selProvince").val() == '全新Jeep自由侠'){
				   
				   $("#car-img1").css("display","none");
				   
				   $("#car-img2").css("display","block");
				   $("#car-img3").css("display","none");
			   }
			   if($("#selProvince").val() == 'Jeep指南者'){
				   
				   $("#car-img1").css("display","block");
				   
				   $("#car-img2").css("display","none");
				   $("#car-img3").css("display","none");
			   }
			   
			   if($("#selProvince").val() == '进口Jeep大切诺基'){
				   $("#car-img1").css("display","none");
				   
				   $("#car-img2").css("display","none");
				   
				   $("#car-img3").css("display","block");
			   }
			   
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
			
			// 自由侠
				if($("#selCity").val() == '200T 家享版 ￥179800'){
					
					$("#left-qianshu").html("179.800");
					manei ="179.800";
					// $("#right-qianshu").html("179.800");
				}
				
				if($("#selCity").val() == '200T 劲享版 ￥159800'){
					
					$("#left-qianshu").html("159.800");
					manei ="159.800";
				}
			
				if($("#selCity").val() == '200T 驭享版 ￥166800'){
					
					$("#left-qianshu").html("166.800");
					manei = "166.800";
				}
			// 指南者
				if($("#selCity").val() == '180T 高能版 ￥149800'){
					
					$("#left-qianshu").html("149.800");
					manei = "149.800";
				}
				if($("#selCity").val() == '180T 动能版 ￥134800'){
					
					$("#left-qianshu").html("134.800");
					manei = "134.800";
				}
				if($("#selCity").val() == '180T 动能版+ ￥139800'){
					
					$("#left-qianshu").html("139.800");
					manei = "139.800";
				}
			
				// 大切诺基
				if($("#selCity").val() == '3.0L 舒享导航版 ￥529900'){
					
					$("#left-qianshu").html("529.900");
					manei = "529.900";
				}
				if($("#selCity").val() == '3.0L精英导航版 ￥559900'){
					
					$("#left-qianshu").html("559.900");
					manei = "559.900";
				}
				if($("#selCity").val() == '3.6L 精英导航版 ￥594900'){
					
					$("#left-qianshu").html("594.900");
					manei = "594.900";
				}
				
				
				
				
                iNum2 = $(this).children('option:selected').index();
				
                var aaCountry = aCountry[iNum1-1][iNum2-1];
				
                for(var k=0;k<aaCountry.length;k++){ 
					$('#selCountry').append('<option>'+aaCountry[k]+'</option>');
            } }) 
			
			
			
			$('#selCountry').change(function(){
				
				if($('#selCountry').val() == '全款'){
					
					var aaaa = $('#selCountry').val();
					$("#right-qianshu").html(manei);
					// console.log(aaaa);
				}
				
			})
		}) 
				
				
				///////////////////////////////////////////////////////////////////////分割
				

// 金融服务div事件

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




///////////////////////////////////查询经销商联动下拉-----------------------------------------------------------------------------------------
//------------------------------------------//-----------、
		var a1;
        var a2;
        var sd = ['山东'];
        var sd2 =[['淄博','滨州','烟台','威海','济南','潍坊','青岛','济宁','菏泽','临沂','枣庄','日照','聊城','德州']];
        
  
       $(function () { for(var i=0;i<sd.length;i++){ 
		   $('#sf').append('<option>'+sd[i]+'</option>');
            };
            $('#sf').change(function () { $('#quxian').children().not(':eq(0)').remove();
               
				$('#selCountry').children().not(':eq(0)').remove();
                a1 = $(this).children('option:selected').index();
                var asd2 = sd2[a1-1];
                
				for(var j=0;j<asd2.length;j++){ 
					$('#quxian').append('<option>'+asd2[j]+'</option>');
					} });
					
            $('#quxian').change(function () { $('#selCountry').children().not(':eq(0)').remove();
			
                a2 = $(this).children('option:selected').index();
				
                var aaCountry = aCountry[a1-1][a2-1];
				
                for(var k=0;k<aaCountry.length;k++){ 
					$('#selCountry').append('<option>'+aaCountry[k]+'</option>');
                } }) }) 

//------------------------------------------------------------------------------------------------------------------------------------
// 返回顶部
	function rttop(){
		// 返回顶部
		$('body,html').animate({scrollTop:'0'},'slow');
		
		// console.log(gdttop);
		
	}




var ppp = 0;
function xzcar(carcolor){
	
	var ttt = $(".car-class").eq(carcolor).css("background-color");
	// console.log(ttt);
	if(ttt == "rgb(235, 235, 235)"){
		if(ppp < 4){
			ppp++;
			$(".car-class").eq(carcolor).css("background-color","#c7c7c9");
			$(".div-fuxuan").eq(carcolor).css("background-image","url(image/web2/selected.png)");
			// console.log(ppp);
		}
		else
		{
			alert("只能选择四个！");
		}
			
	}
	else
	{
		ppp--;
		$(".car-class").eq(carcolor).css("background-color","rgb(235, 235, 235)");
		$(".div-fuxuan").eq(carcolor).css("background-image","none");
		// console.log(ppp);
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
		
		
		
	
		window.onload = function(){
			// 点击出现淄博的经销商{}
			$("#quxian").change(function(){
				
				if($('#quxian').val() == '淄博'){
					console.log(1);
					$("#liebiao-main-content").css("display","block");
					
				}
				
				
			});
			
			
			
			// 百度地图--------------------------------------------------------------------------------------------------------------------------
			// var BMap = '';
			
			var map = new BMap.Map("chaxunjingxiaoshang-map",{minZoom:5,maxZoom:12}); 
			var point = new BMap.Point(118.05, 36.8);
		
			map.centerAndZoom(point, 15); 
			
			setTimeout(function(){
				map.enableDragging();   //两秒后开启拖拽
				//map.enableInertialDragging();   //两秒后开启惯性拖拽
			}, 2000);
			
				var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT});// 左上角，添加比例尺
				var top_left_navigation = new BMap.NavigationControl();  //左上角，添加默认缩放平移控件
				var top_right_navigation = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL}); //右上角，仅包含平移和缩放按钮
			/*缩放控件type有四种类型:
			BMAP_NAVIGATION_CONTROL_SMALL：仅包含平移和缩放按钮；BMAP_NAVIGATION_CONTROL_PAN:仅包含平移按钮；BMAP_NAVIGATION_CONTROL_ZOOM：仅包含缩放按钮*/
			
			//添加控件和比例尺
			
				map.addControl(top_left_control);        
				map.addControl(top_left_navigation);     
				// map.addControl(top_right_navigation);  
				
				
				
				
					var pt = new BMap.Point(118.05,36.8);
					var myIcon = new BMap.Icon("image/web2/point.png", new BMap.Size(31,41));
					var marker2 = new BMap.Marker(pt,{icon:myIcon});  // 创建标注
					map.addOverlay(marker2);  
					
					var pt = new BMap.Point(118.0,36.84);
					var myIcon = new BMap.Icon("image/web2/point.png", new BMap.Size(31,41));
					var marker2 = new BMap.Marker(pt,{icon:myIcon});  // 创建标注
					map.addOverlay(marker2);  
					
					
					var pt = new BMap.Point(118.06,36.7);
					var myIcon = new BMap.Icon("image/web2/point.png", new BMap.Size(31,41));
					var marker2 = new BMap.Marker(pt,{icon:myIcon});  // 创建标注
					map.addOverlay(marker2);  
					
					
// 					var sContent ="天安门坐落在中国北京市中心,故宫的南侧,与天安门广场隔长安街相望,是清朝皇城的大门...";
// 					var point = new BMap.Point(118.06,36.7);
// 					// map.centerAndZoom(point, 15);
// 					var infoWindow = new BMap.InfoWindow(sContent);  // 创建信息窗口对象
// 					map.openInfoWindow(infoWindow,point); //开启信息窗口
		}
		
		
		
		// 通过li地图跳转-=======================================================================~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		
			// 鼠标经过变换颜色
			function carli(xh){
				
				$(".car-li").css("background-color","white");
				$(".car-li").eq(xh).css("background-color","#eaeaea");
			}
			
			
			
			
			
			// 鼠标点击跳转地图
			function carli1(){
				
					var map = new BMap.Map("chaxunjingxiaoshang-map",{minZoom:5,maxZoom:12}); 
					var point = new BMap.Point(118.05, 36.8);
				
					map.centerAndZoom(point, 15); 
					
					setTimeout(function(){
					map.enableDragging();   //两秒后开启拖拽
				//map.enableInertialDragging();   //两秒后开启惯性拖拽
					}, 2000);
					
					// 创建提示框
					var sContent ="<div style='margin:0px;width:400px; height:200px'><img src='image/web2/li1.png' style='width:100%;' ><div class='map-car-li'>预约试驾</div></div>";
					var point = new BMap.Point(118.05,36.8);
					// map.centerAndZoom(point, 15);
					var infoWindow = new BMap.InfoWindow(sContent);  // 创建信息窗口对象
					map.openInfoWindow(infoWindow,point); //开启信息窗口
					
					
					// 创建标注
					var pt = new BMap.Point(118.05,36.8);
					var myIcon = new BMap.Icon("image/web2/point.png", new BMap.Size(31,41));
					var marker2 = new BMap.Marker(pt,{icon:myIcon});  // 创建标注
					map.addOverlay(marker2);  
					
					var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT});// 左上角，添加比例尺
					var top_left_navigation = new BMap.NavigationControl();  //左上角，添加默认缩放平移控件
					var top_right_navigation = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL}); //右上角，仅包含平移和缩放按钮
					/*缩放控件type有四种类型:
					BMAP_NAVIGATION_CONTROL_SMALL：仅包含平移和缩放按钮；BMAP_NAVIGATION_CONTROL_PAN:仅包含平移按钮；BMAP_NAVIGATION_CONTROL_ZOOM：仅包含缩放按钮*/
					
					//添加控件和比例尺
					
					map.addControl(top_left_control);        
					map.addControl(top_left_navigation);     
					
				
			}
			
			
			function carli2(){
				
					var map = new BMap.Map("chaxunjingxiaoshang-map",{minZoom:5,maxZoom:12}); 
					var point = new BMap.Point(118.0,36.84);
				
					map.centerAndZoom(point, 15); 
					
					setTimeout(function(){
					map.enableDragging();   //两秒后开启拖拽
				//map.enableInertialDragging();   //两秒后开启惯性拖拽
					}, 2000);
					
					// 创建提示框
					var sContent ="<div style='margin:0px;width:400px; height:200px'><img src='image/web2/li2.png' style='width:100%;' ><div class='map-car-li'>预约试驾</div></div>";
					var point = new BMap.Point(118.0,36.84);
					// map.centerAndZoom(point, 15);
					var infoWindow = new BMap.InfoWindow(sContent);  // 创建信息窗口对象
					map.openInfoWindow(infoWindow,point); //开启信息窗口
					
					
					// 创建标注
					var pt = new BMap.Point(118.0,36.84);
					var myIcon = new BMap.Icon("image/web2/point.png", new BMap.Size(31,41));
					var marker2 = new BMap.Marker(pt,{icon:myIcon});  // 创建标注
					map.addOverlay(marker2);    
					
					var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT});// 左上角，添加比例尺
					var top_left_navigation = new BMap.NavigationControl();  //左上角，添加默认缩放平移控件
					var top_right_navigation = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL}); //右上角，仅包含平移和缩放按钮
					/*缩放控件type有四种类型:
					BMAP_NAVIGATION_CONTROL_SMALL：仅包含平移和缩放按钮；BMAP_NAVIGATION_CONTROL_PAN:仅包含平移按钮；BMAP_NAVIGATION_CONTROL_ZOOM：仅包含缩放按钮*/
					
					//添加控件和比例尺
					
					map.addControl(top_left_control);        
					map.addControl(top_left_navigation);     
					
				
			}
			
			
			function carli3(){
				
					var map = new BMap.Map("chaxunjingxiaoshang-map",{minZoom:5,maxZoom:12}); 
					var point = new BMap.Point(118.06,36.7);
				
					map.centerAndZoom(point, 15); 
					
					setTimeout(function(){
					map.enableDragging();   //两秒后开启拖拽
				//map.enableInertialDragging();   //两秒后开启惯性拖拽
					}, 2000);
					
					// 创建提示框
					var sContent ="<div style='margin:0px;width:400px; height:200px'><img src='image/web2/li3.png' style='width:100%;' ><div class='map-car-li'>预约试驾</div></div>";
					var point = new BMap.Point(118.06,36.7);
					// map.centerAndZoom(point, 15);
					var infoWindow = new BMap.InfoWindow(sContent);  // 创建信息窗口对象
					map.openInfoWindow(infoWindow,point); //开启信息窗口
					
					
					// 创建标注
					var pt = new BMap.Point(118.06,36.7);
					var myIcon = new BMap.Icon("image/web2/point.png", new BMap.Size(31,41));
					var marker2 = new BMap.Marker(pt,{icon:myIcon});  // 创建标注
					map.addOverlay(marker2);    
					
					var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT});// 左上角，添加比例尺
					var top_left_navigation = new BMap.NavigationControl();  //左上角，添加默认缩放平移控件
					var top_right_navigation = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL}); //右上角，仅包含平移和缩放按钮
					/*缩放控件type有四种类型:
					BMAP_NAVIGATION_CONTROL_SMALL：仅包含平移和缩放按钮；BMAP_NAVIGATION_CONTROL_PAN:仅包含平移按钮；BMAP_NAVIGATION_CONTROL_ZOOM：仅包含缩放按钮*/
					
					//添加控件和比例尺
					
					map.addControl(top_left_control);        
					map.addControl(top_left_navigation);     
					
				
			}
			
			
			
			
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
			
			
			
			
					
// 					
	// 最底部的汽车选择试驾===========================================================================================================================================
				function zxc(szzz){
					
					$(".carxxx").css("background-color","#ebebeb");
					$(".carxxx").eq(szzz).css("background-color","#c7c7c9");
					
				}