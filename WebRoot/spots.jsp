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
<title>景点列表</title>
<script type="text/javascript" src="js/get.js"></script> 
<link rel='stylesheet' href='css/style.css'  type="text/css" media='screen'/>
<script type="text/javascript" src="js/jquery.min.js"></script>

<script type="text/javascript" src="js/blocksit.min.js"></script>

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #edfdfc;
	font-family:"微软雅黑";
	font-size:15px;
	overflow-x:hidden;
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

#Layer2 {	position:absolute;
	width:1175;
	height:41px;
	z-index:2;
	left: -1px;
	top: 0px;
}
#Layer1 {
	position:absolute;
	width:200px;
	height:56px;
	z-index:10;
	left: 164px;
	top: 23px;
}
#Layer3 {
	position:absolute;
	width:200px;
	height:74px;
	z-index:12;
	left: 399px;
	top: 3px;
}
#Layer4 {
	position:absolute;
	width:200px;
	height:60px;
	z-index:11;
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
	z-index:14;
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
	z-index:11;
}
#Layer10 {
	position:absolute;
	width:1351px;
	height:2126px;
	z-index:10;
	left: 0px;
	top: 265px;
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
	font-size: 45px;
	color: #2C5EAF;
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
	z-index:6;
	left: 3px;
	top: 6px;
}
#Layer16 {
	position:absolute;
	width:104px;
	height:43px;
	z-index:8;
	left: 1116px;
	top: 0px;
}
#Layer17 {
	position:absolute;
	width:104px;
	height:45px;
	z-index:9;
	left: 1236px;
	top: 0px;
}
#Layer18 {
	position:absolute;
	width:231px;
	height:45px;
	z-index:10;
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
	top: 139px;
	left: 1257px;
}
#Layer22 {	position:absolute;
	width:93px;
	height:103px;
	z-index:14;
	left: 1040px;
	top: 122px;
}
#Layer23 {	position:absolute;
	width:92px;
	height:115px;
	z-index:15;
	top: 60px;
	left: 1111px;
}
#Layer24 {	position:absolute;
	width:93px;
	height:113px;
	z-index:13;
	top: 63px;
	left: 1199px;
}
#Layer26 {	position:absolute;
	width:200px;
	height:115px;
	z-index:11;
	left: 1084px;
	top: 178px;
}
#Layer19 {
	position:absolute;
	width:832px;
	height:707px;
	z-index:16;
	left: 49px;
	top: 866px;
}
.STYLE26 {
	font-size: 18px;
	color: #0099FF;
	font-weight: bold;
	
}
.ImageSize{
width:600px;
height:250px;
border:0px;
}
#Layer20 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:17;
	left: 983px;
	top: 88px;
}
#Layer21 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:4;
	left: 777px;
	top: -4px;
}
#Layer27 {
	position:absolute;
	width:391px;
	height:113px;
	z-index:18;
	left: 955px;
	top: 93px;
}
#Layer28 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:20;
	left: 1066px;
	top: 95px;
}
#Layer29 {	position:absolute;
	width:125px;
	height:74px;
	z-index:16;
	left: 20px;
	top: 288px;
}
#Layer32 {	position:absolute;
	width:126px;
	height:73px;
	z-index:14;
	left: 1066px;
	top: 354px;
}
#Layer30 {	position:absolute;
	width:118px;
	height:63px;
	z-index:17;
	left: 154px;
	top: 360px;
}
#Layer33 {	position:absolute;
	width:153px;
	height:71px;
	z-index:15;
	left: 1134px;
	top: 280px;
}

#Layer2 {
	position:absolute;
	width:303px;
	height:45px;
	z-index:13;
	left: 439px;
	top: 110px;
}
#Layer31 {
	position:absolute;
	width:151px;
	height:115px;
	z-index:13;
	left: 16px;
	top: 234px;
}
#Layer34 {
	position:absolute;
	width:82px;
	height:99px;
	z-index:5;
	left: 1265px;
	top: 8px;
}
#Layer35 {
	position:absolute;
	width:955px;
	height:800px;
	left: 105px;
	top: 189px;
	z-index: 23;
}
#Layer36 {
	position:absolute;
	width:107px;
	height:61px;
	z-index:16;
	left: 1130px;
	top: 295px;
}
#Layer37 {
	position:absolute;
	width:200px;
	height:60px;
	z-index:15;
	left: 1109px;
	top: 244px;
}
#Layer38 {
	position:absolute;
	width:107px;
	height:56px;
	z-index:21;
	left: 1244px;
	top: 30px;
}
#Layer39 {
	position:absolute;
	width:206px;
	height:81px;
	z-index:24;
	left: 148px;
	top: 170px;
}
.STYLE28 {
	color: #000000;
	font-weight: bold;
	font-size: 18px;
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

<!-- 瀑布流-->
<script>
$(document).ready(function() {
	//vendor script
	$('#header')
	.css({ 'top':-50 })
	.delay(1000)
	.animate({'top': 0}, 800);
	
	$('#footer')
	.css({ 'bottom':-15 })
	.delay(1000)
	.animate({'bottom': 0}, 800);
	
	//blocksit define
	$(window).load( function() {
		$('#container').BlocksIt({
			numOfCol: 5,
			offsetX: 8,
			offsetY: 8
		});
	});
	
	//window resize
	var currentWidth = 1100;
	$(window).resize(function() {
		var winWidth = $(window).width();
		var conWidth;
		if(winWidth < 660) {
			conWidth = 440;
			col = 2
		} else if(winWidth < 880) {
			conWidth = 660;
			col = 3
		} else if(winWidth < 1100) {
			conWidth = 880;
			col = 4;
		} else {
			conWidth = 1100;
			col = 5;
		}
		
		if(conWidth != currentWidth) {
			currentWidth = conWidth;
			$('#container').width(conWidth);
			$('#container').BlocksIt({
				numOfCol: col,
				offsetX: 8,
				offsetY: 8
			});
		}
	});
});
</script>


<!--获取解析url-->
<script type="text/javascript">
var Request = new Object();
Request=GetRequest();
var city;
city=Request['city'];

</script>

<!--<script type="text/javascript">
var url = "spot.html?city="+city+"&spot=劳动公园";
</script>-->
</head>

<body onLoad="MM_preloadImages('images/back_banner11.png','images/back_banner20.png','images/back_banner31.png','images/飞机火车1.png','images/map1.png','images/air1.png','images/train1.png');start()">
<div id="Layer7"><img src="images/spots.png" width="315" height="140" /></div>
<div id="Layer31"><img src="images/ballen.png" width="150" height="190" /></div>
<div id="Layer37"><a href="map.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image17','','images/map1.png',1)"><img src="images/map.png" name="Image17" width="220" height="55" border="0" id="Image17" /></a></div>
<div id="Layer36"><a href="airport.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image16','','images/air1.png',1)"><img src="images/air.png" name="Image16" width="107" height="73" border="0" id="Image16" /></a><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image16','','images/飞机火车1.png',1)"></a></div>
<div id="Layer9">
  <div id="Layer6"> <img id="img1" src="images/top1.PNG" width="1172" height="245" style="filter:revealTrans(Transition=1,Duration=1.5)" /></div>
<img src="images/back1.png" width="1351" height="267" />
<div id="Layer18">
  <table width="221" height="43" border="0">
    <tr>
      <td width="93" align="center" valign="middle"><span class="STYLE20"> <a href="login.html" class="STYLE20">登录</a></span></td>
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
  <img src="images/back2.png" width="1350" height="953" />
  <div id="Layer39">
    <table width="205" height="79" border="0">
      <tr>
        <td width="199" class="STYLE25">
		<script type="text/javascript">
             document.write(city);
        </script>
		</td>
      </tr>
    </table>
  </div>
<div id="Layer38"><a href="train.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image18','','images/train1.png',1)"><img src="images/train.png" name="Image18" width="107" height="60" border="0" id="Image18" /></a></div>
  <div id="Layer35">
  
 <section id="wrapper">

<div id="container">
<s:iterator value="all_attractions" id="attras">
	<div class="grid">
	<div class="block description">
		<div class="imgholder">
		<A href="AttractionDetailInfo.action?attractionId=<s:property value="#attras.attractionId"/>" target="_blank"><img src="<s:property value="#attras.attractionPic1"/>" width="200px" height="150px" border="0" /></A>		</div>
		<a href="spot.jsp" target="_blank"><strong class="STYLE28"><s:property value="#attras.attractionName"/></strong></a>
		<p><s:property value="#attras.attractionAddress"/></p>
		<div class="meta"></div>
	</div>
	</div>
	</s:iterator>
</div>
</section>

  </div>
  <div id="Layer34"><img src="images/ballensmall.png" width="80" height="102" /></div>
</div>
</body>

</html>
