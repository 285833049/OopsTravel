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
<title>论坛</title>

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
	width:175px;
	height:115px;
	z-index:13;
	left: 31px;
	top: 333px;
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
#Layer35 {
	position:absolute;
	width:878px;
	height:452px;
	z-index:15;
	left: 219px;
	top: 139px;
}
#Layer38 {
	position:absolute;
	width:1057px;
	height:458px;
	z-index:16;
	left: 221px;
	top: 425px;
}
#Layer39 {
	position:absolute;
	width:200px;
	height:94px;
	z-index:16;
	left: 686px;
	top: 322px;
}
.STYLE21 {font-size: 18px}

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

<body onLoad="MM_preloadImages('images/back_banner11.png','images/back_banner20.png','images/back_banner31.png','images/飞机火车1.png','images/map1.png','images/air1.png','images/train1.png','images/back_banner21.png','images/back_banner30.png');start()">
<div id="Layer7"><img src="images/luntan.png" width="176" height="115" /></div>
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
  <div id="Layer3"><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image16','','images/back_banner21.png',1)"><img src="images/back_banner20.png" name="Image16" width="505" height="65" border="0"></a><a href="city.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image3','','images/back_banner20.png',1)"></a></div>
  <div id="Layer4"><a href="luntan.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image4','','images/back_banner31.png',1)"></a><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image18','','images/back_banner30.png',1)"><img src="images/back_banner31.png" name="Image18" width="278" height="51" border="0"></a></div>
  <div id="Layer1"><a href="index.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image2','','images/back_banner11.png',1)"><img src="images/back_banner10.png" alt="首页" name="Image2" width="278" height="51" border="0" id="Image2" /></a></div>
  <img src="images/back2.png" width="1351" height="953" />
  <div id="Layer35">
    <table width="880" height="94">
	<tr>
	<td width="793" class="STYLE20">主题</td>
	<td width="270" class="STYLE20">发帖时间</td>
	</tr>
    <s:iterator value="allTopic" id="topic">
    <tr>
    <td>
    <A href="TopicDetail.action?topicId=<s:property value="#topic.topicId"/>">
    <s:property value="#topic.topicName"/>
    </A>
    
    </td>
    <td>
    <s:property value="#topic.topinPublicTime"/>
    </td>
    
    </tr>
    </s:iterator>
	<tr>
	    <s:form method="post" action="">
    <table>
	<tr>
	<td class="STYLE21">主题：</td>
	<td>
	<input type="text" width="200" height="40"/>
	</td>
	</tr>
	<tr>
	<td class="STYLE21">内容：</td>
	<td>
    <s:textarea name="replyinfo"cols="70" rows="8"  />
    <s:hidden name="topicId" value="%{topicId}" />
    <s:submit value="发表帖子" />
	</td>
	</tr>
    </table>
    </s:form>
	</tr>
    </table>
</div>
<div id="Layer34"><a href="train.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image15','','images/train1.png',1)"><img src="images/train.png" name="Image15" width="107" height="60" border="0" id="Image15" /></a></div>
  <div id="Layer31"><img src="images/ballensmall.png" width="80" height="102" /></div>
</div>
</body>

</html>
