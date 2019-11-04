
/* 左侧下拉动画 */
var height1=0;
var height2=0;
function carkh()
{
	if(height1==1)
	{
		$("#cark").animate({height:'44px'});
		$("#cark-name").css("background-image","url(image/jeepadmin/arrow_black.png)");
		height1=0;
	}
	else
	{
		$("#cark").animate({height:'158px'});
		$("#cark-name").css("background-image","url(image/jeepadmin/arrow_black2.png)");
		height1++;
	}
}

/* 订单 */
function carding()
{
	if(height2==1)
	{
		$("#carding").animate({height:'44px'});
		$("#carding-name").css("background-image","url(image/jeepadmin/arrow_black.png)");
		height2=0;
	}
	else
	{
		$("#carding").animate({height:'87px'});
		$("#carding-name").css("background-image","url(image/jeepadmin/arrow_black2.png)");
		height2++;
	}
}

