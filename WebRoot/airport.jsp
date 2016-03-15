<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<title>机票查询</title>
 <link rel="stylesheet" type="text/css" href="css/jquery.suggest.css" />
<link href="css/jquery-ui-1.8.21.custom.css" rel="stylesheet" />
 <script type="text/javascript" src="js1/jquery-1.7.2.min.js"></script>
 <script type="text/javascript" src="js/j.dimensions.js" ></script>
 <script type="text/javascript" src="js/aircity.js"></script>
 <script type="text/javascript" src="js/j.suggest.js"></script>

  <script type="text/javascript">
 $(function(){
 $("#arrcity").suggest(citys,{hot_list:commoncitys,dataContainer:'#arrcity_3word',onSelect:function(){$("#city2").click();}, attachObject:'#suggest'});
$("#city2").suggest(citys,{hot_list:commoncitys,attachObject:"#suggest2"});
});
</script>
<style type="text/css">
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
	left: 931px;
	top: -4px;
}
#Layer9 {
	position:absolute;
	width:1351px;
	height:265px;
	z-index:11;
	left: 0;
	top: 0;
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
	z-index:13;
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
	z-index:16;
	left: 1130px;
	top: 295px;
}
#Layer37 {	position:absolute;
	width:200px;
	height:47px;
	z-index:15;
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
#Layer35{
	position:absolute;
	width:600px;
	height:431px;
	z-index:9999;
	left: 0px;
	top: 0px;
}
.STYLE27 {
	font-size: 16px;
	font-family: "微软雅黑";
	color: #1349A4;
	font-weight: bold;
}

#Layer38{
	position:absolute;
	width: 374px;
	height: 30px;
	left: 520px;
	top: 459px;
	z-index: 10001;
}

select {
	position:relative;
	font-size:15px;
	width:160px;

	color:#248DE3;
}

#Layer39{
	position:absolute;
	width: 975px;
	height: 47px;
	left: 42px;
	top: 502px;
	z-index: 10001;
}
#Layer40 {
	position:absolute;
	width:100px;
	height:50px;
	z-index:15;
	left: 1083px;
	top: 491px;
}
#Layer41 {
	position:absolute;
	width:1087px;
	height:115px;
	z-index:15;
	left: 72px;
	top: 343px;
}
.STYLE28 {font-family:"微软雅黑"; font-size: 24px;}
.STYLE30 {font-family: "微软雅黑"; font-size: 18px;}
.STYLE31 {font-family: "微软雅黑"; font-size: 24px; font-weight: bold; }
#Layer42 {
	position:absolute;
	width:563px;
	height:30px;
	z-index:16;
	left: 386px;
	top: 227px;
}
.STYLE33 {font-family: "微软雅黑"; color: #1349A4; font-size: 14px;}
#Layer43 {	position:absolute;
	width:71px;
	height:49px;
	z-index:17;
	left: 1087px;
	top: 293px;
}
#Layer44 {
	position:absolute;
	width:142px;
	height:115px;
	z-index:16;
	left: 1203px;
	top: 339px;
}
</style>
<script type="text/JavaScript">
<!--
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_showHideLayers() { //v6.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}

function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
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

<body onLoad="MM_preloadImages('images/back_banner11.png','images/back_banner20.png','images/back_banner31.png','images/飞机火车1.png','images/路线查询1.png','images/飞机1.png','images/火车1.png');start()">
<div id="Layer35">
 <form class="form-horizontal" method="post" action="findAirline.action">
  <div id="Layer38" >
   <label for="date01" class="STYLE27">日期：</label>
   <input name="date" type="text" class="input-xlarge datepicker" id="date01" value=""/>   
   </div>

  <div id="box2">
    <input type="hidden" name="arrcity_3word" id="arrcity_3word" value="" />
    <label for="arrcity" class="STYLE27">出发城市：</label>
    <input type="text" name="startCity" id="arrcity" />
    <div id='suggest' class="ac_results"> </div>
    <label for="city2" class="STYLE27">目的城市：</label>
    <input type="text" name="arriveCity" id="city2" />
    <div id='suggest2' class="ac_results"> </div>
    <p>&nbsp;</p>
</div>
<div id="Layer39">
<label class="STYLE27">出发时间：</label>
  <select name="startTime1" >
  <option value="" selected  >7:00</option>
  <option value="" >8:00</option>
  <option value="" >9:00</option>
  <option value="" >10:00</option>
  <option value="" >11:00</option>
  <option value="" >12:00</option>
  <option value="" >13:00</option>
		<option value="" >14:00</option>
		<option value="">15:00</option>
		<option value="">16:00</option>
		<option value="">18:00</option>
		<option value="">19:00</option>
		<option value="">20:00</option>
		<option value="">21:00</option>
		<option value="">22:00</option>
		<option value="">23:00</option>
		<option value="">24:00</option>
		<option value="">01:00</option>
		<option value="">02:00</option>
		<option value="">03:00</option>
		<option value="">04:00</option>
		<option value="">05:00</option>
		<option value="">06:00</option>

  </select>
  <label class="STYLE27">到</label>
  <select name="startTime2">
  <option value="" selected >7:00</option>
  <option value="" >8:00</option>
  <option value="" >9:00</option>
  <option value="" >10:00</option>
  <option value="" >11:00</option>
  <option value="" >12:00</option>
  <option value="" >13:00</option>
		<option value="" >14:00</option>
		<option value="">15:00</option>
		<option value="">16:00</option>
		<option value="">18:00</option>
		<option value="">19:00</option>
		<option value="">20:00</option>
		<option value="">21:00</option>
		<option value="">22:00</option>
		<option value="">23:00</option>
		<option value="">24:00</option>
		<option value="">01:00</option>
		<option value="">02:00</option>
		<option value="">03:00</option>
		<option value="">04:00</option>
		<option value="">05:00</option>
		<option value="">06:00</option>

  </select>

<label class="STYLE27">到达时间：</label>  
  <select name="arriveTime1">
       <option value="" selected >7:00</option>
  <option value="" >8:00</option>
  <option value="" >9:00</option>
  <option value="" >10:00</option>
  <option value="" >11:00</option>
  <option value="" >12:00</option>
  <option value="" >13:00</option>
		<option value="" >14:00</option>
		<option value="">15:00</option>
		<option value="">16:00</option>
		<option value="">18:00</option>
		<option value="">19:00</option>
		<option value="">20:00</option>
		<option value="">21:00</option>
		<option value="">22:00</option>
		<option value="">23:00</option>
		<option value="">24:00</option>
		<option value="">01:00</option>
		<option value="">02:00</option>
		<option value="">03:00</option>
		<option value="">04:00</option>
		<option value="">05:00</option>
		<option value="">06:00</option>
  </select>
  <label class="STYLE27">到</label>
  <select name="arriveTime2">
  <option value="" selected >7:00</option>
  <option value="" >8:00</option>
  <option value="" >9:00</option>
  <option value="" >10:00</option>
  <option value="" >11:00</option>
  <option value="" >12:00</option>
  <option value="" >13:00</option>
		<option value="" >14:00</option>
		<option value="">15:00</option>
		<option value="">16:00</option>
		<option value="">18:00</option>
		<option value="">19:00</option>
		<option value="">20:00</option>
		<option value="">21:00</option>
		<option value="">22:00</option>
		<option value="">23:00</option>
		<option value="">24:00</option>
		<option value="">01:00</option>
		<option value="">02:00</option>
		<option value="">03:00</option>
		<option value="">04:00</option>
		<option value="">05:00</option>
		<option value="">06:00</option>

  </select>

</div>
<div id="Layer40">

<input type="image" method="submit" name="makesure" src="images/airsure.png" alt="图片按钮" >
</div>
</form>
</div>

<div id="Layer7"><img src="images/airticket.png" width="315" height="140" /></div>
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
  <div id="Layer3"><a href="city.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image3','','images/back_banner20.png',1)"><img src="images/back_banner21.png" alt="开始找景点" name="Image3" width="506" height="68" border="0" id="Image3" /></a></div>
  <div id="Layer4"><a href="luntan.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image4','','images/back_banner31.png',1)"><img src="images/back_banner30.png" alt="论坛" name="Image4" width="278" height="51" border="0" id="Image4" /></a></div>
  <div id="Layer1"><a href="index.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image2','','images/back_banner11.png',1)"><img src="images/back_banner10.png" alt="首页" name="Image2" width="278" height="51" border="0" id="Image2" /></a></div>
  <img src="images/back2.png" width="1351" height="953" />
  
  <div id="Layer44">
  
  <form method="post" action="sortAirlineByStartTime.action">
    	<input type="submit" value="按出发时间排序">
    </form>
    
    <form method="post" action="sortAirlineByArriveTime.action">
    	<input type="submit" value="按到达时间排序">
    </form>
  </div>
  <div id="Layer41">
     <table width="1128" height="127">
  	<tr>
  		<td width="48">标号</td>
  		<td width="114">航班号</td>
  		<td width="134">航空公司</td>
  		<td width="121">出发机场</td>
  		<td width="121">到达机场</td>
  		<td width="122">出发时间</td>
  		<td width="131">到达时间</td>
  		<td width="85">机型</td>
  		<td width="80">经停</td>
  		<td width="128">飞行周期（星期）</td>
  	</tr>
  	<s:iterator value="airlines" status="st">
      <s:if test="AirlineCode!=null"> 
	      <tr>
	      	<td><s:property value="#st.index"/></td>
	      	<td><s:property value="AirlineCode"/></td>
	      	<td><s:property value="Company"/></td>
	      	<td><s:property value="StartDrome"/></td>
	      	<td><s:property value="ArriveDrome"/></td>
	      	<td><s:property value="StartTime"/></td>
	      	<td><s:property value="ArriveTime"/></td>
	      	<td><s:property value="Mode"/></td>
	      	<td><s:property value="AirlineStop"/></td>
	      	<td><s:property value="Week"/></td>
	      </tr>
	  </s:if>
     </s:iterator>
  </table>
  </div>
  <div id="Layer34"><a href="train.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image15','','images/train1.png',1)"><img src="images/train.png" name="Image15" width="107" height="60" border="0" id="Image15" /></a></div>
  <div id="Layer31"><img src="images/ballensmall.png" width="80" height="102" /></div>
  
</div>
<!--<script src="js1/jquery-1.7.2.min.js"></script>-->
	<!-- jQuery UI -->
	<script src="js1/jquery-ui-1.8.21.custom.min.js"></script>

	<script src="js1/jquery.cookie.js"></script>
	<!-- calander plugin -->
	<script src='js1/fullcalendar.min.js'></script>


	<!-- rich text editor library -->
	<script src="js1/jquery.cleditor.min.js"></script>

	<script src="js1/jquery.history.js"></script>

	<script src="js1/charisma.js"></script>




</body>

</html>
