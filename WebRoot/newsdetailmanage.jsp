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
	 <link rel="stylesheet" type="text/css" href="css/jquery.suggest.css" />
<link href="css/jquery-ui-1.8.21.custom.css" rel="stylesheet" />
 <script type="text/javascript" src="js1/jquery-1.7.2.min.js"></script>
 <script type="text/javascript" src="js/j.dimensions.js"></script>
 <script type="text/javascript" src="js/aircity.js"></script>
 <script type="text/javascript" src="js/j.suggest.js"></script>
<title>新闻修改</title>



<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #edfdfc;
}
#Layer1 {
	position:absolute;
	width:928px;
	height:371px;
	z-index:2;
	left: 103px;
	top: 44px;
}
.STYLE2 {
	font-family: "华康俪金黑W8(P)";
	font-size: 28px;
	color: #0C41A5;
}
#Layer2 {
	position:absolute;
	width:321px;
	height:61px;
	z-index:2;
	left: 1px;
	top: 1px;
}
#Layer10 {	position:absolute;
	width:1355px;
	height:115px;
	z-index:7;
	left: 0px;
	top: 750px;
	background-image: url(images/footer.jpg);
}
#Layer7 {	position:absolute;
	width:200px;
	height:51px;
	z-index:3;
	left: 773px;
	top: 349px;
}
#Layer3 {
	position:absolute;
	width:200px;
	height:54px;
	z-index:7;
	left: 199px;
	top: 29px;
}
#Layer4 {
	position:absolute;
	width:200px;
	height:68px;
	z-index:8;
	left: 420px;
	top: 6px;
}
#Layer5 {
	position:absolute;
	width:200px;
	height:53px;
	z-index:6;
	left: 860px;
	top: 27px;
}
#Layer6 {
	position:absolute;
	width:929px;
	height:115px;
	z-index:2;
	left: 167px;
	top: 2px;
}
#Layer8 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:12;
	left: -2px;
	top: 315px;
}
#Layer9 {
	position:absolute;
	width:290px;
	height:157px;
	z-index:4;
	left: 935px;
	top: 0px;
}
#Layer11 {
	position:absolute;
	width:1352px;
	height:252px;
	z-index:2;
	left: 0;
	top: 0;
}
#Layer12 {
	position:absolute;
	width:1354px;
	height:807px;
	z-index:10;
	left: 0px;
	top: 243px;
}
#Layer13 {
	position:absolute;
	width:666px;
	height:284px;
	z-index:5;
	left: 137px;
	top: 138px;
}
#Layer14 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:1;
}
#Layer15 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:9;
	left: 0px;
	top: 646px;
}
#Layer16 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:12;
}
#Layer17 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:1;
}
#Layer18 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:3;
	left: 3px;
	top: 6px;
}
#Layer19 {
	position:absolute;
	width:157px;
	height:68px;
	z-index:11;
	left: 600px;
	top: 272px;
}
#Layer31 {	position:absolute;
	width:62px;
	height:92px;
	z-index:5;
	left: 1231px;
	top: 10px;
}
#Layer27 {	position:absolute;
	width:156px;
	height:115px;
	z-index:11;
	left: 16px;
	top: 234px;
}
#Layer20 {
	position:absolute;
	width:936px;
	height:437px;
	z-index:9;
	left: 277px;
	top: 153px;
}
-->
</style>
<title>注册</title>
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
<!-- 
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
-->
</script>
</head>
<body onLoad="MM_preloadImages('images/back_banner31manage.png','images/back_banner11manage.png','images/back_banner21manage.png');start()">
<div id="Layer8"><img src="images/newsmanager.png" width="315" height="140"></div>
<div id="Layer27"><img src="images/ballen.png" width="150" height="190" /></div>
<div id="Layer11">

  <div id="Layer6"> <img id="img1" src="images/top1.PNG" width="1172" height="245" style="filter:revealTrans(Transition=1,Duration=1.5)" ></div>
<img src="images/back1.png" width="1351" height="247">
<div id="Layer18"><img src="images/jiongtu.png" width="190" height="225"></div>
</div>
<div id="Layer12">
  <div id="Layer4"><a href="managerindex.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image4','','images/back_banner21manage.png',1)"><img src="images/back_banner20manage.png" alt="开始找景点" name="Image4" width="505" height="65" border="0" id="Image4" /></a></div>
  <div id="Layer3"><a href="managerindex.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image3','','images/back_banner11manage.png',1)"><img src="images/back_banner10manage.png" alt="首页" name="Image3" width="278" height="51" border="0" id="Image3" /></a></div>
  <div id="Layer5"><a href="guanli_zhuti.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image5','','images/back_banner31manage.png',1)"><img src="images/back_banner30manage.png" alt="论坛" name="Image5" width="278" height="51" border="0" id="Image5" /></a></div>
  <img src="images/back2.png" width="1351" height="731">
  <div id="Layer20">
  <form name="form1" method="post" action="">
    <table width="937" height="646" border="0">
      <tr>
        <td width="167" height="63" align="center" valign="top" class="STYLE2">标题</td>
        <td width="760" align="left" valign="top">
          <label>
            <input name="textfield" type="text" size="50" height="30" value="原标题">
            </label>        </td>
      </tr>
      <tr>
        <td height="46" align="center" valign="top" class="STYLE2">时间</td>
        <td align="left" valign="top">
		 <input name="date" type="text" class="input-xlarge datepicker" id="date01" value="" />		</td>
      </tr>
      <tr>
        <td height="129" align="center" valign="top" class="STYLE2">导读</td>
        <td align="left" valign="top">
          <label>
            <textarea name="textfield2" cols="69" rows="5">初始值初始值初始值</textarea>
            </label>        </td>
      </tr>
      <tr>
        <td height="309" align="center" valign="top" class="STYLE2">内容</td>
        <td align="left" valign="top"><label>
          <textarea name="textarea" cols="100" rows="20">初始值初始值初始值</textarea>
        </label></td>
      </tr>
      <tr>
        <td align="center" valign="top" class="STYLE2">原图片</td>
        <td><img src="images/4439049486_ec397f1d76_o.jpg" width="500" height="250"></td>
      </tr>
      <tr>
        <td align="center" valign="top" class="STYLE2">新图片</td>
        <td><input type="file" name="newsimg" id="newsimg" size="50" /></td>
      </tr>
      <tr>
        <td align="center" valign="top" class="STYLE2">=</td>
        <td align="center">
		<input name="提交" type="submit" value="修改完成" />	</td>
      </tr>
    </table>        
  </form>
  </div>
<div id="Layer31"><img src="images/ballensmall.png" width="80" height="102" /></div>
</div>
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



