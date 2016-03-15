<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/jshowoff.css" type="text/css" media="screen, projection" />
<script type="text/javascript" src="js/jquery.min.js"></script> 
<script type="text/javascript" src="js/jquery.jshowoff.min.js"></script>

<title>囧途网首页</title>
<style type="text/css">
<!--
body {
	position: absolute;
	margin: 0px;
	padding: 0px;
	width: 100%;
	height: 100%;
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


#Layerh1 {
	position:absolute;
	width:501px;
	height:251px;
	z-index:14;
	left: 29px;
	top: 451px;
}
.STYLE1 {
	color: #063986;
	font-weight: bold;
	font-family: "微软雅黑";
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

.STYLE4 {font-family: "微软雅黑"}
#Layer4 {
	position:absolute;
	width:498px;
	height:186px;
	z-index:4;
	left: -5px;
	top: -6px;
	background-image: url(images/dengluban.png);
	visibility: hidden;
}
#Layer5 {
	position:absolute;
	width:200px;
	height:51px;
	z-index:21;
	left: 157px;
	top: 289px;
}
#Layer6 {
	position:absolute;
	width:200px;
	height:65px;
	z-index:22;
	left: 390px;
	top: 263px;
}
#Layer7 {
	position:absolute;
	width:200px;
	height:51px;
	z-index:20;
	left: 842px;
	top: 289px;
}
#Layer8 {
	position:absolute;
	width:658px;
	height:498px;
	z-index:5;
	left: 142px;
	top: 565px;
}
#Layer9 {
	position:absolute;
	width:409px;
	height:400px;
	z-index:23;
	left: 927px;
	top: 495px;
}
.STYLE17 {
	font-family: "微软雅黑";
	font-weight: bold;
	color: #328AAF;
	font-size:16px;
}
#Layer10 {
	position:absolute;
	width:1360px;
	height:115px;
	z-index:11;
	left: 2px;
	top: 1190px;
	background-image: url(images/footer.jpg);
}
#Layer11 {
	position:absolute;
	width:266px;
	height:123px;
	z-index:6;
	left: 1018px;
	top: 5px;
}
#Layer12 {
	position:absolute;
	width:53px;
	height:38px;
	z-index:7;
	left: 1058px;
	top: 119px;
}
#Layer13 {
	position:absolute;
	width:66px;
	height:39px;
	z-index:8;
	left: 1179px;
	top: 117px;
}
#Layer14 {
	position:absolute;
	width:1353px;
	height:150px;
	z-index:12;
	left: 1px;
	top: 1000px;
}
#Layer15 {
	position:absolute;
	width:1173px;
	height:175px;
	z-index:17;
	left: 166px;
	top: 17px;
}
#Layer16 {
	position:absolute;
	width:926px;
	height:304px;
	z-index:11;
	top: 217px;
	left: 0px;
}
#Layer17 {
	position:absolute;
	width:200px;
	height:133px;
	z-index:10;
	left: 735px;
	top: 240px;
}
#Layer18 {
	position:absolute;
	width:643px;
	height:548px;
	z-index:9;
	left: 58px;
	top: 467px;
}

#Layer19 {
	position:absolute;
	width:1319px;
	height:1302px;
	z-index:3;
	left: -3px;
	top: 1px;
	background-image: url(images/%E5%A4%A9%E7%A9%BA.png);
}
#Layer20 {
	position:absolute;
	width:1356px;
	height:532px;
	z-index:23;
	left: 0px;
	top: -265px;
	visibility: visible;
}
#Layer21 {
	position:absolute;
	width:1356px;
	height:1100px;
	z-index:5;
	left: 0px;
	top: 0px;
	background-color: #EDFDFC;
	visibility: visible;
}
#Layer22 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:1;
}

#Layer23 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:1;
}
#Layer1 {
	position:absolute;
	width:103px;
	height:43px;
	z-index:25;
	left: 1116px;
	top: 0px;
}
#Layer24 {
	position:absolute;
	width:106px;
	height:46px;
	z-index:26;
	left: 1236px;
	top: 0px;
}
#Layer25 {
	position:absolute;
	width:231px;
	height:45px;
	z-index:27;
	left: 1117px;
	top: 2px;
}
.STYLE20 {
	font-size: 24px;
	color: #0066FF;
	font-weight: bold;
	font-family: "Adobe 楷体 Std R", "Adobe 明體 Std L";
}

#Layer26 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:24;
	left: 3px;
	top: 6px;
}
#Layer27 {
	position:absolute;
	width:150px;
	height:185px;
	z-index:15;
	left: 16px;
	top: 234px;
}
#Layer29 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:22;
	left: 1px;
	top: 1230px;
}
#Layer28 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:23;
	left: 54px;
	top: 693px;
}
#Layer30 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:18;
	left: 1px;
	top: 311px;
}
.STYLE21 {
	font-size: 16px;
	font-family: "微软雅黑";
}
#Layer31 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:13;
	left: 2px;
	top: 240px;
}
#Layer32 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:19;
	left: 1037px;
	top: 319px;
}
.STYLE22 {font-family: "微软雅黑"; font-weight: bold; color: #328AAF; font-size: 18px; }
.STYLE23 {font-size: 16px; }
.STYLE24 {font-size: 14px}
#Layer2 {
	position:absolute;
	width:303px;
	height:45px;
	z-index:6;
	left: 439px;
	top: 366px;
	visibility: visible;
}
#Layer3 {
	position:absolute;
	width:86px;
	height:107px;
	z-index:16;
	left: 1195px;
	top: 274px;
}

-->


</style>

<script type="text/JavaScript">



function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}




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

<body onLoad = "MM_preloadImages('images/back_banner10.png','images/back_banner21.png','images/back_banner31.png');start()" >
<div id="Layer2">
  <form method="post" id="searchform" action="SearchAttraction">
    <fieldset class="search">
      <!-- <input name="text" type="text" class="box" onFocus="if(value=='Search'){value=''}" onBlur="if(value==''){value='Search'}" value="Search"/>
      <button class="btn" type="submit">Search</button> -->
      <s:textfield name="searchfor"/>
      <s:submit value="搜索"/>
    </fieldset>
  </form>
</div>
<div id="Layer21">
  <div id="Layer27"><img src="images/ballen.png" width="150" height="190" /></div>
  <div id="Layer15"> <img id="img1" src="images/top1.PNG" width="1172" height="246" style="filter:revealTrans(Transition=1,Duration=1.5)" /> </div>
  <div id="Layer24"><img src="images/button1.png" width="102" height="42" /></div>
  <div id="Layer1"><img src="images/button1.png" width="102" height="42" /></div>
  <div id="Layer25">
    <table width="221" height="43" border="0">
      <tr>
        <td width="93" align="center" valign="middle"><span class="STYLE20"> <a href="login.jsp" class="STYLE20">登录</a></span></td>
        <td width="11">&nbsp;</td>
        <td width="103" align="center" valign="middle" class="STYLE20"><a href="zhuce.jsp" target="_blank" class="STYLE20">注册</a></td>
      </tr>
    </table>
  </div>
  <div id="Layer26"><img src="images/jiongtu.png" width="190" height="225"></div>
  <div id="Layer9">
    <table width="100%" height="382" border="0" cellpadding="4" cellspacing="4" style="text-align: center">
      <tr>
        <td width="30%" height="374" style="text-align: right; vertical-align: top"><table width="100%" height="100" border="0" cellpadding="4" cellspacing="0">
            <tr>
              <td class="STYLE17"><div align="left" class="STYLE22">2-3月蜜月去哪里，囧图网告诉你</div></td>
            </tr>
            <tr>
              <td class="StoryContentColor STYLE4"><div align="left" class="STYLE24">世界顶级的海岛蜜月圣地，它被誉为“上帝抛洒人间的项链”，“印度洋上人间最后的乐园”，从高空望去，马尔代夫不愧是印度洋上的一串明珠，1190个苍翠的群岛，镶嵌在蔚蓝的海面上，如同珍珠一样光彩夺目！</div></td>
            </tr>
            <tr>
              <td class="STYLE17"><div align="left" class="STYLE22">新年啦，去港澳逛逛吧</div></td>
            </tr>
            <tr>
              <td class="StoryContentColor STYLE4"><div align="left" class="STYLE24">新年到，计划好年终奖，压岁钱怎么花了嘛？去港澳逛逛嘛，你会有不小的收获哟。结束了疯狂的Shopping，在迪斯尼乐园里，好好的放松一下。</div></td>
            </tr>
            <tr>
              <td class="STYLE17"><div align="left" class="STYLE22">寒冷的冬天，去巴厘岛过暖冬</div></td>
            </tr>
            <tr>
              <td class="StoryContentColor STYLE4"><div align="left" class="STYLE24">巴厘岛旅游：巴厘岛还是一座享乐之岛。田园农舍、森林草原和急流深谷，错落有致的分布在面积不大的土地上。</div></td>
            </tr>
            <tr>
              <td class="STYLE17"><div align="left" class="STYLE22">春天花会开：赏花 品酒 游欧洲</div></td>
            </tr>
            <tr>
              <td class="StoryContentColor STYLE4"><div align="left" class="STYLE24">又是一年春暖花开日，郁郁葱葱的开满整个田野，暖暖的阳光也在欢愉的跳跃着。赶紧根据您的需要，让我们一起去赏花、品酒、游欧洲吧！</div></td>
            </tr>
            <tr>
              <td class="StoryContentColor STYLE4"><div align="right" ><a href="NewsInfo.action" target="_blank"><img src="images/morenews.png" width="211" height="45" border="0"></a></div></td>
            </tr>
        </table></td>
      </tr>
    </table>
  </div>
  <div id="Layer7"><a href="luntan.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image8','','images/back_banner31.png',1)"><img src="images/back_banner30.png" alt="论坛" name="Image8" width="278" height="51" border="0" id="Image8" /></a></div>
  <div id="Layer5"><a href="index.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image6','','images/back_banner10.png',1)"><img src="images/back_banner11.png" alt="首页" name="Image6" width="278" height="51" border="0" id="Image6" /></a></div>
  <div id="Layer6"><a href="city.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image7','','images/back_banner21.png',1)"><img src="images/back_banner20.png" alt="开始找景点" name="Image7" width="505" height="65" border="0" align="middle" id="Image7" /></a></div>
  <img src="images/backend.png" width="1352" height="998">
  <div id="Layer3"><img src="images/ballensmall.png" width="80" height="102"></div>
  <div id="Layer32"><img src="images/news1.png" width="295" height="133"></div>
<div id="Layer30"><img src="images/hotspot.png" width="315" height="140"></div>
<div id="Layerh1">
  <div id="features">
    <div><a href="spot.jsp?spot=天安门" ><h2 class="STYLE1">天安门</h2> </a>
        <p class="STYLE21">坐落在北京市的中心，与天安门广场隔长安街相望。是明清两代北京皇城的正门。始建于明永乐15年，最初名叫承天门，寓意承天启运，受命于天。</p>
		<a href="spot.jsp?spot=天安门" ><img src="images/beijing.jpg"  width="870" height="505" class="eddie" border="0" /></a></div>
    <div><a href="spot.jsp?spot=黄山" ><h2 class="STYLE1">黄山</h2> </a>
        <p class="STYLE21">位于安徽省南部黄山市境内，为三山五岳中三山之一。黄山为道教圣地，遗址遗迹众多，有“天下第一奇山”之美誉。是中国最美的，最令人震撼的十大名山之一，同时也是著名的避暑圣地。</p>
		<a href="spot.jsp?spot=黄山"><img src="images/huangshan.jpg"  width="870" height="505" class="eddie" border="0"  /></a>    </div>
    <div><a href="spot.jsp?spot=大连" ><h2 class="STYLE1">大连</h2> </a>
        <p class="STYLE21">
		位于欧亚大陆的东岸，有着“浪漫之都”“北方香港”“时尚之都”的美誉。大连，毗邻大海，使得这里的气候四季宜人，冬暖夏凉。被誉为“最适宜人类居住的地方。”</p>
		<a href="spot.jsp?spot=大连"><img src="images/dalian.png"width="870" height="505" class="eddie" border="0"  /></a></div>
    <div><a href="spot.jsp?spot=长白山" ><h2 class="STYLE1">长白山</h2> </a>
        <p class="STYLE21">长白山是东北第一高峰，号称“东北屋脊”。长白山古时称，不咸山。其主峰是一座休眠的活火山，在清朝时曾多次喷发。火山口中为天池，因天池水怪的传说而成为旅游胜地。</p>
		<a href="spot.jsp?spot=长白山"><img src="images/tianchi.png" width="870" height="505" class="eddie" border="0"  /></a></div>
  </div>
  <script type="text/javascript">		
				$(document).ready(function(){ $('#features').jshowoff(); });
			</script>
			
</div>
</div>
</body>
</html>
