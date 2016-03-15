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
<title>选择城市</title>

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

.STYLE1 {font-family: "华康俪金黑W8(P)";
	font-size: 36px;
	color: #CCCCCC;
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
.STYLE3 {font-family: "华康俪金黑W8(P)"; font-size: 36px; color: #F8A63B; }
.STYLE4 {font-size: 24px}
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
.STYLE14 {	font-size: 20px;
	color: #333333;
	font-family: "微软雅黑";
	font-weight: bold;
}
.STYLE15 {	font-size: 20px;
	color: #333333;
	font-family: "华康俪金黑W8(P)";
	font-weight: bold;
}
.STYLE24 {	font-size: 16px;
	font-weight: bold;
	font-family: "微软雅黑";
	color: #333333;
}
.STYLE25 {font-family: "微软雅黑"}
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


#change-city { width:1000px; margin:50px auto; }
#change-city .choosecities { BORDER-BOTTOM: #a3d7df 1px solid; BORDER-LEFT: #a3d7df 1px solid; PADDING-BOTTOM: 60px; BACKGROUND: #EDFDFC; BORDER-TOP: #a3d7df 1px solid; BORDER-RIGHT: #a3d7df 1px solid; box-shadow: 0 0 1px #d4edf4 }
#change-city .choosecities A:hover { TEXT-DECORATION: none }
#change-city .citieslist H2 { POSITION: relative; PADDING-BOTTOM: 0px; LINE-HEIGHT: 30px; MARGIN: 20px 20px 12px; PADDING-LEFT: 14px; PADDING-RIGHT: 14px; ZOOM: 1; DISPLAY: inline-block; BACKGROUND: #073E3E; HEIGHT: 32px; COLOR: #EDFDFC; PADDING-TOP: 15px; border-radius: 0 }
#change-city .citieslist H2 SPAN { BORDER-BOTTOM: #EDFDFC 6px solid; POSITION: absolute; BORDER-LEFT: #EDFDFC 6px solid; LINE-HEIGHT: 0; WIDTH: 0px; DISPLAY: block; FLOAT: none; HEIGHT: 0px; FONT-SIZE: 0px; BORDER-TOP: #073E3E 6px solid; TOP: 47px; BORDER-RIGHT: #EDFDFC 6px solid; LEFT: 15px}
#change-city .citieslist LI { BORDER-BOTTOM: #EDFDFC 1px solid; BORDER-TOP: #EDFDFC 1px solid }
#change-city .citieslist P { BORDER-BOTTOM: #EDFDFC 1px solid; PADDING-BOTTOM: 6px; PADDING-LEFT: 30px; PADDING-RIGHT: 10px; BORDER-TOP: #EDFDFC 1px solid; PADDING-TOP: 6px }
#change-city .citieslist SPAN.label { BORDER-BOTTOM: #ddd 1px solid; BORDER-LEFT: #ddd 1px solid; LINE-HEIGHT: 24px; WIDTH: 30px; ZOOM: 1; DISPLAY: inline-block; HEIGHT: 30px; COLOR: #666; VERTICAL-ALIGN: top; BORDER-TOP: #ddd 1px solid; MARGIN-RIGHT: 5px; BORDER-RIGHT: #ddd 1px solid; border-radius: 0 }
#change-city .citieslist SPAN.label STRONG { BORDER-BOTTOM: #f7f7f7 1px solid; TEXT-ALIGN: center; BORDER-LEFT: #f7f7f7 1px solid; WIDTH: 28px; DISPLAY: block; FONT-FAMILY: Tahoma; BACKGROUND: #f1f1f1; HEIGHT: 28px; FONT-SIZE: 16px; BORDER-TOP: #f7f7f7 1px solid; BORDER-RIGHT: #f7f7f7 1px solid; border-radius: 0 }
#change-city .citieslist SPAN { WIDTH: 880px; ZOOM: 1; DISPLAY: inline-block; VERTICAL-ALIGN: top }
#change-city .citieslist SPAN I { FONT-STYLE: normal; MARGIN: 0px 3px; COLOR: #ccc }
#change-city .citieslist .hover { BORDER-BOTTOM-COLOR: #e5e5e5; BORDER-TOP-COLOR: #e5e5e5; BORDER-RIGHT-COLOR: #e5e5e5; BORDER-LEFT-COLOR: #e5e5e5 }
#change-city .citieslist .hover P { BACKGROUND: #f7f7f7 }
#change-city .citieslist .hover SPAN.label { BORDER-BOTTOM-COLOR: #1fb7bb; BORDER-TOP-COLOR: #1fb7bb; BORDER-RIGHT-COLOR: #1fb7bb; BORDER-LEFT-COLOR: #1fb7bb }
#change-city .citieslist .hover SPAN.label STRONG { BORDER-BOTTOM-COLOR: #073E3E; BORDER-TOP-COLOR: #073E3E; BACKGROUND: #073E3E; COLOR: #EDFDFC; BORDER-RIGHT-COLOR: #073E3E; BORDER-LEFT-COLOR: #073E3E }
#change-city .citieslist A { PADDING-BOTTOM: 1px; LINE-HEIGHT: 20px; MARGIN: 5px 10px; PADDING: 8px 12px; ZOOM: 1; DISPLAY: inline-block; HEIGHT: 20px; border-radius: 0 }
#change-city .citieslist A:hover { BACKGROUND: #073E3E; COLOR: #EDFDFC }
<!--#change-city .citieslist .LETTER { FONT-WEIGHT: bold }
<!--#change-city .citieslist .LETTER { FONT-WEIGHT: bold }-->-->
#bdw { MIN-HEIGHT: 500px }
.cf { ZOOM: 1 }
.cf:after { DISPLAY: block; HEIGHT: 0px; VISIBILITY: hidden; CLEAR: both; OVERFLOW: hidden; CONTENT: '' }
H2 { PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px }
<!--BODY { FONT: 14px/1.5 Tahoma, Helvetica, arial, sans-serif; BACKGROUND:#EDFDFC; COLOR: #000 }-->
A { COLOR: #399; TEXT-DECORATION: none }
A:hover { TEXT-DECORATION: none}
SPAN.money { FONT-FAMILY: arial }
SPAN.required { COLOR: red }

.LETTER {color: #073E3E; font-family: "微软雅黑"; font-size: 18px;}

P { PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px }
LI { LIST-STYLE-TYPE: none; LIST-STYLE-IMAGE: none }
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
</head>

<body onload="MM_preloadImages('images/back_banner11.png','images/back_banner20.png','images/back_banner31.png','images/飞机火车1.png','images/map1.png','images/air1.png','images/train1.png');start()">
<div id="Layer7"><img src="images/citygo.png" width="315" height="140" /></div>
<div id="Layer27"><img src="images/ballen.png" width="150" height="190" /></div>
<div id="Layer37"><a href="map.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image17','','images/map1.png',1)"><img src="images/map.png" name="Image17" width="220" height="55" border="0" id="Image17" /></a></div>
<div id="Layer36"><a href="airport.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image14','','images/air1.png',1)"><img src="images/air.png" name="Image14" width="107" height="73" border="0" id="Image14" /></a><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image16','','images/飞机火车1.png',1)"></a></div>
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
   <!--  <form method="post" id="searchform" action="">
      <fieldset class="search">
      <input name="text" type="text" class="box" onfocus="if(value=='Search'){value=''}" onblur="if(value==''){value='Search'}" value="Search"/>
      <button class="btn" type="submit">Search</button>
      </fieldset>
    </form> -->
      <form method="post" id="searchform" action="SearchAttraction">
    <fieldset class="search">
      <!-- <input name="text" type="text" class="box" onFocus="if(value=='Search'){value=''}" onBlur="if(value==''){value='Search'}" value="Search"/>
      <button class="btn" type="submit">Search</button> -->
      <s:textfield name="searchfor"/>
      <s:submit value="搜索"/>
    </fieldset>
  </form>
  </div>
  <div id="Layer3"><a href="city.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image3','','images/back_banner20.png',1)"><img src="images/back_banner21.png" alt="开始找景点" name="Image3" width="506" height="68" border="0" id="Image3" /></a></div>
  <div id="Layer4"><a href="luntan.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image4','','images/back_banner31.png',1)"><img src="images/back_banner30.png" alt="论坛" name="Image4" width="278" height="51" border="0" id="Image4" /></a></div>
  <div id="Layer1"><a href="index.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image2','','images/back_banner11.png',1)"><img src="images/back_banner10.png" alt="首页" name="Image2" width="278" height="51" border="0" id="Image2" /></a></div>
  <img src="images/back2.png" width="1351" height="953" />
<div id="Layer34"><a href="train.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image15','','images/train1.png',1)"><img src="images/train.png" name="Image15" width="107" height="60" border="0" id="Image15" /></a></div>
  <div id="Layer31"><img src="images/ballensmall.png" width="80" height="102" /></div>
  <div id="Layer19">

<div id="change-city">
<div id="bdw" class="bdw">
<div id="bd" class="cf">
<div class="choosecities">
<div class="citieslist">
<h2>按拼音首字母选择<span class="arrow">&raquo;</span></h2>
<ol class="hasallcity">
<li id="city-A">
<p class="cf"><span class="label"><strong>A</strong></span><a href="spots.jsp?city=鞍山" class="LETTER" target="_blank">鞍山</a><a class="LETTER" target="_blank" href="spots.jsp?city=安顺">安顺</a><a class="LETTER" target="_blank" href="spots.jsp?city=阿坝">阿坝</a><a class="LETTER" target="_blank" href="spots.jsp?city=阿拉善">阿拉善</a><a class="LETTER" target="_blank" href="spots.jsp?city=阿里">阿里</a><a class="LETTER" target="_blank" href="spots.jsp?city=安康">安康</a><a class="LETTER" target="_blank" href="spots.jsp?city=阿克苏">阿克苏</a><a class="LETTER" target="_blank" href="spots.jsp?city=安庆">安庆</a><a class="LETTER" target="_blank" href="spots.jsp?city=阿勒泰">阿勒泰</a><a class="LETTER" target="_blank" href="spots.jsp?city=安阳">安阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=澳门" >澳门</a></p>
</li>
<li id="city-B">
<p class="cf"><span class="label"><strong>B</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=北京">北京</a><a class="LETTER" target="_blank" href="spots.jsp?city=包头">包头</a><a class="LETTER" target="_blank" href="spots.jsp?city=保定">保定</a><a class="LETTER" target="_blank" href="spots.jsp?city=巴中">巴中</a><a class="LETTER" target="_blank" href="spots.jsp?city=蚌埠">蚌埠</a><a class="LETTER" target="_blank" href="spots.jsp?city=白银">白银</a><a class="LETTER" target="_blank" href="spots.jsp?city=白城">白城</a><a class="LETTER" target="_blank" href="spots.jsp?city=白山">白山</a><a class="LETTER" target="_blank" href="spots.jsp?city=北海">北海</a><a class="LETTER" target="_blank" href="spots.jsp?city=巴彦淖尔">巴彦淖尔</a><a class="LETTER" target="_blank" href="spots.jsp?city=宝鸡">宝鸡</a><a class="LETTER" target="_blank" href="spots.jsp?city=百色">百色</a><a class="LETTER" target="_blank" href="spots.jsp?city=本溪">本溪</a><a class="LETTER" target="_blank" href="spots.jsp?city=保山">保山</a><a class="LETTER" target="_blank" href="spots.jsp?city=毕节">毕节</a><a class="LETTER" target="_blank" href="spots.jsp?city=博尔塔拉">博尔塔拉</a><a class="LETTER" target="_blank" href="spots.jsp?city=滨州">滨州</a><a class="LETTER" target="_blank" href="spots.jsp?city=亳州">亳州</a><a class="LETTER" target="_blank" href="spots.jsp?city=巴州">巴州</a></span></p>
</li>
<li id="city-C">
<p class="cf"><span class="label"><strong>C</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=成都">成都</a><a class="LETTER" target="_blank" href="spots.jsp?city=重庆">重庆</a><a class="LETTER" target="_blank" href="spots.jsp?city=常州">常州</a><a class="LETTER" target="_blank" href="spots.jsp?city=长沙">长沙</a><a class="LETTER" target="_blank" href="spots.jsp?city=长春">长春</a><a class="LETTER" target="_blank" href="spots.jsp?city=赤峰">赤峰</a><a class="LETTER" target="_blank" href="spots.jsp?city=楚雄">楚雄</a><a class="LETTER" target="_blank" href="spots.jsp?city=长治">长治</a><a class="LETTER" target="_blank" href="spots.jsp?city=巢湖">巢湖</a><a class="LETTER" target="_blank" href="spots.jsp?city=崇左">崇左</a><a class="LETTER" target="_blank" href="spots.jsp?city=潮州">潮州</a><a class="LETTER" target="_blank" href="spots.jsp?city=昌吉">昌吉</a><a class="LETTER" target="_blank" href="spots.jsp?city=沧州">沧州</a><a class="LETTER" target="_blank" href="spots.jsp?city=郴州">郴州</a><a class="LETTER" target="_blank" href="spots.jsp?city=常德">常德</a><a class="LETTER" target="_blank" href="spots.jsp?city=滁州">滁州</a><a class="LETTER" target="_blank" href="spots.jsp?city=朝阳">朝阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=昌都">昌都</a><a class="LETTER" target="_blank" href="spots.jsp?city=池州">池州</a><a class="LETTER" target="_blank" href="spots.jsp?city=承德">承德</a></span></p>
</li>
<li id="city-D">
<p class="cf"><span class="label"><strong>D</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=东莞">东莞</a><a class="LETTER" target="_blank" href="spots.jsp?city=大连">大连</a><a class="LETTER" target="_blank" href="spots.jsp?city=东营">东营</a><a class="LETTER" target="_blank" href="spots.jsp?city=大庆">大庆</a><a class="LETTER" target="_blank" href="spots.jsp?city=大同">大同</a><a class="LETTER" target="_blank" href="spots.jsp?city=大理">大理</a><a class="LETTER" target="_blank" href="spots.jsp?city=德阳">德阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=迪庆">迪庆</a><a class="LETTER" target="_blank" href="spots.jsp?city=达州">达州</a><a class="LETTER" target="_blank" href="spots.jsp?city=德州">德州</a><a class="LETTER" target="_blank" href="spots.jsp?city=丹东">丹东</a><a class="LETTER" target="_blank" href="spots.jsp?city=大兴安岭">大兴安岭</a><a class="LETTER" target="_blank" href="spots.jsp?city=德宏">德宏</a><a class="LETTER" target="_blank" href="spots.jsp?city=定西">定西</a></span></p>
</li>
<li id="city-E">
<p class="cf"><span class="label"><strong>E</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=恩施">恩施</a><a class="LETTER" target="_blank" href="spots.jsp?city=鄂州">鄂州</a><a class="LETTER" target="_blank" href="spots.jsp?city=鄂尔多斯">鄂尔多斯</a></span></p>
</li>
<li id="city-F">
<p class="cf"><span class="label"><strong>F</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=福州">福州</a><a class="LETTER" target="_blank" href="spots.jsp?city=佛山">佛山</a><a class="LETTER" target="_blank" href="spots.jsp?city=抚顺">抚顺</a><a class="LETTER" target="_blank" href="spots.jsp?city=阜阳">阜阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=抚州">抚州</a><a class="LETTER" target="_blank" href="spots.jsp?city=防城港">防城港</a><a class="LETTER" target="_blank" href="spots.jsp?city=阜新">阜新</a></span></p>
</li>
<li id="city-G">
<p class="cf"><span class="label"><strong>G</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=广州">广州</a><a class="LETTER" target="_blank" href="spots.jsp?city=贵阳">贵阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=桂林">桂林</a><a class="LETTER" target="_blank" href="spots.jsp?city=赣州">赣州</a><a class="LETTER" target="_blank" href="spots.jsp?city=广元">广元</a><a class="LETTER" target="_blank" href="spots.jsp?city=果洛">果洛</a><a class="LETTER" target="_blank" href="spots.jsp?city=固原">固原</a><a class="LETTER" target="_blank" href="spots.jsp?city=甘南">甘南</a><a class="LETTER" target="_blank" href="spots.jsp?city=甘孜">甘孜</a><a class="LETTER" target="_blank" href="spots.jsp?city=广安">广安</a><a class="LETTER" target="_blank" href="spots.jsp?city=贵港">贵港</a></span></p>
</li>
<li id="city-H">
<p class="cf"><span class="label"><strong>H</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=杭州">杭州</a><a class="LETTER" target="_blank" href="spots.jsp?city=哈尔滨">哈尔滨</a><a class="LETTER" target="_blank" href="spots.jsp?city=合肥">合肥</a><a class="LETTER" target="_blank" href="spots.jsp?city=邯郸">邯郸</a><a class="LETTER" target="_blank" href="spots.jsp?city=惠州">惠州</a><a class="LETTER" target="_blank" href="ShowAttraction.action?attractionCity=海南">海南</a><a class="LETTER" target="_blank" href="spots.jsp?city=呼和浩特">呼和浩特</a><a class="LETTER" target="_blank" href="spots.jsp?city=衡阳">衡阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=湖州">湖州</a><a class="LETTER" target="_blank" href="spots.jsp?city=淮北">淮北</a><a class="LETTER" target="_blank" href="spots.jsp?city=鹤岗">鹤岗</a><a class="LETTER" target="_blank" href="spots.jsp?city=海北">海北</a><a class="LETTER" target="_blank" href="spots.jsp?city=海东">海东</a><a class="LETTER" target="_blank" href="spots.jsp?city=黄南">黄南</a><a class="LETTER" target="_blank" href="spots.jsp?city=菏泽">菏泽</a><a class="LETTER" target="_blank" href="spots.jsp?city=海南州">海南州</a><a class="LETTER" target="_blank" href="spots.jsp?city=黑河">黑河</a><a class="LETTER" target="_blank" href="spots.jsp?city=和田">和田</a><a class="LETTER" target="_blank" href="spots.jsp?city=哈密">哈密</a><a class="LETTER" target="_blank" href="spots.jsp?city=淮安">淮安</a><a class="LETTER" target="_blank" href="spots.jsp?city=淮南">淮南</a><a class="LETTER" target="_blank" href="spots.jsp?city=黄山">黄山</a><a class="LETTER" target="_blank" href="spots.jsp?city=海西">海西</a><a class="LETTER" target="_blank" href="spots.jsp?city=贺州">贺州</a><a class="LETTER" target="_blank" href="spots.jsp?city=怀化">怀化</a><a class="LETTER" target="_blank" href="spots.jsp?city=河池">河池</a><a class="LETTER" target="_blank" href="spots.jsp?city=呼伦贝尔">呼伦贝尔</a><a class="LETTER" target="_blank" href="spots.jsp?city=衡水">衡水</a><a class="LETTER" target="_blank" href="spots.jsp?city=河源">河源</a><a class="LETTER" target="_blank" href="spots.jsp?city=红河">红河</a><a class="LETTER" target="_blank" href="spots.jsp?city=汉中">汉中</a><a class="LETTER" target="_blank" href="spots.jsp?city=黄冈">黄冈</a><a class="LETTER" target="_blank" href="spots.jsp?city=黄石">黄石</a><a class="LETTER" target="_blank" href="spots.jsp?city=鹤壁">鹤壁</a><a class="LETTER" target="_blank" href="spots.jsp?city=葫芦岛">葫芦岛</a></span></p>
</li>
<li id="city-J">
<p class="cf"><span class="label"><strong>J</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=济南">济南</a><a class="LETTER" target="_blank" href="spots.jsp?city=济宁">济宁</a><a class="LETTER" target="_blank" href="spots.jsp?city=嘉兴">嘉兴</a><a class="LETTER" target="_blank" href="spots.jsp?city=金华">金华</a><a class="LETTER" target="_blank" href="spots.jsp?city=焦作">焦作</a><a class="LETTER" target="_blank" href="spots.jsp?city=荆州">荆州</a><a class="LETTER" target="_blank" href="spots.jsp?city=吉林">吉林</a><a class="LETTER" target="_blank" href="spots.jsp?city=锦州">锦州</a><a class="LETTER" target="_blank" href="spots.jsp?city=江门">江门</a><a class="LETTER" target="_blank" href="spots.jsp?city=景德镇">景德镇</a><a class="LETTER" target="_blank" href="spots.jsp?city=吉安">吉安</a><a class="LETTER" target="_blank" href="spots.jsp?city=佳木斯">佳木斯</a><a class="LETTER" target="_blank" href="spots.jsp?city=酒泉">酒泉</a><a class="LETTER" target="_blank" href="spots.jsp?city=金昌">金昌</a><a class="LETTER" target="_blank" href="spots.jsp?city=鸡西">鸡西</a><a class="LETTER" target="_blank" href="spots.jsp?city=济源">济源</a><a class="LETTER" target="_blank" href="spots.jsp?city=晋城">晋城</a><a class="LETTER" target="_blank" href="spots.jsp?city=揭阳">揭阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=晋中">晋中</a><a class="LETTER" target="_blank" href="spots.jsp?city=荆门">荆门</a><a class="LETTER" target="_blank" href="spots.jsp?city=九江">九江</a></span></p>
</li>
<li id="city-K">
<p class="cf"><span class="label"><strong>K</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=昆明">昆明</a><a class="LETTER" target="_blank" href="spots.jsp?city=昆山">昆山</a><a class="LETTER" target="_blank" href="spots.jsp?city=喀什">喀什</a><a class="LETTER" target="_blank" href="spots.jsp?city=克拉玛依">克拉玛依</a><a class="LETTER" target="_blank" href="spots.jsp?city=开封">开封</a><a class="LETTER" target="_blank" href="spots.jsp?city=克州">克州</a></span></p>
</li>
<li id="city-L">
<p class="cf"><span class="label"><strong>L</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=兰州">兰州</a><a class="LETTER" target="_blank" href="spots.jsp?city=临沂">临沂</a><a class="LETTER" target="_blank" href="spots.jsp?city=连云港">连云港</a><a class="LETTER" target="_blank" href="spots.jsp?city=聊城">聊城</a><a class="LETTER" target="_blank" href="spots.jsp?city=临汾">临汾</a><a class="LETTER" target="_blank" href="spots.jsp?city=柳州">柳州</a><a class="LETTER" target="_blank" href="spots.jsp?city=洛阳">洛阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=廊坊">廊坊</a><a class="LETTER" target="_blank" href="spots.jsp?city=龙岩">龙岩</a><a class="LETTER" target="_blank" href="spots.jsp?city=六盘水">六盘水</a><a class="LETTER" target="_blank" href="spots.jsp?city=凉山">凉山</a><a class="LETTER" target="_blank" href="spots.jsp?city=六安">六安</a><a class="LETTER" target="_blank" href="spots.jsp?city=丽江">丽江</a><a class="LETTER" target="_blank" href="spots.jsp?city=临沧">临沧</a><a class="LETTER" target="_blank" href="spots.jsp?city=陇南">陇南</a><a class="LETTER" target="_blank" href="spots.jsp?city=拉萨">拉萨</a><a class="LETTER" target="_blank" href="spots.jsp?city=辽源">辽源</a><a class="LETTER" target="_blank" href="spots.jsp?city=辽阳">辽阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=莱芜">莱芜</a><a class="LETTER" target="_blank" href="spots.jsp?city=漯河">漯河</a><a class="LETTER" target="_blank" href="spots.jsp?city=吕梁">吕梁</a><a class="LETTER" target="_blank" href="spots.jsp?city=丽水">丽水</a><a class="LETTER" target="_blank" href="spots.jsp?city=临夏">临夏</a><a class="LETTER" target="_blank" href="spots.jsp?city=林芝">林芝</a><a class="LETTER" target="_blank" href="spots.jsp?city=娄底">娄底</a><a class="LETTER" target="_blank" href="spots.jsp?city=来宾">来宾</a><a class="LETTER" target="_blank" href="spots.jsp?city=泸州">泸州</a><a class="LETTER" target="_blank" href="spots.jsp?city=乐山">乐山</a></span></p>
</li>
<li id="city-M">
<p class="cf"><span class="label"><strong>M</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=马鞍山">马鞍山</a><a class="LETTER" target="_blank" href="spots.jsp?city=绵阳">绵阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=茂名">茂名</a><a class="LETTER" target="_blank" href="spots.jsp?city=牡丹江">牡丹江</a><a class="LETTER" target="_blank" href="spots.jsp?city=梅州">梅州</a><a class="LETTER" target="_blank" href="spots.jsp?city=眉山">眉山</a></span></p>
</li>
<li id="city-N">
<p class="cf"><span class="label"><strong>N</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=南京">南京</a><a class="LETTER" target="_blank" href="spots.jsp?city=宁波">宁波</a><a class="LETTER" target="_blank" href="spots.jsp?city=南通">南通</a><a class="LETTER" target="_blank" href="spots.jsp?city=南宁">南宁</a><a class="LETTER" target="_blank" href="spots.jsp?city=南昌">南昌</a><a class="LETTER" target="_blank" href="spots.jsp?city=南充">南充</a><a class="LETTER" target="_blank" href="spots.jsp?city=宁德">宁德</a><a class="LETTER" target="_blank" href="spots.jsp?city=内江">内江</a><a class="LETTER" target="_blank" href="spots.jsp?city=怒江">怒江</a><a class="LETTER" target="_blank" href="spots.jsp?city=南平">南平</a><a class="LETTER" target="_blank" href="spots.jsp?city=南阳">南阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=那曲">那曲</a></span></p>
</li>
<li id="city-P">
<p class="cf"><span class="label"><strong>P</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=萍乡">萍乡</a><a class="LETTER" target="_blank" href="spots.jsp?city=平顶山">平顶山</a><a class="LETTER" target="_blank" href="spots.jsp?city=莆田">莆田</a><a class="LETTER" target="_blank" href="spots.jsp?city=濮阳">濮阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=攀枝花">攀枝花</a><a class="LETTER" target="_blank" href="spots.jsp?city=平凉">平凉</a><a class="LETTER" target="_blank" href="spots.jsp?city=普洱">普洱</a><a class="LETTER" target="_blank" href="spots.jsp?city=盘锦">盘锦</a></span></p>
</li>
<li id="city-Q">
<p class="cf"><span class="label"><strong>Q</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=青岛">青岛</a><a class="LETTER" target="_blank" href="spots.jsp?city=泉州">泉州</a><a class="LETTER" target="_blank" href="spots.jsp?city=秦皇岛">秦皇岛</a><a class="LETTER" target="_blank" href="spots.jsp?city=齐齐哈尔">齐齐哈尔</a><a class="LETTER" target="_blank" href="spots.jsp?city=庆阳">庆阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=衢州">衢州</a><a class="LETTER" target="_blank" href="spots.jsp?city=黔西南">黔西南</a><a class="LETTER" target="_blank" href="spots.jsp?city=钦州">钦州</a><a class="LETTER" target="_blank" href="spots.jsp?city=黔南">黔南</a><a class="LETTER" target="_blank" href="spots.jsp?city=曲靖">曲靖</a><a class="LETTER" target="_blank" href="spots.jsp?city=黔东南">黔东南</a><a class="LETTER" target="_blank" href="spots.jsp?city=七台河">七台河</a><a class="LETTER" target="_blank" href="spots.jsp?city=清远">清远</a></span></p>
</li>
<li id="city-R">
<p class="cf"><span class="label"><strong>R</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=日照">日照</a><a class="LETTER" target="_blank" href="spots.jsp?city=日喀则">日喀则</a></span></p>
</li>
<li id="city-S">
<p class="cf"><span class="label"><strong>S</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=上海">上海</a><a class="LETTER" target="_blank" href="spots.jsp?city=深圳">深圳</a><a href="spots.jsp?city=沈阳" class="LETTER" target="_blank">沈阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=苏州">苏州</a><a class="LETTER" target="_blank" href="spots.jsp?city=石家庄">石家庄</a><a class="LETTER" target="_blank" href="spots.jsp?city=绍兴">绍兴</a><a class="LETTER" target="_blank" href="spots.jsp?city=顺德">顺德</a><a class="LETTER" target="_blank" href="spots.jsp?city=三亚">三亚</a><a class="LETTER" target="_blank" href="spots.jsp?city=韶关">韶关</a><a class="LETTER" target="_blank" href="spots.jsp?city=绥化">绥化</a><a class="LETTER" target="_blank" href="spots.jsp?city=松原">松原</a><a class="LETTER" target="_blank" href="spots.jsp?city=上饶">上饶</a><a class="LETTER" target="_blank" href="spots.jsp?city=十堰">十堰</a><a class="LETTER" target="_blank" href="spots.jsp?city=三门峡">三门峡</a><a class="LETTER" target="_blank" href="spots.jsp?city=山南">山南</a><a class="LETTER" target="_blank" href="spots.jsp?city=邵阳">邵阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=遂宁">遂宁</a><a class="LETTER" target="_blank" href="spots.jsp?city=商丘">商丘</a><a class="LETTER" target="_blank" href="spots.jsp?city=朔州">朔州</a><a class="LETTER" target="_blank" href="spots.jsp?city=随州">随州</a><a class="LETTER" target="_blank" href="spots.jsp?city=汕尾">汕尾</a><a class="LETTER" target="_blank" href="spots.jsp?city=四平">四平</a><a class="LETTER" target="_blank" href="spots.jsp?city=三峡">三峡</a><a class="LETTER" target="_blank" href="spots.jsp?city=宿迁">宿迁</a><a class="LETTER" target="_blank" href="spots.jsp?city=三明">三明</a><a class="LETTER" target="_blank" href="spots.jsp?city=石嘴山">石嘴山</a><a class="LETTER" target="_blank" href="spots.jsp?city=双鸭山">双鸭山</a><a class="LETTER" target="_blank" href="spots.jsp?city=汕头">汕头</a><a class="LETTER" target="_blank" href="spots.jsp?city=宿州">宿州</a><a class="LETTER" target="_blank" href="spots.jsp?city=商洛">商洛</a></span></p>
</li>
<li id="city-T">
<p class="cf"><span class="label"><strong>T</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=天津">天津</a><a class="LETTER" target="_blank" href="spots.jsp?city=太原">太原</a><a class="LETTER" target="_blank" href="spots.jsp?city=泰安">泰安</a><a class="LETTER" target="_blank" href="spots.jsp?city=台州">台州</a><a class="LETTER" target="_blank" href="spots.jsp?city=唐山">唐山</a><a class="LETTER" target="_blank" href="spots.jsp?city=泰州">泰州</a><a class="LETTER" target="_blank" href="spots.jsp?city=塔城">塔城</a><a class="LETTER" target="_blank" href="spots.jsp?city=铜陵">铜陵</a><a class="LETTER" target="_blank" href="spots.jsp?city=铜川">铜川</a><a class="LETTER" target="_blank" href="spots.jsp?city=台北">台北</a><a class="LETTER" target="_blank" href="spots.jsp?city=铜仁">铜仁</a><a class="LETTER" target="_blank" href="spots.jsp?city=吐鲁番">吐鲁番</a><a class="LETTER" target="_blank" href="spots.jsp?city=天水">天水</a><a class="LETTER" target="_blank" href="spots.jsp?city=通辽">通辽</a><a class="LETTER" target="_blank" href="spots.jsp?city=铁岭">铁岭</a><a class="LETTER" target="_blank" href="spots.jsp?city=通化">通化</a></span></p>
</li>
<li id="city-W">
<p class="cf"><span class="label"><strong>W</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=武汉">武汉</a><a class="LETTER" target="_blank" href="spots.jsp?city=无锡">无锡</a><a class="LETTER" target="_blank" href="spots.jsp?city=温州">温州</a><a class="LETTER" target="_blank" href="spots.jsp?city=芜湖">芜湖</a><a class="LETTER" target="_blank" href="spots.jsp?city=威海">威海</a><a class="LETTER" target="_blank" href="spots.jsp?city=潍坊">潍坊</a><a class="LETTER" target="_blank" href="spots.jsp?city=乌鲁木齐">乌鲁木齐</a><a class="LETTER" target="_blank" href="spots.jsp?city=梧州">梧州</a><a class="LETTER" target="_blank" href="spots.jsp?city=吴忠">吴忠</a><a class="LETTER" target="_blank" href="spots.jsp?city=武威">武威</a><a class="LETTER" target="_blank" href="spots.jsp?city=渭南">渭南</a><a class="LETTER" target="_blank" href="spots.jsp?city=乌兰察布">乌兰察布</a><a class="LETTER" target="_blank" href="spots.jsp?city=文山">文山</a><a class="LETTER" target="_blank" href="spots.jsp?city=乌海">乌海</a></span></p>
</li>
<li id="city-X">
<p class="cf"><span class="label"><strong>X</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=西安">西安</a><a class="LETTER" target="_blank" href="spots.jsp?city=厦门">厦门</a><a class="LETTER" target="_blank" href="spots.jsp?city=徐州">徐州</a><a class="LETTER" target="_blank" href="spots.jsp?city=襄阳">襄阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=西宁">西宁</a><a class="LETTER" target="_blank" href="spots.jsp?city=孝感">孝感</a><a class="LETTER" target="_blank" href="spots.jsp?city=西双版纳">西双版纳</a><a class="LETTER" target="_blank" href="spots.jsp?city=新余">新余</a><a class="LETTER" target="_blank" href="spots.jsp?city=湘潭">湘潭</a><a class="LETTER" target="_blank" href="spots.jsp?city=锡林郭勒">锡林郭勒</a><a class="LETTER" target="_blank" href="spots.jsp?city=兴安">兴安</a><a class="LETTER" target="_blank" href="spots.jsp?city=邢台">邢台</a><a class="LETTER" target="_blank" href="spots.jsp?city=新乡">新乡</a><a class="LETTER" target="_blank" href="spots.jsp?city=湘西">湘西</a><a class="LETTER" target="_blank" href="spots.jsp?city=忻州">忻州</a><a class="LETTER" target="_blank" href="spots.jsp?city=咸阳">咸阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=宣城">宣城</a><a class="LETTER" target="_blank" href="spots.jsp?city=">香港</a><a class="LETTER" target="_blank" href="spots.jsp?city=信阳">信阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=咸宁">咸宁</a><a class="LETTER" target="_blank" href="spots.jsp?city=许昌">许昌</a></span></p>
</li>
<li id="city-Y">
<p class="cf"><span class="label"><strong>Y</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=扬州">扬州</a><a class="LETTER" target="_blank" href="spots.jsp?city=烟台">烟台</a><a class="LETTER" target="_blank" href="spots.jsp?city=盐城">盐城</a><a class="LETTER" target="_blank" href="spots.jsp?city=运城">运城</a><a class="LETTER" target="_blank" href="spots.jsp?city=义乌">义乌</a><a class="LETTER" target="_blank" href="spots.jsp?city=岳阳">岳阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=宜昌">宜昌</a><a class="LETTER" target="_blank" href="spots.jsp?city=玉林">玉林</a><a class="LETTER" target="_blank" href="spots.jsp?city=银川">银川</a><a class="LETTER" target="_blank" href="spots.jsp?city=鹰潭">鹰潭</a><a class="LETTER" target="_blank" href="spots.jsp?city=雅安">雅安</a><a class="LETTER" target="_blank" href="spots.jsp?city=伊犁">伊犁</a><a class="LETTER" target="_blank" href="spots.jsp?city=玉树">玉树</a><a class="LETTER" target="_blank" href="spots.jsp?city=宜春">宜春</a><a class="LETTER" target="_blank" href="spots.jsp?city=营口">营口</a><a class="LETTER" target="_blank" href="spots.jsp?city=永州">永州</a><a class="LETTER" target="_blank" href="spots.jsp?city=宜宾">宜宾</a><a class="LETTER" target="_blank" href="spots.jsp?city=益阳">益阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=玉溪">玉溪</a><a class="LETTER" target="_blank" href="spots.jsp?city=阳泉">阳泉</a><a class="LETTER" target="_blank" href="spots.jsp?city=延安">延安</a><a class="LETTER" target="_blank" href="spots.jsp?city=榆林">榆林</a><a class="LETTER" target="_blank" href="spots.jsp?city=云浮">云浮</a><a class="LETTER" target="_blank" href="spots.jsp?city=延边">延边</a><a class="LETTER" target="_blank" href="spots.jsp?city=阳江">阳江</a><a class="LETTER" target="_blank" href="spots.jsp?city=伊春">伊春</a></span></p>
</li>
<li id="city-Z">
<p class="cf"><span class="label"><strong>Z</strong></span><span><a class="LETTER" target="_blank" href="spots.jsp?city=郑州">郑州</a><a class="LETTER" target="_blank" href="spots.jsp?city=镇江">镇江</a><a class="LETTER" target="_blank" href="spots.jsp?city=中山">中山</a><a class="LETTER" target="_blank" href="spots.jsp?city=淄博">淄博</a><a class="LETTER" target="_blank" href="spots.jsp?city=珠海">珠海</a><a class="LETTER" target="_blank" href="spots.jsp?city=遵义">遵义</a><a class="LETTER" target="_blank" href="spots.jsp?city=株洲">株洲</a><a class="LETTER" target="_blank" href="spots.jsp?city=自贡">自贡</a><a class="LETTER" target="_blank" href="spots.jsp?city=舟山">舟山</a><a class="LETTER" target="_blank" href="spots.jsp?city=湛江">湛江</a><a class="LETTER" target="_blank" href="spots.jsp?city=肇庆">肇庆</a><a class="LETTER" target="_blank" href="spots.jsp?city=漳州">漳州</a><a class="LETTER" target="_blank" href="spots.jsp?city=张掖">张掖</a><a class="LETTER" target="_blank" href="spots.jsp?city=昭通">昭通</a><a class="LETTER" target="_blank" href="spots.jsp?city=张家界">张家界</a><a class="LETTER" target="_blank" href="spots.jsp?city=周口">周口</a><a class="LETTER" target="_blank" href="spots.jsp?city=驻马店">驻马店</a><a class="LETTER" target="_blank" href="spots.jsp?city=张家口">张家口</a><a class="LETTER" target="_blank" href="spots.jsp?city=资阳">资阳</a><a class="LETTER" target="_blank" href="spots.jsp?city=中卫">中卫</a><a class="LETTER" target="_blank" href="spots.jsp?city=枣庄">枣庄</a></span></p>
</li>
</ol>
</div>
</div>
</div>
<!-- bd end --> 
</div>
<!-- bdw end --> 
</div>
<script src="jquery.min.js" type="text/javascript"></script> 
<script language="javascript" type="text/javascript">
$(function (){
	$(".hasallcity li").hover(function(){
		$(this).addClass('hover');
	}, function(){
		$(this).removeClass('hover');
	});	
});
</script>

</div>
</div>
</body>

</html>
