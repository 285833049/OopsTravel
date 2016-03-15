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
<title>路线查询</title>

 <link rel="stylesheet" type="text/css" href="css/jquery.suggest.css" />
<link href="css/jquery-ui-1.8.21.custom.css" rel="stylesheet" />
 <script type="text/javascript" src="js1/jquery-1.7.2.min.js"></script>
 <script type="text/javascript" src="js/j.dimensions.js" ></script>
 <script type="text/javascript" src="js/aircity.js"></script>
 <script type="text/javascript" src="js/j.suggest.js"></script>
 <script type="text/javascript" src="http://api.map.baidu.com/api?v=1.4"></script>
 
 
<style>
.opMap{width:960px;margin:0 auto;position:relative;}.opTitle{color:#CC5522}.opResultPanel{width:20%;height:100%x;position:absolute;right:-204px;top:1px;}.opStart{background: url("http://map.baidu.com/img/sel_body_y_top.gif") repeat-x scroll 0 0 transparent;height: 31px;border:solid 1px #9CB6FF;}.sel_body_sign {background: url("http://map.baidu.com/img/bgs.gif") no-repeat scroll -167px -387px transparent;float: left;height: 31px;width: 40px;}.sel_body_title {height: 31px;border:solid 1px #FAD1A6;}.sel_n.sel_body_sign {background: url("http://map.baidu.com/img/bgs.gif") no-repeat scroll -79px -387px transparent;float: left;height: 31px;width: 40px;}.opEnd{border:solid 1px #FAD1A6;} .opStart h4, .opEnd h4{line-height:31px;font-size:14px;margin:0;}.opMap h4{width:200px;font-size:12px;margin:0;float:left;clear:right;}.opEndBody{height:337px;overflow-y:auto;}
</style>
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
	z-index:10003;
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
	z-index:16;
	left: 756px;
	top: 459px;
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
	z-index:16;
	left: 1102px;
	top: 445px;
}
#Layer29 {
	position:absolute;
	width:315px;
	height:115px;
	z-index:16;
	left: 354px;
	top: 345px;
}
#Layer30 {
	position:absolute;
	width:179px;
	height:73px;
	z-index:16;
	left: 195px;
	top: 364px;
}
#Layer32 {
	position:absolute;
	width:181px;
	height:81px;
	z-index:16;
	left: 920px;
	top: 364px;
}

.STYLEFONT{
color:#999999
}
#Layer33 {
	position:absolute;
	width:1000px;
	height:727px;
	z-index:11;
	left: 102px;
	top: 268px;
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
<form>
  <div id="box2">
    <input type="hidden" name="arrcity_3word" id="arrcity_3word" value="" />
    <label for="arrcity" class="STYLE27">选择城市：</label>
    <input type="text" name="arrcity" id="arrcity" />
    <div id="Layer30"><a href="map.jsp"><img src="images/mapk.png" width="177" height="80" border="0"></a></div>
    <div id='suggest' class="ac_results"> </div>   
    
    <div id="Layer32"><a href="life.jsp"><img src="images/life.png" width="177" height="80" border="0"></a></div>
  </div>
  <div id="Layer21">
    <label class="STYLE27">所在地点：
    <input  name= "r-from"  class="STYLEFONT" type="text"  onFocus="if(value=='请输入您现在所在地点'){value=''}" onBlur="if(value==''){value='请输入您现在所在地点'}" value="请输入您现在所在地点"/>
    </label>
  </div>
  <div id="Layer27">
  <label class="STYLE27">查找内容：</label>
  <select name="rfangfa"  id="life">
        <option  selected="selected">酒店</option>
		<option value="" >餐馆</option>
		<option value="" >浴室</option>
		<option value="" >小吃</option>
		<option value="">银行</option> 
  </select>
  </div>
  <div id="Layer28">
  <button type="button" onclick="SelectFunction()">查询</button> 
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
  <div id="Layer33">
  <div id="l-map" style="width:700px"></div>
<div id="r-result" style="width:250px"></div>
<div class="opResultPanel">
   <div id="start" class="opStart"><span class="sel_body_sign"></span><h4>起点： </h4></div><div id="endSelect" class="opEnd"><div class="sel_body_title"> <div id="opNSign" class="sel_n sel_body_sign"></div><div class="sel_body_name"><h4>终点：<b id="B_PointName1"> </b></h4></div></div> <div id="endingBody" class="opEndBody" ></div></div></div><div id="routePanel">
  </div></div>
   
  </div>
  
</div>
</body>

</html>

<script type="text/javascript">
function SelectFunction(){
   var fangfaSelect = document.getElementById("rfangfa");//获取体育馆值         
    var fangfaname = fangfaSelect.options[fangfaSelect.selectedIndex].text; 
  document.getElementById("r-result").innerHTML = ""; 
    if(fangfaname == "酒店" || fangfaname == "餐馆" || fangfaname == "浴室" || fangfaname == "小吃" || fangfaname == "银行")
    JiudianFunction(); 
  //  if(fangfaname == "步行")
  //  BuxingFunction();
}
 
(function JiudianFunction(){
    var fangfaSelect = document.getElementById("rfangfa");//获取体育馆值         
    var fangfaname = fangfaSelect.options[fangfaSelect.selectedIndex].text; 
    // Copyright (c) 2009, Baidu Inc. All rights reserved.
    // 
    // Licensed under the BSD License
    // you may not use this file except in compliance with the License.
    // You may obtain a copy of the License at
    // 
    //      http:// tangram.baidu.com/license.html
    // 
    // Unless required by applicable law or agreed to in writing, software
    // distributed under the License is distributed on an "AS-IS" BASIS,
    // WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    // See the License for the specific language governing permissions and
    // limitations under the License.

     /**
     * @namespace T Tangram七巧板
     * @name T
     * @version 1.3.9
    */

    /**
     * 声明baidu包
     * @author: allstar, erik, meizz, berg
     */
    var T,
        baidu = T = baidu || {version: "1.3.9"}; 

    //提出guid，防止在与老版本Tangram混用时
    //在下一行错误的修改window[undefined]
    baidu.guid = "$BAIDU$";

    //Tangram可能被放在闭包中
    //一些页面级别唯一的属性，需要挂载在window[baidu.guid]上
    window[baidu.guid] = window[baidu.guid] || {};


    /**
     * @namespace baidu.array 操作数组的方法。
     */

    baidu.array = baidu.array || {};


    /**
     * 遍历数组中所有元素
     * @name baidu.array.each
     * @function
     * @grammar baidu.array.each(source, iterator[, thisObject])
     * @param {Array} source 需要遍历的数组
     * @param {Function} iterator 对每个数组元素进行调用的函数，该函数有两个参数，第一个为数组元素，第二个为数组索引值，function (item, index)。
     * @param {Object} [thisObject] 函数调用时的this指针，如果没有此参数，默认是当前遍历的数组
     * @remark
     * each方法不支持对Object的遍历,对Object的遍历使用baidu.object.each 。
     * @shortcut each
     * @meta standard
     *             
     * @returns {Array} 遍历的数组
     */
     
    baidu.each = baidu.array.forEach = baidu.array.each = function (source, iterator, thisObject) {
        var returnValue, item, i, len = source.length;
        
        if ('function' == typeof iterator) {
            for (i = 0; i < len; i++) {
                item = source[i];
                //TODO
                //此处实现和标准不符合，标准中是这样说的：
                //If a thisObject parameter is provided to forEach, it will be used as the this for each invocation of the callback. If it is not provided, or is null, the global object associated with callback is used instead.
                returnValue = iterator.call(thisObject || source, item, i);
        
                if (returnValue === false) {
                    break;
                }
            }
        }
        return source;
    };

    /**
     * @namespace baidu.dom 操作dom的方法。
     */
    baidu.dom = baidu.dom || {};

    /**
     * 从文档中获取指定的DOM元素
     * @name baidu.dom.g
     * @function
     * @grammar baidu.dom.g(id)
     * @param {string|HTMLElement} id 元素的id或DOM元素
     * @shortcut g,T.G
     * @meta standard
     * @see baidu.dom.q
     *             
     * @returns {HTMLElement|null} 获取的元素，查找不到时返回null,如果参数不合法，直接返回参数
     */
    baidu.dom.g = function (id) {
        if ('string' == typeof id || id instanceof String) {
            return document.getElementById(id);
        } else if (id && id.nodeName && (id.nodeType == 1 || id.nodeType == 9)) {
            return id;
        }
        return null;
    };

    // 声明快捷方法
    baidu.g = baidu.G = baidu.dom.g;


    /**
     * 获取目标元素的直接子元素列表
     * @name baidu.dom.children
     * @function
     * @grammar baidu.dom.children(element)
     * @param {HTMLElement|String} element 目标元素或目标元素的id
     * @meta standard
     *             
     * @returns {Array} 目标元素的子元素列表，没有子元素时返回空数组
     */
    baidu.dom.children = function (element) {
        element = baidu.dom.g(element);

        for (var children = [], tmpEl = element.firstChild; tmpEl; tmpEl = tmpEl.nextSibling) {
            if (tmpEl.nodeType == 1) {
                children.push(tmpEl);
            }
        }
        
        return children;    
    };


    /**
     * 移除目标元素的className
     * @name baidu.dom.removeClass
     * @function
     * @grammar baidu.dom.removeClass(element, className)
     * @param {HTMLElement|string} element 目标元素或目标元素的id
     * @param {string} className 要移除的className，允许同时移除多个class，中间使用空白符分隔
     * @remark
     * 使用者应保证提供的className合法性，不应包含不合法字符，className合法字符参考：http://www.w3.org/TR/CSS2/syndata.html。
     * @shortcut removeClass
     * @meta standard
     * @see baidu.dom.addClass
     *             
     * @returns {HTMLElement} 目标元素
     */
    baidu.dom.removeClass = function (element, className) {
        element = baidu.dom.g(element);

        var oldClasses = element.className.split(/\s+/),
            newClasses = className.split(/\s+/),
            lenOld,
            lenDel = newClasses.length,
            j,
            i = 0;
        //考虑到同时删除多个className的应用场景概率较低,故放弃进一步性能优化 
        // by rocy @1.3.4
        for (; i < lenDel; ++i){
            for(j = 0, lenOld = oldClasses.length; j < lenOld; ++j){
                if(oldClasses[j] == newClasses[i]){
                    oldClasses.splice(j, 1);
                    break;
                }
            }
        }
        element.className = oldClasses.join(' ');
        return element;
    };

    // 声明快捷方法
    baidu.removeClass = baidu.dom.removeClass;

    /**
     * @namespace baidu.event 屏蔽浏览器差异性的事件封装。
     * @property target  事件的触发元素
     * @property pageX   鼠标事件的鼠标x坐标
     * @property pageY   鼠标事件的鼠标y坐标
     * @property keyCode  键盘事件的键值
     */
    baidu.event = baidu.event || {};


    /**
     * 事件监听器的存储表
     * @private
     * @meta standard
     */
    baidu.event._listeners = baidu.event._listeners || [];


    /**
     * 为目标元素添加事件监听器
     * @name baidu.event.on
     * @function
     * @grammar baidu.event.on(element, type, listener)
     * @param {HTMLElement|string|window} element 目标元素或目标元素id
     * @param {string} type 事件类型
     * @param {Function} listener 需要添加的监听器
     * @remark
     * 
    1. 不支持跨浏览器的鼠标滚轮事件监听器添加<br>
    2. 改方法不为监听器灌入事件对象，以防止跨iframe事件挂载的事件对象获取失败
        
     * @shortcut on
     * @meta standard
     * @see baidu.event.un
     *             
     * @returns {HTMLElement|window} 目标元素
     */
    baidu.event.on = function (element, type, listener) {
        type = type.replace(/^on/i, '');
        element = baidu.dom.g(element);

        var realListener = function (ev) {
                // 1. 这里不支持EventArgument,  原因是跨frame的事件挂载
                // 2. element是为了修正this
                listener.call(element, ev);
            },
            lis = baidu.event._listeners,
            filter = baidu.event._eventFilter,
            afterFilter,
            realType = type;
        type = type.toLowerCase();
        // filter过滤
        if(filter && filter[type]){
            afterFilter = filter[type](element, type, realListener);
            realType = afterFilter.type;
            realListener = afterFilter.listener;
        }
        
        // 事件监听器挂载
        if (element.addEventListener) {
            element.addEventListener(realType, realListener, false);
        } else if (element.attachEvent) {
            element.attachEvent('on' + realType, realListener);
        }
      
        // 将监听器存储到数组中
        lis[lis.length] = [element, type, listener, realListener, realType];
        return element;
    };

    // 声明快捷方法
    baidu.on = baidu.event.on;

    var rfrom = document.getElementById("r-from").value; 
    var city = document.getElementById("arrcity").value; 
    var map = new BMap.Map("l-map");   
    map.centerAndZoom(city, 12);
   // map.centerAndZoom(new BMap.Point(116.404, 39.915), 12);
    map.enableScrollWheelZoom();
    var start = rfrom ,end = fangfaname;
    var transit = new BMap.TransitRoute(map, {
      renderOptions: {map: map},     
      onSearchComplete: function(result){       
        if(!result.getPlan()){//没有结果，用localsearch检索终点
            var result;
            var local = new BMap.LocalSearch(map,
                {renderOptions:{map:null,panel:"r-result"},
                onSearchComplete: function(r){ 
                    result = r;
                },
                onResultsHtmlSet: function(){
                    getNthPage(result);
                }
            });
            local.search(end);
        }
      }
    });
    transit.search(start,end);
    function searchAgain(start,end){
        var newTransit = new BMap.TransitRoute(map,{renderOptions:{map:map,panel:"endingBody"},
            onSearchComplete: function(rslt){  
                if(!rslt || rslt.getNumPlans() < 1){
                    T.G("endingBody").innerHTML = "未发现公交路线";//相当于jquery的$("#endingBody")
                }
            }
        });
        map.clearOverlays();                                   
        newTransit.search(start,end); //search bus route according to user's select
    }
    
    function getNthPage(result){   
        var len = result.getCurrentNumPois();  
        map.clearOverlays();
        for(var i = 0 ; i < len ; i ++){                      
            var tLocalPoi = result.getPoi(i);  
            //自定义icon
            var customIcon =new BMap.Icon("http://app.baidu.com/map/images/custom_a_j.png",new BMap.Size(28,37),
                {  
                    offset: new BMap.Size(10, 25),
                    imageOffset: new BMap.Size(0 - i * 28, 0)
                }
            );           
            var marker = new BMap.Marker(tLocalPoi.point,{icon:customIcon});
            //var marker = new BMap.Marker(tLocalPoi.point);
            map.addOverlay(marker); 
            openInfoWin(tLocalPoi,i,marker);
         }
         T.each(T.G("endingBody").getElementsByTagName("li"),function(item,i){//遍历li绑定事件，相当于jquery的$(#endingBody li).each()
             T.event.on(item,"click",function(e){
                end =  result.getPoi(i) ; //被click的 localResultPoi
                setEndPoiName(T.dom.children(this)[1].innerHTML);
                T.removeClass("opNSign","sel_n");
                searchAgain(start,end);//重新发起检索 //loopingtest
             });
         });
         
       
         function openInfoWin(tLocalPoi,i,marker){//closure 绑定infowindow
            (function(i){ 
                var infoWindow = new BMap.InfoWindow('<input id="busEnd"  type="button"  value="设为终点" />');
                infoWindow.setTitle("<span class='opTitle'>"+ tLocalPoi.title +"</span>");
                marker.addEventListener("click",function(evt){  
                    end = result.getPoi(i); //被click的 localResultPoi    
                    map.openInfoWindow(infoWindow,end.point); 
                    document.getElementById("busEnd").onclick = function(){
                        setEndPoiName(end.title);
                        searchAgain(start,end);////loopingtest
                    }
                });
            })(i);
        }
    }
    function setEndPoiName(name){
        T.G("B_PointName1").innerHTML = name;
    }
})();
</script>
