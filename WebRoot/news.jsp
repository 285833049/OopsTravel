<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <base href="<%=basePath%>">   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/jshowoffnews.css" type="text/css" media="screen, projection" />
<script type="text/javascript" src="js/jquery.min.js"></script> 
<script type="text/javascript" src="js/jquery.jshowoff.min.js"></script>

<title>资讯公告</title>

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: ##EDFDFC;
}

fieldset.search {
	border: none;
	width: 400px;
	margin: 0 auto;
	
}
.search input, .search button {
	border: none;
	float: left;
}
.search input.box {
	color: #0570ad;
	font-size: 1.5em;
	width: 321px;
	height: 30px;
	padding: 8px 5px 0;
	background: url(images/search_bg1.gif) no-repeat left top;
	margin-right: 5px;
}
.search input.box:focus {
	background:  url(images/search_bg1.gif) no-repeat left -38px;
	outline: none;
}
.search button.btn {
	width: 60px;
	height: 38px;
	cursor: pointer;
	text-indent: -9999px;
	background:  url(images/search_bg1.gif) no-repeat top right;	
}
.search button.btn:hover {
	background:  url(images/search_bg1.gif) no-repeat bottom right;	
}
#Layer2 {
	position:absolute;
	width:303px;
	height:45px;
	z-index:13;
	left: 439px;
	top: 110px;
	visibility: visible;
}
#Layer1 {
	position:absolute;
	width:200px;
	height:56px;
	z-index:7;
	left: 166px;
	top: 23px;
}
#Layer3 {
	position:absolute;
	width:200px;
	height:74px;
	z-index:9;
	left: 399px;
	top: 3px;
}
#Layer4 {
	position:absolute;
	width:200px;
	height:60px;
	z-index:8;
	left: 851px;
	top: 24px;
}
#Layer5 {
	position:absolute;
	width:950px;
	height:654px;
	z-index:5;
	left: 218px;
	top: 90px;
}
select {
	position:relative;
	font-size:18px;
	width:200px;
	border:10px;
	color:#248DE3;
	background-image: url(images/potion.png);
}
#Layer6 {
	position:absolute;
	width:1173px;
	height:236px;
	z-index:2;
	left: 166px;
	top: 17px;
}
#Layer7 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:13;
	left: 1px;
	top: 311px;
}
#Layer8 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:4;
	left: 931px;
	top: -4px;
}
#Layer9 {
	position:absolute;
	width:1351px;
	height:265px;
	z-index:11;
}
#Layer10 {
	position:absolute;
	width:1351px;
	height:2556px;
	z-index:10;
	left: 0px;
	top: 266px;
	background-color: #EDFDFC;
}
#Layer11 {
	position:absolute;
	width:128px;
	height:63px;
	z-index:1;
	left: 14px;
	top: 14px;
}
#Layer12 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:1;
}
#Layer13 {
	position:absolute;
	width:421px;
	height:115px;
	z-index:3;
	left: 825px;
	top: 36px;
}
#Layer14 {
	position:absolute;
	width:275px;
	height:44px;
	z-index:4;
	left: 971px;
	top: 2px;
}
#Layer15 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:3;
	left: 3px;
	top: 6px;
}
#Layer16 {
	position:absolute;
	width:104px;
	height:43px;
	z-index:4;
	left: 1116px;
	top: 0px;
}
#Layer17 {
	position:absolute;
	width:104px;
	height:45px;
	z-index:5;
	left: 1236px;
	top: 0px;
}
#Layer18 {
	position:absolute;
	width:231px;
	height:45px;
	z-index:6;
	left: 1117px;
	top: 2px;
}
.STYLE20 {	font-size: 24px;
	color: #0066FF;
	font-weight: bold;
	font-family: "Adobe 楷体 Std R", "Adobe 明體 Std L";
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
#Layer19 {
	position:absolute;
	width:898px;
	height:2137px;
	z-index:10;
	left: 139px;
	top: 138px;
}

#Layer20 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:11;
	left: 0px;
	top: 2756px;
}
#Layer21 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:11;
	left: 1037px;
	top: 50px;
}
#Layer22 {
	position:absolute;
	width:93px;
	height:103px;
	z-index:14;
	left: 1045px;
	top: 117px;
}
#Layer23 {
	position:absolute;
	width:92px;
	height:115px;
	z-index:15;
	top: 55px;
	left: 1116px;
}
#Layer24 {
	position:absolute;
	width:93px;
	height:113px;
	z-index:13;
	top: 58px;
	left: 1204px;
}
#Layer25 {
	position:absolute;
	width:93px;
	height:103px;
	z-index:12;
	top: 134px;
	left: 1262px;
}
#Layer26 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:11;
	left: 1089px;
	top: 173px;
}
#Layer27 {
	position:absolute;
	width:156px;
	height:115px;
	z-index:12;
	left: 16px;
	top: 234px;
}
#Layer28 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:12;
	left: 925px;
	top: 87px;
}
#Layer29 {
	position:absolute;
	width:133px;
	height:100px;
	z-index:14;
	left: 909px;
	top: 75px;
}
#Layer30 {
	position:absolute;
	width:147px;
	height:110px;
	z-index:15;
	left: 1153px;
	top: 0px;
}
#Layer31 {
	position:absolute;
	width:62px;
	height:92px;
	z-index:5;
	left: 1231px;
	top: 10px;
}
#Layer32 {
	position:absolute;
	width:148px;
	height:95px;
	z-index:16;
	left: 1037px;
	top: 111px;
}
#Layer33 {
	position:absolute;
	width:153px;
	height:121px;
	z-index:17;
	left: 1190px;
	top: 122px;
}
#Layer36 {	position:absolute;
	width:108px;
	height:69px;
	z-index:15;
	left: 1130px;
	top: 295px;
}
#Layer37 {	position:absolute;
	width:200px;
	height:47px;
	z-index:14;
	left: 1109px;
	top: 244px;
}
#Layer34 {
	position:absolute;
	width:100px;
	height:60px;
	z-index:14;
	left: 1244px;
	top: 30px;
}
#Layer35 {
	position:absolute;
	width:368px;
	height:355px;
	z-index:15;
	left: 8px;
	top: 193px;
}
.STYLE23 {font-family: "华康俪金黑W8(P)"; font-size: 30px; color: #1E387D; font-weight: bold; }
.STYLE25 {font-size: 16px; color: #000000; font-family:"微软雅黑" }

#Layerh1 {
	position:absolute;
	width:501px;
	height:251px;
	z-index:14;
	left: 208px;
	top: 202px;
}
.STYLE27 {font-size: 16px; color: #000000; font-family: "华康俪金黑W8(P)"; }
.STYLE28 {font-family: "华康俪金黑W8(P)"; font-size: 18px; color: #1E387D; font-weight: bold; }
#Layer38 {
	position:absolute;
	width:199px;
	height:47px;
	z-index:16;
	left: 1114px;
	top: 826px;
}
#Layer39 {
	position:absolute;
	width:1005px;
	height:256px;
	z-index:17;
	left: 205px;
	top: 881px;
	visibility:hidden;
}
-->

</style>
<script type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

function MM_showHideLayers() { //v6.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}

//-->
</script>


<script language="javascript">


var k=0; 
var imgname1="images/top";
var imgname2=".PNG"; 
var imgnub=5; 
function start(){ 
obj=eval("img1"); 
if (obj.filters.item(0).Transition==23)
obj.filters.item(0).Transition=1;
else
obj.filters.item(0).transition++;
obj.filters.item(0).Apply();
if (k<imgnub) {k++; 
}else
 {k=1;
}
obj.src=imgname1+k+imgname2;
obj.filters.item(0).Play();
setTimeout("start(1)",3000); 
}


</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>

<body onLoad="MM_preloadImages('images/back_banner11.png','images/back_banner20.png','images/back_banner31.png','images/飞机火车1.png','images/路线查询1.png','images/飞机1.png','images/火车1.png');start()">
<div id="Layer7"><img src="images/news.png" width="315" height="140" /></div>
<div id="Layer27"><img src="images/ballen.png" width="150" height="190" /></div>
<div id="Layer37"><a href="map.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image17','','images/map1.png',1)"><img src="images/map.png" name="Image17" width="220" height="55" border="0" id="Image17" /></a></div>
<div id="Layer36"><a href="airport.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image14','','images/air1.png',1)"><img src="images/air.png" name="Image14" width="107" height="73" border="0" id="Image14" /></a><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image16','','images/飞机火车1.png',1)"></a></div>
<div id="Layer9">
  <div id="Layer6"> <img id="img1" src="images/top1.PNG" width="1172" height="245" style="filter:revealTrans(Transition=1,Duration=1.5)" /></div>
<img src="images/back1.png" width="1351" height="267" />
<div id="Layer18">
  <table width="221" height="43" border="0">
    <tr>
      <td width="93" align="center" valign="middle"><span class="STYLE20"> <a href="login.jsp" class="STYLE20">登录</a></span></td>
      <td width="11">&nbsp;</td>
      <td width="103" align="center" valign="middle" class="STYLE20"><a href="zhuce.jsp" class="STYLE20">注册</a></td>
    </tr>
  </table>
</div>
<div id="Layer17"><img src="images/button1.png" width="102" height="42" /></div>
<div id="Layer16"><img src="images/button1.png" width="102" height="42" /></div>
<div id="Layer15"><img src="images/jiongtu.png" width="190" height="225" /></div>
</div>
<div id="Layer10">
  <div id="Layer2">
  </div>
  <div id="Layer3"><a href="city.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image3','','images/back_banner20.png',1)"><img src="images/back_banner21.png" alt="开始找景点" name="Image3" width="506" height="68" border="0" id="Image3" /></a></div>
  <div id="Layer4"><a href="luntan.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image4','','images/back_banner31.png',1)"><img src="images/back_banner30.png" alt="论坛" name="Image4" width="278" height="51" border="0" id="Image4" /></a></div>
  <div id="Layer1"><a href="index.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image2','','images/back_banner11.png',1)"><img src="images/back_banner10.png" alt="首页" name="Image2" width="278" height="51" border="0" id="Image2" /></a></div>
  <img src="images/back2.png" width="1351" height="953" />
  <div id="Layer39">
    <table width="1007" height="250" border="0">
    <s:iterator value="list" id="news">
      <tr>
        <!-- <td width="52" align="center"><span class="STYLE25">3、</span></td> -->
        <td width="618"><a href="NewsDetail.action?newsId=<s:property value="#news.newsId"/>" class="STYLE25"><s:property value="#news.newsTitle"/></a></td>
        <td width="323" align="center"><s:property value="#news.newsPublicTime"/></td>
      </tr>
    </s:iterator>
    </table>
    <!-- 下面加分页的功能 -->
 <!-- 首页 -->
  <s:url id="url_first" value="NewsInfo.action">
   <s:param name="pageNow" value="1"></s:param>
  </s:url>
  <!-- 上一页 -->
  <s:url id="url_pre" value="NewsInfo.action">
   <s:param name="pageNow" value="pageNow-1"></s:param>
  </s:url>
  <!-- 下一页 -->
  <s:url id="url_next" value="NewsInfo.action">
   <s:param name="pageNow" value="pageNow+1"></s:param>
  </s:url>
  <!-- 末页 -->
  <s:url id="url_last" value="NewsInfo.action">
   <s:param name="pageNow" value="pageTotle"></s:param>
  </s:url>
  <!-- 如果不是首页则提供首页的链接,如果是首页则不提供链接,以下类似 -->
  <s:if test="pageNow != 1">
            [<s:a href="%{url_first}">首页</s:a>]   
              </s:if>
  <s:else>
            [首页]
        </s:else>
  <s:if test="pageNow>1">
            [<s:a href="%{url_pre}">上一页</s:a>] 
        </s:if>
  <s:else>
            [上一页] 
        </s:else>
  <s:if test=" pageTotle > pageNow ">
            [<s:a href="%{url_next}">下一页</s:a>]
        </s:if>
  <s:else>
            [下一页]
        </s:else>
  <s:if test="pageTotle != pageNow">
            [<s:a href="%{url_last}">末页</s:a>]
        </s:if>
  <s:else>
            [末页]
        </s:else>
  第${pageNow}页/ 共${pageTotle}页
  </div>
  <div id="Layer38"><a href="javascript:;" onClick="MM_showHideLayers('Layer39','','show')"><img src="images/morenews.png" width="211" height="45"></a></div>
  <div id="Layerh1">
  <div id="features">
    <div><a href="newsdetail.jsp" >
      <h2 class="STYLE23">北京天安门</h2> 
    </a>
        <p class="STYLE25">天安门坐落在中国北京市中心，故宫的南端，与天安门广场隔长安街相望，是明清两代北京皇城的正门。设计者为明代的御用建筑匠师蒯祥。天安门始建与明朝永乐十五年（1417年），时称为承天门。清朝顺治八年（1651年）更名为天安门。1925年10月10日，国立故宫博物院成立，天安门开始对民众开放。1949年10月1日，在这里举行了中华人民共和国的开国大典，它由此被设计入国徽，并成了中华人民共和国的象征之一</p><a href="newsdetail.jsp" ><img src="images/beijing.jpg"  width="870" height="505" class="eddie" border="0" /></a></div>
    <div><a href="newsdetail.jsp" >
      <h2 class="STYLE1">黄山</h2> </a>
        <p class="STYLE25">黄山，位于安徽省南部黄山市境内（景区由市直辖），为三山五岳中三山之一。黄山为道教圣地，遗址遗迹众多，中华十大名山之一，有“天下第一奇山”之美誉。郦道元、李白、徐霞客等名士都曾在此留下壮美的诗篇和历史的足迹</p>
	  <a href="newsdetail.jsp"><img src="images/huangshan.jpg"  width="870" height="505" class="eddie" border="0"  /></a>    </div>
    <div><a href="newsdetail.jsp" >
      <h2 class="STYLE1">大连</h2> </a>
        <p class="STYLE25">
		大连，位于中国辽东半岛最南端，西北濒临渤海，东南面向黄海，是全国15个副省级城市之一、5个计划单列市之一、全国14个沿海开放城市之一；是中国东北主要的对外门户、东北亚国际航运中心、国际物流中心、区域性金融中心</p>
	  <a href="newsdetail.jsp"><img src="images/dalian.png"width="870" height="505" class="eddie" border="0"  /></a></div>
    <div><a href="newsdetail.jsp" >
      <h2 class="STYLE1">长白山</h2> </a>
        <p class="STYLE25">长白山是东北第一高峰，号称“东北屋脊”。长白山古时称，不咸山。其主峰是一座休眠的活火山，在清朝时曾多次喷发。火山口中为天池，因天池水怪的传说而成为旅游胜地。</p>
	  <a href="newsdetail.jsp"><img src="images/tianchi.png" width="870" height="505" class="eddie" border="0"  /></a></div>
		<div><a href="newsdetail.jsp" >
		  <h2 class="STYLE1">天安门</h2> </a>
        <p class="STYLE25">坐落在北京市的中心，与天安门广场隔长安街相望。是明清两代北京皇城的正门。始建于明永乐15年，最初名叫承天门，寓意承天启运，受命于天。</p>
	  <a href="newsdetail.jsp" ><img src="images/beijing.jpg"  width="870" height="505" class="eddie" border="0" /></a></div>
    <div><a href="newsdetail.jsp" >
      <h2 class="STYLE1">黄山</h2> </a>
        <p class="STYLE25">位于安徽省南部黄山市境内，为三山五岳中三山之一。黄山为道教圣地，遗址遗迹众多，有“天下第一奇山”之美誉。是中国最美的，最令人震撼的十大名山之一，同时也是著名的避暑圣地。</p>
	  <a href="newsdetail.jsp"><img src="images/huangshan.jpg"  width="870" height="505" class="eddie" border="0"  /></a>    </div>
    <div><a href="newsdetail.jsp" >
      <h2 class="STYLE1">大连</h2> </a>
        <p class="STYLE25">
		位于欧亚大陆的东岸，有着“浪漫之都”“北方香港”“时尚之都”的美誉。大连，毗邻大海，使得这里的气候四季宜人，冬暖夏凉。被誉为“最适宜人类居住的地方。”</p>
	  <a href="newsdetail.jsp"><img src="images/dalian.png"width="870" height="505" class="eddie" border="0"  /></a></div>
    <div><a href="newsdetail.jsp" >
      <h2 class="STYLE1">长白山</h2> </a>
        <p class="STYLE25">长白山是东北第一高峰，号称“东北屋脊”。长白山古时称，不咸山。其主峰是一座休眠的活火山，在清朝时曾多次喷发。火山口中为天池，因天池水怪的传说而成为旅游胜地。</p>
	  <a href="newsdetail.jsp"><img src="images/tianchi.png" width="870" height="505" class="eddie" border="0"  /></a></div>
		<div><a href="newsdetail.jsp" >
		  <h2 class="STYLE1">天安门</h2> </a>
        <p class="STYLE25">坐落在北京市的中心，与天安门广场隔长安街相望。是明清两代北京皇城的正门。始建于明永乐15年，最初名叫承天门，寓意承天启运，受命于天。</p>
	  <a href="newsdetail.jsp" ><img src="images/beijing.jpg"  width="870" height="505" class="eddie" border="0" /></a></div>
    <div><a href="newsdetail.jsp" >
      <h2 class="STYLE1">黄山</h2> </a>
        <p class="STYLE25">位于安徽省南部黄山市境内，为三山五岳中三山之一。黄山为道教圣地，遗址遗迹众多，有“天下第一奇山”之美誉。是中国最美的，最令人震撼的十大名山之一，同时也是著名的避暑圣地。</p>
	  <a href="newsdetail.jsp"><img src="images/huangshan.jpg"  width="870" height="505" class="eddie" border="0"  /></a>    </div>
		<div><a href="newsdetail.jsp" >
		  <h2 class="STYLE1">长白山</h2> </a>
        <p class="STYLE25">长白山是东北第一高峰，号称“东北屋脊”。长白山古时称，不咸山。其主峰是一座休眠的活火山，在清朝时曾多次喷发。火山口中为天池，因天池水怪的传说而成为旅游胜地。</p>
	  <a href="newsdetail.jsp"><img src="images/tianchi.png" width="870" height="505" class="eddie" border="0"  /></a></div>
		<div><a href="newsdetail.jsp" >
		  <h2 class="STYLE1">天安门</h2> </a>
        <p class="STYLE25">坐落在北京市的中心，与天安门广场隔长安街相望。是明清两代北京皇城的正门。始建于明永乐15年，最初名叫承天门，寓意承天启运，受命于天。</p>
	  <a href="newsdetail.jsp" ><img src="images/beijing.jpg"  width="870" height="505" class="eddie" border="0" /></a></div>
    <div><a href="newsdetail.jsp" >
      <h2 class="STYLE1">黄山</h2> </a>
        <p class="STYLE25">位于安徽省南部黄山市境内，为三山五岳中三山之一。黄山为道教圣地，遗址遗迹众多，有“天下第一奇山”之美誉。是中国最美的，最令人震撼的十大名山之一，同时也是著名的避暑圣地。</p>
	  <a href="newsdetail.jsp"><img src="images/huangshan.jpg"  width="870" height="505" class="eddie" border="0"  /></a>    </div>
    <div><a href="newsdetail.jsp" >
      <h2 class="STYLE1">大连</h2> </a>
        <p class="STYLE25">
		位于欧亚大陆的东岸，有着“浪漫之都”“北方香港”“时尚之都”的美誉。大连，毗邻大海，使得这里的气候四季宜人，冬暖夏凉。被誉为“最适宜人类居住的地方。”</p>
	  <a href="newsdetail.jsp"><img src="images/dalian.png"width="870" height="505" class="eddie" border="0"  /></a></div>
    <div><a href="newsdetail.jsp" >
      <h2 class="STYLE1">长白山</h2> </a>
        <p class="STYLE25">长白山是东北第一高峰，号称“东北屋脊”。长白山古时称，不咸山。其主峰是一座休眠的活火山，在清朝时曾多次喷发。火山口中为天池，因天池水怪的传说而成为旅游胜地。</p>
	  <a href="newsdetail.jsp"><img src="images/tianchi.png" width="870" height="505" class="eddie" border="0"  /></a></div>
   
  </div>
  
  <script type="text/javascript">		
				$(document).ready(function(){ $('#features').jshowoff(); });
			</script>
			
</div>
  <div id="Layer34"><a href="train.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image15','','images/train1.png',1)"><img src="images/train.png" name="Image15" width="107" height="60" border="0" id="Image15" /></a></div>
  <div id="Layer31"><img src="images/ballensmall.png" width="80" height="102" /></div>
</div>
</body>

</html>
