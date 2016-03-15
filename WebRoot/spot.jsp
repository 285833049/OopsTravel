<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=GBK"%>
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
<title>具体景点介绍</title>
<script type="text/javascript" src="js/get.js"></script> 
<link rel="stylesheet" href="css/jshowoffsmall.css" type="text/css" media="screen, projection" />
<link type="text/css" rel="stylesheet" href="css/lrtk.css" />
<script type="text/javascript" src="js/jquery.min.js"></script> 
<script type="text/javascript" src="js/jquery.jshowoff.min.js"></script>

<script type="text/javascript" src="js/index_slide.js"></script>

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #edfdfc;
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

#Layer1 {
	position:absolute;
	width:200px;
	height:56px;
	z-index:21;
	left: 164px;
	top: 23px;
}
#Layer3 {
	position:absolute;
	width:200px;
	height:74px;
	z-index:23;
	left: 399px;
	top: 3px;
}
#Layer4 {
	position:absolute;
	width:200px;
	height:60px;
	z-index:22;
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
	z-index:15;
	left: 1px;
	top: 311px;
}
#Layer8 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:4;
	left: 1026px;
	top: 74px;
}
#Layer9 {
	position:absolute;
	width:1351px;
	height:265px;
	z-index:1;
}
#Layer10 {
	position:absolute;
	width:1351px;
	height:942px;
	z-index:10;
	left: 0px;
	top: 266px;
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
.STYLE25 {
	font-family: "微软雅黑";
	font-size: 48px;
	color: #3366CC;
	font-weight: bold;
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
#Layer25 {	position:absolute;
	width:93px;
	height:103px;
	z-index:12;
	top: 138px;
	left: 1256px;
}
#Layer22 {	position:absolute;
	width:93px;
	height:103px;
	z-index:14;
	left: 1039px;
	top: 121px;
}
#Layer23 {	position:absolute;
	width:92px;
	height:115px;
	z-index:15;
	top: 59px;
	left: 1110px;
}
#Layer24 {	position:absolute;
	width:93px;
	height:113px;
	z-index:13;
	top: 62px;
	left: 1198px;
}
#Layer26 {	position:absolute;
	width:200px;
	height:115px;
	z-index:11;
	left: 1083px;
	top: 177px;
}
#Layer19 {
	position:absolute;
	width:835px;
	height:525px;
	z-index:16;
	left: 204px;
	top: 94px;
}
.ImageSize{
width:690px;
height:400px;
}
#Layer20 {
	position:absolute;
	width:1008px;
	height:338px;
	z-index:16;
	left: 35px;
	top: 172px;
}
.STYLE28 {font-size: 18px; font-family: "微软雅黑"; }
.STYLE31 {font-size: 18px; font-family: "微软雅黑"; color: #546020; }
#Layer21 {
	position:absolute;
	width:1041px;
	height:232px;
	z-index:17;
	left: 13px;
	top: 705px;
}

#Layer30 {
	position:absolute;
	width:815px;
	height:734px;
	z-index:16;
	left: 34px;
	top: 158px;
}
#Layer27 {
	position:absolute;
	width:244px;
	height:90px;
	z-index:17;
	left: 741px;
	top: 833px;
}
#Layer28 {
	position:absolute;
	width:358px;
	height:106px;
	z-index:18;
	left: 263px;
	top: 1235px;
}
#Layer29 {
	position:absolute;
	width:200px;
	height:64px;
	z-index:19;
	left: 1046px;
	top: 834px;
}
#Layer31 {	position:absolute;
	width:151px;
	height:115px;
	z-index:12;
	left: 16px;
	top: 234px;
}
#Layer34 {	position:absolute;
	width:82px;
	height:99px;
	z-index:20;
	left: 1265px;
	top: 8px;
}
#Layer36 {	position:absolute;
	width:107px;
	height:61px;
	z-index:14;
	left: 1130px;
	top: 295px;
}
#Layer38 {	position:absolute;
	width:107px;
	height:56px;
	z-index:26;
	left: 1244px;
	top: 30px;
}
#Layer37 {	position:absolute;
	width:200px;
	height:60px;
	z-index:13;
	left: 1109px;
	top: 244px;
}
#Layer32 {
	position:absolute;
	width:698px;
	height:143px;
	z-index:11;
	left: 22px;
	top: 431px;
}
#Layer33 {
	position:absolute;
	width:698px;
	height:492px;
	z-index:22;
	left: 22px;
	top: 569px;
}
#Layer2 {
	position:absolute;
	width:591px;
	height:398px;
	z-index:24;
	left: 732px;
	top: 178px;
}
#Layer35 {
	position:absolute;
	width:407px;
	height:53px;
	z-index:25;
	left: 439px;
	top: 110px;
}
#Layer39 {
	position:absolute;
	width:575px;
	height:402px;
	z-index:27;
	left: 733px;
	top: 666px;
}
.STYLE33 {font-size: 18px; font-family: "微软雅黑"; color: #000000; }
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

<script type="text/javascript">
var Request = new Object();
Request=GetRequest();
var city;
city=Request['city'];
spot=Request['spot'];
</script>

<!--推荐酒店-->
<script type="text/javascript">
    $().ready(function() {
      $('.kwicks').kwicks({
        max:400,//控制.extension区块的宽度
        spacing:10//控制图片之间的距离
      });
    });
</script>

</head>

<body onload="MM_preloadImages('images/back_banner11.png','images/back_banner20.png','images/back_banner31.png','images/air1.png','images/飞机火车1.png','images/train1.png','images/map1.png');start()">
<div id="Layer32">
  <table width="694"  border="0">
    <tr>
      <td height="80" colspan="4" class="STYLE25">${attractionName}</td>
    </tr>
    <tr>
      <td width="94" height="53"  valign="top" class="STYLE31">成人票价：</td>
      <td width="212" align="left" valign="top" class="STYLE33">${commonTicketPrice}元/张</td>
      <td width="96" align="left" valign="top" class="STYLE31">学生票价：</td>
      <td width="274" align="left" valign="top" class="STYLE33">${pirticularTicketPrice}元/张</td>
    </tr>
  </table>
</div>
<div id="Layer37"><a href="map.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image17','','images/map1.png',1)"><img src="images/map.png" name="Image17" width="220" height="55" border="0" id="Image17" /></a></div>
<div id="Layer36"><a href="airport.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image16','','images/air1.png',1)"><img src="images/air.png" name="Image16" width="107" height="73" border="0" id="Image16" /></a><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image16','','images/飞机火车1.png',1)"></a></div>
<div id="Layer7"><img src="images/spot.png" width="176" height="115" /></div>
<div id="Layer31"><img src="images/ballen.png" width="150" height="190" /></div>
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
  <div id="Layer34"><img src="images/ballensmall.png" width="80" height="102" /></div>
  <div id="Layer38"><a href="train.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image18','','images/train1.png',1)"><img src="images/train.png" name="Image18" width="107" height="60" border="0" id="Image18" /></a></div>
  <div id="Layer3"><a href="city.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image3','','images/back_banner20.png',1)"><img src="images/back_banner21.png" alt="开始找景点" name="Image3" width="506" height="68" border="0" id="Image3" /></a></div>
  <div id="Layer4"><a href="luntan.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image4','','images/back_banner31.png',1)"><img src="images/back_banner30.png" alt="论坛" name="Image4" width="278" height="51" border="0" id="Image4" /></a></div>
  <div id="Layer1"><a href="index.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image2','','images/back_banner11.png',1)"><img src="images/back_banner10.png" alt="首页" name="Image2" width="278" height="51" border="0" id="Image2" /></a></div>
  <img src="images/back2.png" width="1350" height="953" />
  <div id="Layer39">
  <!--<div class="box">-->
	<ul class="kwicks">
	<s:iterator value="attractionHotels" id="hotel">
		<li>
			<img src="<s:property value="#hotel.hotelPic"/>"/>
			<div class="extension">
				<dl>
					<dt><s:property value="#hotel.hotelName"/></dt>
					<dd><span>电话：</span> <s:property value="#hotel.hotelPhone"/></dd>
					<dd><span>地址：</span> <s:property value="#hotel.hotelAddress"/></dd>
				</dl>
			</div>
		</li>
		</s:iterator>
	</ul>
	<!--代码结束-->
<!--</div>-->
  </div>
  <div id="Layer35">
  </div>
  <div id="Layer2">
    <div id="features">
    <div>
		<img src=${attractionPic1}  width="580" height="350" class="eddie" /></div>
    <div>
<img src=${attractionPic2}  width="580" height="350" class="eddie" />    </div>
    <div>
		<img src=${attractionPic3} width="580" height="350" class="eddie" /></div>
    
  </div>
  <script type="text/javascript">		
				$(document).ready(function(){ $('#features').jshowoff(); });
			</script>	
</div>
</div>
  <div id="Layer33">
    <table width="696" height="209" border="0">
      <tr>
        <td width="105" align="left" valign="top"><span class="STYLE31">景点介绍：</span></td>
        <td width="652" height="400" align="left" valign="top" class="STYLE33">${attractionIntro}</td>
      </tr>
      <tr>
        <td align="left" valign="middle" class="STYLE31" height="50">地址：</td>
        <td align="left" valign="middle" class="STYLE33">${attractionAddress}</td>
      </tr>
    </table>
</div>
  <div id="Layer27"><img src="images/nearhotel.png" width="240" height="88" /></div>
</div>
</body>

</html>
