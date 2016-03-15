<%-- 
    Document   : check_tiezi
    Created on : 2013-2-21, 12:28:24
    Author     : Elizabeth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>论坛</title>
<link id="bs-css" href="css/bootstrap-cerulean.css" rel="stylesheet">
	<style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	</style>
	
	<link href="css/charisma-app.css" rel="stylesheet">
	<link href="css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
	<link href='css/uniform.default.css' rel='stylesheet'>
	<link href='css/jquery.cleditor.css' rel='stylesheet'>
<style type="text/css">
.STYLE1 {font-family: "华康俪金黑W8(P)";
	font-size: 36px;
	color: #CCCCCC;
}
#Layer2 {
	position: absolute;
	width: 1175;
	height: 41px;
	z-index: 2;
	left: 100;
	top: 14px;
}
#Layer3 {
	position: absolute;
	width: 432px;
	height: 54px;
	z-index: 6;
	left: 227px;
	top: 96px;
}
#Layer4 {
	position: absolute;
	width: 772px;
	height: 68px;
	z-index: 7;
	left: 440px;
	top: 75px;
}
#Layer5 {
	position: absolute;
	width: 433px;
	height: 53px;
	z-index: 8;
	left: 888px;
	top: 94px;
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
#apDiv1 {
	position: absolute;
	width: 200px;
	height: 41px;
	z-index: 9;
	left: 28px;
	top: 177px;
	font-family: "华康俪金黑W8(P)";
	font-size: 36px;
	color: #999;
}
</style>
<script type="text/javascript">
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
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
</script>
</head>

<body onLoad="MM_preloadImages('images/back_banner11.png','images/back_banner21.png','images/back_banner30.png')">
<img src="images/back1.jpg" alt="" width="1400" height="150" />
<div id="Layer2">
  <p><strong><span class="STYLE1">这里是标题</span></strong></p>
</div>
<div id="Layer3"><a href="index.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image3','','images/back_banner11.png',1)"><img src="images/back_banner10.png" alt="首页" name="Image3" width="278" height="51" border="0" id="Image3" /></a></div>
<div id="Layer4"><a href="city.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image4','','images/back_banner21.png',1)"><img src="images/back_banner20.png" alt="开始找景点" name="Image4" width="505" height="65" border="0" id="Image4" /></a></div>
<div id="Layer5"><a href="luntan.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image5','','images/back_banner30.png',1)"><img src="images/back_banner31.png" alt="论坛" name="Image5" width="278" height="51" border="0" id="Image5" /></a></div>
<div class="navbar">
  <div class="navbar-inner"></div>
		<div id="apDiv1">
          <p>论坛</p>
		</div>
</div>
		<div class="container-fluid">
		<div class="row-fluid">
				
			<!-- left menu starts -->
			<div class="span2 main-menu-span">
				<div class="well nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li class="nav-header hidden-tablet">Main</li>
						<li><a class="ajax-link" href="luntan.jsp"><i class="icon-home"></i>论坛首页</a></li>
                        <li><a class="ajax-link" href="check_zhuti.jsp"><i class="icon-eye-open"></i>查看主题</a></li>
                        <li><a class="ajax-link" href="check_tiezi.jsp"><i class="icon-eye-open"></i>查看帖子</a></li>
                        <li><a class="ajax-link" href="tiezi.jsp"><i class="icon-th"></i>回复帖子</span></a></li>
						
						<li class="nav-header hidden-tablet">BBS Section</li>
						<li><a class="ajax-link" href="new_zhuti.jsp"><i class="icon-align-justify"></i><span class="hidden-tablet"> 发表新主题</span></a></li>
						<li><a class="ajax-link" href="new_tiezi.jsp"><i class="icon-calendar"></i>发表新帖子</a></li>
                        <li class="nav-header hidden-tablet">System Section</li>
                        <li><a class="ajax-link" href="index.jsp"><i class="icon-home"></i>囧途首页</a></li>
						<li><a class="ajax-link" href="city.jsp"><i class="icon-lock"></i>开始找景点</a></li>
						<li><a class="ajax-link" href="index.jsp"><i class="icon-star"></i>登出</a></li>
					</ul>
				</div><!--/.well -->
			</div><!--/span-->
			<!-- left menu ends -->
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<div id="content" class="span10">
			<!-- content starts -->
			<div class="sortable row-fluid">
		<a data-rel="tooltip" class="well span3 top-block" href="check_zhuti.jsp">
					<span class="icon32 icon-red icon-user"></span>
					<div>论坛主题</div>
		<div>查看</div>
				</a>

				<a data-rel="tooltip" class="well span3 top-block" href="check_tiezi.jsp">
					<span class="icon32 icon-color icon-star-on"></span>
				<div>主题帖子</div>
				<div>查看</div>
				</a>

				<a data-rel="tooltip" class="well span3 top-block" href="new_tiezi.jsp">
					<span class="icon32 icon-color icon-cart"></span>
					<div>论坛新帖</div>
				<div>发表</div>
				</a>
				
				<a data-rel="tooltip" class="well span3 top-block" href="index.jsp">
					<span class="icon32 icon-color icon-envelope-closed"></span>
					<div>退出</div>
				<div>登陆</div>
				</a>
			</div>

			<div>
				<ul class="breadcrumb">
					<li>
						<a href="index.jsp">首页</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="luntan.jsp">论坛</a><span class="divider">/</span>
					</li>
                    <li>
						<a href="new_tiezi.jsp">查看帖子</a>
					</li>
				</ul>
			</div>
			
			<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-user"></i>查看帖子</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>帖子的主题</th>
								  <th>发布日期</th>
								  <th>发布用户</th>
								  <th>查看帖子</th>
							  </tr>
						  </thead>   
						  <tbody>
							<tr>
								<td>David R</td>
								<td class="center">2012/01/01</td>
								<td class="center">Member</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Chris Jack</td>
								<td class="center">2012/01/01</td>
								<td class="center">Member</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Jack Chris</td>
								<td class="center">2012/01/01</td>
								<td class="center">Member</td>
								
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Muhammad Usman</td>
								<td class="center">2012/01/01</td>
								<td class="center">Member</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Sheikh Heera</td>
								<td class="center">2012/02/01</td>
								<td class="center">Staff</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Helen Garner</td>
								<td class="center">2012/02/01</td>
								<td class="center">Staff</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
								查看</a></td>
							</tr>
							<tr>
								<td>Saruar Ahmed</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
								查看</a></td>
							</tr>
							<tr>
								<td>Ahemd Saruar</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
								查看</a></td>
							</tr>
							<tr>
								<td>Habib Rizwan</td>
								<td class="center">2012/01/21</td>
								<td class="center">Staff</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Rizwan Habib</td>
								<td class="center">2012/01/21</td>
								<td class="center">Staff</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Amrin Sana</td>
								<td class="center">2012/08/23</td>
								<td class="center">Staff</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Sana Amrin</td>
								<td class="center">2012/08/23</td>
								<td class="center">Staff</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Ifrah Jannat</td>
								<td class="center">2012/06/01</td>
								<td class="center">Admin</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Jannat Ifrah</td>
								<td class="center">2012/06/01</td>
								<td class="center">Admin</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Robert</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Dave Robert</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Brown Robert</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Usman Muhammad</td>
								<td class="center">2012/01/01</td>
								<td class="center">Member</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
							</tr>
							<tr>
								<td>Abdullah</td>
								<td class="center">2012/02/01</td>
								<td class="center">Staff</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Dow John</td>
								<td class="center">2012/02/01</td>
								<td class="center">Admin</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>John R</td>
								<td class="center">2012/02/01</td>
								<td class="center">Admin</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Paul Wilson</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Wilson Paul</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Heera Sheikh</td>
								<td class="center">2012/01/21</td>
								<td class="center">Staff</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Sheikh Heera</td>
								<td class="center">2012/01/21</td>
								<td class="center">Staff</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Christopher</td>
								<td class="center">2012/08/23</td>
								<td class="center">Staff</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Andro Christopher</td>
								<td class="center">2012/08/23</td>
								<td class="center">Staff</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Jhon Doe</td>
								<td class="center">2012/06/01</td>
								<td class="center">Admin</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Lorem Ipsum</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Abraham</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Brown Blue</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
							<tr>
								<td>Worth Name</td>
								<td class="center">2012/03/01</td>
								<td class="center">Member</td>
								<td class="center">
									<a class="btn btn-success" href="tiezi.jsp">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                            
									</a>
								</td>
							</tr>
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->

			
				
		<hr>

		

		<footer>
			<p class="pull-left">&copy; <a href="index.jsp" target="_blank">囧途</a> 2013</p>
			<p class="pull-right">Powered by: <a href="index.jsp">囧途</a></p>
		</footer>
		
	</div><!--/.fluid-container-->

	<!-- external javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<!-- jQuery -->
	<script src="js1/jquery-1.7.2.min.js"></script>
	<!-- jQuery UI -->
	<script src="js1/jquery-ui-1.8.21.custom.min.js"></script>
	<!-- transition / effect library -->
	<script src="js1/bootstrap-transition.js"></script>
	<!-- alert enhancer library -->
	<script src="js1/bootstrap-alert.js"></script>
	<!-- modal / dialog library -->
	<script src="js1/bootstrap-modal.js"></script>
	<!-- custom dropdown library -->
	<script src="js1/bootstrap-dropdown.js"></script>
	<!-- scrolspy library -->
	<script src="js1/bootstrap-scrollspy.js"></script>
	<!-- library for creating tabs -->
	<script src="js1/bootstrap-tab.js"></script>
	<!-- library for advanced tooltip -->
	<script src="js1/bootstrap-tooltip.js"></script>
	<!-- popover effect library -->
	<script src="js1/bootstrap-popover.js"></script>
	<!-- button enhancer library -->
	<script src="js1/bootstrap-button.js"></script>
	<!-- accordion library (optional, not used in demo) -->
	<script src="js1/bootstrap-collapse.js"></script>
	<!-- carousel slideshow library (optional, not used in demo) -->
	<script src="js1/bootstrap-carousel.js"></script>
	<!-- autocomplete library -->
	<script src="js1/bootstrap-typeahead.js"></script>
	<!-- tour library -->
	<script src="js1/bootstrap-tour.js"></script>
	<!-- library for cookie management -->
	<script src="js1/jquery.cookie.js"></script>
	<!-- calander plugin -->
	<script src='js1/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='js1/jquery.dataTables.min.js'></script>

	<!-- chart libraries start -->
	<script src="js1/excanvas.js"></script>
	<script src="js1/jquery.flot.min.js"></script>
	<script src="js1/jquery.flot.pie.min.js"></script>
	<script src="js1/jquery.flot.stack.js"></script>
	<script src="js1/jquery.flot.resize.min.js"></script>
	<!-- chart libraries end -->

	<!-- select or dropdown enhancer -->
	<script src="js1/jquery.chosen.min.js"></script>
	<!-- checkbox, radio, and file input styler -->
	<script src="js1/jquery.uniform.min.js"></script>
	<!-- plugin for gallery image 查看 -->
	<script src="js1/jquery.colorbox.min.js"></script>
	<!-- rich text editor library -->
	<script src="js1/jquery.cleditor.min.js"></script>
	<!-- notification plugin -->
	<script src="js1/jquery.noty.js"></script>
	<!-- file manager library -->
	<script src="js1/jquery.elfinder.min.js"></script>
	<!-- star rating plugin -->
	<script src="js1/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="js1/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="js1/jquery.autogrow-textarea.js"></script>
	<!-- multiple file upload plugin -->
	<script src="js1/jquery.uploadify-3.1.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="js1/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="js1/charisma.js"></script>
	
		
</body>
</html>
