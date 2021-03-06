<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="sspai">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="generator" content="Codeply">
	<title>少数派</title>
	
	<link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/comment.css">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<link rel="stylesheet" type="text/css" href="css/door.css">
	<script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.min.js"></script>
	<script src="http://cdn.bootcss.com/respond.js/1.3.0/respond.min.js"></script>
</head>
<body style="background-color:#FAFBFC">
	<!-- 登录 -->
	<div id="myModal" class="modal fade">
    	<div class="modal-dialog">  	
            <form method="post" action="login.userAction">
	            <div class="modal-body">
		            <button id="cha" type="button" class="close" data-dismiss="modal">×</button>
		            <h2 style="text-align: center;">
					<img src="images/3.jpg"/>
		            <strong>少数派</strong></h2>
		            <div class="text-right"><a style="text-decoration: none;" href="register.html">+注册</a></div>
		            <br>
		           <div class="form-group">
						<input class="form-control" type="email" placeholder="邮箱"
							name="user_email" />
					</div>
					<div class="form-group">
						<input class="form-control" type="password" placeholder="密码"
							name="user_password" />
					</div>
		            <div class="form-group text-left">
		            	<label id="klogin" for="keepLogin">
		            		<input style="height: auto;" type="checkbox" id="keepLogin"/>&nbsp;记住密码
		            	</label>
		            	<a class="pull-right" href="#">
		            	忘记密码</a>
		            </div>
		            <div class="form-group">
		            	<button style="outline: none;" id="login_btn" class="btn" type="submit">登录</button>
		            </div>
	            </div>
            </form>
            <div class="modal-footer">
				<div class="text-center">
					<div class="xinlang">
						<img class="xinlang img-circle img-responsive" src="images/5.jpg">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<img class="weixin img-circle img-responsive" src="images/4.jpg">
					</div>
					<p></p>
					<span>用社交帐号快捷登录</span>
				</div>
            </div>
        </div>
    </div>
    <!-- 登录 -->
	
	<!--导航条开始  -->
	<header>
		<nav class="navbar navbar-fixed-top one" id="nav">
			<div class="container">	
				<div style="margin-top: 2px;" class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
						<span class="sr-only">切换导航</span>  
	                    <span class="icon-bar"></span>  
	                    <span class="icon-bar"></span>  
	                    <span class="icon-bar"></span>  
					</button>
					<a href="queryAll.articleAction" class="navbar-brand"><img src="images/2.png" class="img-circle img-responsive "></a>
					<a style="padding-left:4px;" class="navbar-brand navbar_barand2" href="queryAll.articleAction">少数派</a>
				</div>
				
				<c:choose>
					<c:when test="${loginUser!=null}">
							<!-- 登录后的菜单 -->
						<div id="login_after">
						<div class="collapse navbar-collapse" id="example-navbar-collapse navbar-toggleable-xs">
							<ul style="margin-top: 4px;" class="nav navbar-nav pull-right">
			    				<li class="nav-item active"><a class="nav-link" href="gowrite.articleAction"><span class="icon icon-pencil"></span></a></li>
			    				<li class="nav-item">
			    				<a class="nav-link search" href="#">
			    					<span><i class="icon icon-search"></i></span>
			    				</a></li>	
								<li class="search_inp">
									<form id="s" action="queryArticle.articleAction" method="post">
										<input  class="form-group search_input" type="text" placeholder="搜索"  name="search"/>
									</form>
								</li>
								<li class="nav-item">
			    				<a class="nav-link" href="#">
			    					<span><i class="glyphicon glyphicon-bell"></i></span>
			    				</a></li>
								<li id="btn_login" class="nav-item"><a class="nav-link" href="#" data-toggle="popover"><img src="${pageContext.request.contextPath}${loginUser.head_path}" class="img-circle img-responsive" style="width: 30px;height: 30px"></a></li>
			    			</ul>
						</div> 
						</div>
						<!-- 登录后的菜单 -->		
					</c:when>
					<c:otherwise>
						<!-- 登录前的菜单 -->
						<div id="login_before">
						<div class="collapse navbar-collapse" id="example-navbar-collapse navbar-toggleable-xs">
							<ul style="margin-top: 4px;" class="nav navbar-nav pull-right">
			    				<li class="nav-item active"><a class="nav-link" href="gowrite.articleAction"><span class="icon icon-pencil"></span></a></li>
			
			    				<li class="nav-item">
			    				<a class="nav-link search" href="#">
			    					<span><i class="icon icon-search"></i></span>
			    				</a></li>
								
								<li class="search_inp">
									<form id="s" action="queryArticle.articleAction" method="post">
										<input  class="form-group search_input" type="text" placeholder="搜索" name="search"/>
									</form>
								</li>
			
								<li class="nav-item"><a class="nav-link" href="#myModal" data-toggle="modal">登录</a></li>
			    			</ul>
						</div>
						</div>
						<!-- 登录前的菜单 -->
					</c:otherwise>
				</c:choose>
			</div>
		</nav>
		<div style="height: 64px;"></div>
		<!-- 副导航 -->
		<nav class="navbar" id="nav2">
			<div class="container">
				<table class="table table-bordered">
					<thead >
						<th class="text-center"><a href="topicList.topicAction"><i class="icon icon-road"></i>&nbsp;专题广场</a></th>
						<th class="text-center"><a href="#"><i class="icon icon-th"></i>&nbsp;Matrix</a></th>
						<th class="text-center"><a href="#"><i class="icon icon-calendar">&nbsp;</i>付费栏目</a></th>
						<th class="text-center"><a href="#">效率工具</a></th>
						<th class="text-center"><a href="#">手机摄影</a></th>
						<th class="text-center"><a href="#">生活方式</a></th>
						<th class="text-center"><a href="#">游戏</a></th>
						<th class="text-center"><a href="#">硬件</a></th>
					</thead>
				</table>
			</div>
		</nav>
		<!-- 副导航 -->
	</header>
	<!-- 导航条结束 -->
	
	<!-- 主体 -->
	<div class="container essay">
		<div class="row">
			<div class="col-md-9">
				<c:forEach items="${topicArticles}" var="tArt" >
						<div class="article-card">
							<dt>
								<div class="user-card block">
									<a href="findUser.userAction?userid=${tArt.user.id}" class="avatar">
										<img class="img-responsive img-circle" style="width: 40px;height: 40px;" src="${pageContext.request.contextPath}${tArt.user.head_path}">
									</a>
									<h4>
										<a href="findUser.userAction?userid=${tArt.user.id}" class="">${tArt.user.nickname}</a>
									</h4>
									<div class="time">
										<fmt:formatDate value="${tArt.create_time}" pattern="yyyy年MM月dd日  HH:mm:ss" />
									</div>
								</div>
								<div class="more">
									<span>
										<a href="javascript:;">
										<i class="glyphicon glyphicon-link"></i>
										</a>
									</span>
								</div>
							</dt>
							<dd class="media">
								<a href="javascript:;" class="pull-right thumb">
									<img src="${pageContext.request.contextPath}${tArt.pic_path}" class="media-object door_banner">
								</a>
								<section class="media-body">
									<h3 class="title media-heading">
										<a href="articleId.articleAction?opr=${tArt.id }" class="">${tArt.article_name}</a>
									</h3>
									<summary class="desc">
										${fn:substring(tArt.content,0, 200)}
									</summary>
								</section>
								<footer class="meta">
									<div class="actions">
										<span class="like-view">
											<i class="glyphicon glyphicon-heart-empty"></i>
											<sup>4</sup>
										</span>
										<a href="javascript:;" class="btn-comment">
											<i class="glyphicon glyphicon-comment"></i>
											<sup>6</sup>
										</a>
									</div>
								</footer>
							</dd>
						</div>
					</c:forEach>
				<div class="side">
					<a href="javascript:;" class="contact">加载更多</a>
				</div>
			</div>
			<!-- 右侧栏 -->
			<div class="col-md-3">
				<dl class="side-section side">
					<dt>
						<h3>推荐专题</h3> 
						<a href="#" class="more">查看全部</a>
					</dt>
					<dd>
						<c:forEach items="${suggestTopics}" var="topic" >
							<a href="findByTopic.articleAction?topicId=${topic.id}" class="topic-card" data-v-4948e0bc> <img
								data-v-4948e0bc class="banner" src="${pageContext.request.contextPath}${topic.pic_path }"
								lazy="loaded">
								<div data-v-4948e0bc class="mask">
									<h4 data-v-4948e0bc>${topic.name}</h4>
									<span data-v-4948e0bc="" class="btn">查看专题</span>
								</div>
						</c:forEach>	
					</dd>
				</dl>
				
			</div>
			<!-- 右侧栏 -->
		</div>
	</div>
	<!-- 主体 -->
	
	
	<!-- 底部 -->
	<div class="footer">
	    <div class="container">
	    	<br><br>
	        <div class="row footer-top">
	           <div class="row">
	           		<ul class="list-inline text-center foot_icon">
	           			<li><a href="#"><img class="img-circle img-responsive" src="images/7.jpg"></a></li>
	           			<li><a href="#"><img class="img-circle img-responsive" src="images/5.jpg"></a></li>
	           			<li><a href="#"><img class="img-circle img-responsive" src="images/8.jpg"></a></li>
	           			<li><a href="#"><img class="img-circle img-responsive" src="images/9.jpg"></a></li>
	           		</ul>
	           </div>
	           <br>
	           <div class="row">
	              <ul class="list-inline text-center foot_ul">
	              	<li><a href="#">支持我们</a></li>
	              	<li><a href="#">作者招募</a></li>
	              	<li><a href="#">用户协议</a></li>
	              	<li><a href="#">FAQ</a></li>
	              	<li><a href="#">Contact Us</a></li>
	              </ul>
	           </div>
        	</div>
	        <div class="row footer-bottom">
	            <ul class="list-inline text-center">
	                <li style="color: #ccc; font-size: 12px">&copy;2013-2017 少数派 | 粤ICP备09128966号-4 | CC BY-NC 4.0</li>
	            </ul>
	        </div>
	        <br>
    	</div>
	</div>
	<!-- 底部 -->
	<!-- script包 -->
	<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/comment.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
</body>
</html>