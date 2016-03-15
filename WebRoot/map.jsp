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
<title>自驾路线</title>
 <link rel="stylesheet" type="text/css" href="css/jquery.suggest.css" />
<link href="css/jquery-ui-1.8.21.custom.css" rel="stylesheet" />
 <script type="text/javascript" src="js1/jquery-1.7.2.min.js"></script>
 <script type="text/javascript" src="js/j.dimensions.js" ></script>
 <script type="text/javascript" src="js/aircity.js"></script>
 <script type="text/javascript" src="js/j.suggest.js"></script>
 <script type="text/javascript" src="http://api.map.baidu.com/api?v=1.4"></script>

  <script type="text/javascript">
 $(function(){
 $("#arrcity").suggest(citys,{hot_list:commoncitys,dataContainer:'#arrcity_3word',onSelect:function(){$("#city2").click();}, attachObject:'#suggest'});
$("#city2").suggest(citys,{hot_list:commoncitys,attachObject:"#suggest2"});
});
</script>

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #edfdfc;
}

#l-map{height:700px;width:800px;float:left;border-right:2px solid #bcbcbc;}
#r-result{height:700px;width:300px; font-size:18px; font-family:"微软雅黑"; text-align:left;}


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
	z-index:6;
	left: 164px;
	top: 23px;
}
#Layer3 {
	position:absolute;
	width:200px;
	height:74px;
	z-index:8;
	left: 399px;
	top: 3px;
}
#Layer4 {
	position:absolute;
	width:200px;
	height:60px;
	z-index:7;
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
	z-index:12;
	left: 3px;
	top: 346px;
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
	left: 0;
	top: 0;
}
#Layer10 {
	position:absolute;
	width:1351px;
	height:1131px;
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
	font-size: 36px;
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
	top: 134px;
	left: 1262px;
}
#Layer22 {	position:absolute;
	width:93px;
	height:103px;
	z-index:14;
	left: 1045px;
	top: 117px;
}
#Layer23 {	position:absolute;
	width:92px;
	height:115px;
	z-index:15;
	top: 55px;
	left: 1116px;
}
#Layer24 {	position:absolute;
	width:93px;
	height:113px;
	z-index:13;
	top: 58px;
	left: 1204px;
}
#Layer26 {	position:absolute;
	width:200px;
	height:115px;
	z-index:11;
	left: 1089px;
	top: 173px;
}
#Layer19 {
	position:absolute;
	width:835px;
	height:525px;
	z-index:16;
	left: 204px;
	top: 94px;
}
.STYLE26 {
	font-size: 18px;
	color: #4D58C4;
	font-weight: bold;
}
.ImageSize{
width:500px;
height:250px;
}
#Layer31 {position:absolute;
	width:151px;
	height:115px;
	z-index:11;
	left: 16px;
	top: 234px;
}
#Layer36 {position:absolute;
	width:107px;
	height:61px;
	z-index:14;
	left: 1130px;
	top: 295px;
}
#Layer38 {position:absolute;
	width:107px;
	height:56px;
	z-index:10;
	left: 1244px;
	top: 30px;
}
#Layer34 {position:absolute;
	width:82px;
	height:99px;
	z-index:9;
	left: 1265px;
	top: 8px;
}
#Layer37 {position:absolute;
	width:200px;
	height:60px;
	z-index:13;
	left: 1109px;
	top: 244px;
}
#Layer20 {
	position:absolute;
	width:600px;
	height:431px;
	z-index:15;
	left: 0px;
	top: 0px;
}
#Layer21 {
	position:absolute;
	width:504px;
	height:29px;
	z-index:10004;
	left: 318px;
	top: 460px;
}
.STYLE27 {
	font-size: 16px;
	font-family: "微软雅黑";
	color: #1349A4;
	font-weight: bold;
}
#Layer27 {
	position:absolute;
	width:378px;
	height:32px;
	z-index:10001;
	left: 784px;
	top: 458px;
}
select {
	position:relative;
	font-size:15px;
	width:160px;

	color:#248DE3;
}
#Layer28 {
	position:absolute;
	width:200px;
	height:44px;
	z-index:10002;
	left: 1102px;
	top: 445px;
}
#Layer29 {
	position:absolute;
	width:1178px;
	height:618px;
	z-index:11;
	left: 77px;
	top: 266px;
}
#Layer30 {	position:absolute;
	width:179px;
	height:73px;
	z-index:10000;
	left: 195px;
	top: 364px;
}
#Layer32 {	position:absolute;
	width:181px;
	height:81px;
	z-index:17;
	left: 920px;
	top: 364px;
}
.STYLEFONT{
color:#999999
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

<script type="text/javascript">
var Request = new Object();
Request=GetRequest();
var city;
city=Request['city'];

</script>
</head>

<body onLoad="MM_preloadImages('images/back_banner11.png','images/back_banner20.png','images/back_banner31.png','images/air1.png','images/飞机火车1.png','images/train1.png','images/map1.png');start()">
<div id="Layer20">
  <div id="Layer32"><a href="life.jsp"><img src="images/life.png" width="177" height="80" border="0"></a></div>
  <div id="Layer30"><a href="map.jsp"><img src="images/mapk.png" width="177" height="80" border="0"></a></div>
<form>
  <div id="box2">
    <input type="hidden" name="arrcity_3word" id="arrcity_3word" value="" />
    <label for="arrcity" class="STYLE27">选择城市：</label>
    <input type="text" name="arrcity" id="arrcity" />
    <div id='suggest' class="ac_results"> </div>   
    
  </div>
  <div id="Layer21">
    <label class="STYLE27">起点：<input name= "r-from" type="text" class="STYLEFONT"  onFocus="if(value=='请输入您现在所在地点'){value=''}" onBlur="if(value==''){value='请输入您现在所在地点'}" value="请输入您现在所在地点"/></label>
	<label class="STYLE27">终点：<input name= "r-to" type="text" class="STYLEFONT"  onFocus="if(value=='请输入您现在所在地点'){value=''}" onBlur="if(value==''){value='请输入您现在所在地点'}" value="请输入您现在所在地点" /></label>
  </div>
  <div id="Layer27">
  <label class="STYLE27">方式：</label>
  <select name="fangfa"  id="rfangfa">
        <option  selected="selected">驾车</option>
		<option value="" >公交换乘</option>
		<option value="">步行</option>
  </select>
  </div>
  <div id="Layer28">
  <button type="button" onClick="SelectFunction()">查询</button> 
 <!--  <input type="image" method="submit" name="makesure" src="images/mapsure.png" alt="图片按钮" > -->
  </div>
  </form>
</div>
<div id="Layer36"><a href="airport.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image16','','images/air1.png',1)"><img src="images/air.png" name="Image16" width="107" height="73" border="0" id="Image16" /></a><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image16','','images/飞机火车1.png',1)"></a></div>
<div id="Layer37"><a href="map.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image17','','images/map1.png',1)"><img src="images/map.png" name="Image17" width="220" height="55" border="0" id="Image17" /></a></div>
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
  <div id="Layer38"><a href="train.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image18','','images/train1.png',1)"><img src="images/train.png" name="Image18" width="107" height="60" border="0" id="Image18" /></a></div>
  <div id="Layer3"><a href="city.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image3','','images/back_banner20.png',1)"><img src="images/back_banner21.png" alt="开始找景点" name="Image3" width="506" height="68" border="0" id="Image3" /></a></div>
  <div id="Layer4"><a href="luntan.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image4','','images/back_banner31.png',1)"><img src="images/back_banner30.png" alt="论坛" name="Image4" width="278" height="51" border="0" id="Image4" /></a></div>
  <div id="Layer1"><a href="index.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image2','','images/back_banner11.png',1)"><img src="images/back_banner10.png" alt="首页" name="Image2" width="278" height="51" border="0" id="Image2" /></a></div>
  <img src="images/back2.png" width="1350" height="953" />
  <div id="Layer29">
  <div id="l-map"></div>
<div id="r-result"></div>
  </div>
  
</div>
</body>

</html>
 
<script type="text/javascript">
function SelectFunction(){
var fangfaSelect = document.getElementById("rfangfa");//获取体育馆值        
  //  var fangfaid = fangfaSelect.options[fangfaSelect.selectedIndex].value;
    var fangfaname = fangfaSelect.options[fangfaSelect.selectedIndex].text;
  //  alert(fangfaid); 
  document.getElementById("r-result").innerHTML = ""; 
    if(fangfaname == "驾车")
    DriveFunction();
    if(fangfaname == "公交换乘")
    BusFunction();
    if(fangfaname == "步行")
    BuxingFunction();
}
function BuxingFunction(){
 var rfrom = document.getElementById("r-from").value;
    var rto = document.getElementById("r-to").value; 
    var city = document.getElementById("arrcity").value; 
    var map = new BMap.Map("l-map");  
//map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);
map.centerAndZoom(city, 11);
var walking = new BMap.WalkingRoute(map, {renderOptions: {map: map, panel: "r-result", autoViewport: true}});
walking.search(rfrom, rto);
}
function DriveFunction(){ 
    var rfrom = document.getElementById("r-from").value;
    var rto = document.getElementById("r-to").value; 
    var city = document.getElementById("arrcity").value; 
    var map = new BMap.Map("l-map");            // 创建Map实例
//map.centerAndZoom(new BMap.Point(116.404, 39.915), 12);
map.centerAndZoom(city, 12);
//var transit = new BMap.TransitRoute("北京市");
//var transit = new BMap.TransitRoute(city);  

 var transit = new BMap.DrivingRoute(map, {
            renderOptions: {map: map,panel: "r-result"},            
            onMarkersSet: function(pois){
                var start = pois[0].marker, end = pois[1].marker;
                start.enableDragging();//开启起点拖拽功能
                end.enableDragging();//开启终点拖拽功能
                start.addEventListener("dragend",function(e){                   
                    map.clearOverlays();
                    transit.search(e.point,end.getPosition());                   
                });
                end.addEventListener("dragend",function(e){                    
                    map.clearOverlays();                      
                    transit.search(start.getPosition(),e.point);                  
                });
            }
    });
  //  transit.search("西单","魏公村"); 
transit.search(rfrom, rto);
}

function BusFunction(){ 
var rfrom = document.getElementById("r-from").value;
    var rto = document.getElementById("r-to").value; 
    var city = document.getElementById("arrcity").value; 
    var map = new BMap.Map("l-map");            // 创建Map实例
//map.centerAndZoom(new BMap.Point(116.404, 39.915), 12);
map.centerAndZoom(city, 12);
//var transit = new BMap.TransitRoute("北京市");
var transit = new BMap.TransitRoute(city);    
transit.setSearchCompleteCallback(function(results){
    if (transit.getStatus() == BMAP_STATUS_SUCCESS){
        for (var index = 0; index < results.getNumPlans(); index++){
            var showElement = document.createElement("div");
            var callDLFunc = drawLine(map,results,index,showElement);
            showElement.style.lineHeight = "20px";
            showElement.onclick=callDLFunc;
            showElement.innerHTML = (index + 1) + ". " + results.getPlan(index).getDescription();
            document.getElementById("r-result").appendChild(showElement);
            if(index == 0){showElement.onclick();}
        }
    }
})
//transit.search("魏公村", "百度大厦");
transit.search(rfrom, rto);
var lastSetBackObj = null;
function drawLine(aMap,results,index,obj){
    return function(){
        var opacity = 0.45;
        var planObj = results.getPlan(index);
        var bounds = new Array();
        var addMarkerFun = function(point,imgType,index,title){
            var url;
            var width;
            var height
            var myIcon;
            // imgType:1的场合，为起点和终点的图；2的场合为过程的图形
            if(imgType == 1){
                url = "http://map.baidu.com/image/dest_markers.png";
                width = 42;
                height = 34;
                myIcon = new BMap.Icon(url,new BMap.Size(width, height),{offset: new BMap.Size(14, 32),imageOffset: new BMap.Size(0, 0 - index * height)});
            }else{
                url = "http://map.baidu.com/image/trans_icons.png";
                width = 22;
                height = 25;
                var d = 25;
                var cha = 0;
                var jia = 0
                if(index == 2){
                    d = 21;
                    cha = 5;
                    jia = 1;
                }
                myIcon = new BMap.Icon(url,new BMap.Size(width, d),{offset: new BMap.Size(10, (11 + jia)),imageOffset: new BMap.Size(0, 0 - index * height - cha)});
            }

            var marker = new BMap.Marker(point, {icon: myIcon});
            if(title != null && title != ""){
                marker.setTitle(title);
            }
            // 起点和终点放在最上面
            if(imgType == 1){
                marker.setTop(true);
            }
            aMap.addOverlay(marker);
        }
        var addPoints = function(points){
            for(var i = 0; i < points.length; i++){
                bounds.push(points[i]);
            }
            
        }

        // 清空覆盖物
        aMap.clearOverlays();

        // 绘制驾车步行线路
        for (var i = 0; i < planObj.getNumRoutes(); i ++){
            var route = planObj.getRoute(i);
            if (route.getDistance(false) > 0){
                // 步行线路有可能为0
                aMap.addOverlay(new BMap.Polyline(route.getPath(), {strokeStyle:"dashed",strokeColor: "#30a208",strokeOpacity:0.75,strokeWeight:4,enableMassClear:true}));
            }
        }
        // 绘制公交线路
        for (i = 0; i < planObj.getNumLines(); i ++){
            var line = planObj.getLine(i);
            addPoints(line.getPath());
            // 公交
            if(line.type == BMAP_LINE_TYPE_BUS){
                // 上车
                addMarkerFun(line.getGetOnStop().point,2,2,line.getGetOnStop().title);
                // 下车
                addMarkerFun(line.getGetOffStop().point,2,2,line.getGetOffStop().title);
                
                // 地铁
            }else if(line.type == BMAP_LINE_TYPE_SUBWAY){
                // 上车
                addMarkerFun(line.getGetOnStop().point,2,3,line.getGetOnStop().title);
                // 下车
                addMarkerFun(line.getGetOffStop().point,2,3,line.getGetOffStop().title);
            }
            aMap.addOverlay(new BMap.Polyline(line.getPath(), {strokeColor: "#0030ff",strokeOpacity:opacity,strokeWeight:6,enableMassClear:true}));
        }

        aMap.setViewport(bounds);

        // 终点
        addMarkerFun(results.getEnd().point,1,1);
        // 开始点
        addMarkerFun(results.getStart().point,1,0);
        
        // 设置文字背景色
        if(lastSetBackObj != null){
            lastSetBackObj.style.backgroundColor = "#edfdfc";
        }
        obj.style.backgroundColor = "#92e9e2";
        lastSetBackObj = obj;
    };
}  
}


</script>



