<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>哎微博</title>
<link rel="stylesheet" type="text/css"
	href="/weibo/easyui/themes/bootstrap/easyui.css">
<link rel="stylesheet" type="text/css"
	href="/weibo/easyui/themes/icon.css">
<link href="/weibo/css/bootstrap.min.css" rel="stylesheet">

<style>
header {
	width: 100%;
	height: 100px;
	background-color: #008;
	color: white;
	text-align: center;
	margin-bottom: 20px;
}

header h1 {
	line-height: 100px;
}

h2 {
	text-align: center;
	margin-bottom: 50px;
}

body {
	background: #eee
}
</style>

</head>
<body>
	<div class="container" style="background: white">
		<div class="row">
			<div class="col-md-12">
				<header>
					<h1>哎微博</h1>
				</header>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<!--导航-->
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<a class="navbar-brand" href="/weibo/index">首页</a>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="active"><a href="#">关注的人<span
										class="sr-only">(current)</span></a></li>
								<li><a href="#">写微博</a></li>

							</ul>
							<form class="navbar-form navbar-left">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="标题文字">
								</div>
								<button type="submit" class="btn btn-default">搜索</button>
							</form>
							<ul class="nav navbar-nav navbar-right">

								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="false">我的空间<span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="#">我写的微博</a></li>
										<li><a href="#">我的评论</a></li>
									</ul></li>
								<li><button type="button"
										class="btn btn-default navbar-btn">登陆</button></li>
							</ul>
						</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid -->
				</nav>
				<!--END导航-->
			</div>
		</div>
		<div class="row">
			<div class="col-md-9 col-sm-12">
				<!--明细-->
				<div class="row">
					<div class="col-md-3 text-center">
						<img src="/weibo_imgs/${wb.img }"
							style="min-width: 100px; min-height: 150px"
							class="img-responsive img-thumbnail" alt="Responsive image" />
					</div>
					<div class="col-md-9">
						<!--微博详细-->
						<div class="panel panel-default">
							<div class="panel-heading">${wb.title }</div>
							<div class="panel-body" style="min-height: 200px">
								${wb.content }</div>
						</div>
						<!--END微博详细-->
					</div>
				</div>
				<hr />
				<!--END明细-->
				<!--评论-->
				<div class="row">
					<div class="col-md-12 text-center">
						<div class="panel panel-default">
							<div class="panel-heading">评论区</div>
							<div class="panel-body">
								<!--评论列表-->
								<ul class="list-group">
									<c:forEach var="cm" items="${cmList }">
									<li class = "list-group-item">${cm.userNickName }:${cm.content }</li>
									</c:forEach>
								</ul>
								<!--END评论列表-->
								<!--发表评论-->
								<form action="/weibo/comment/add" method="post">
								<input type="hidden" name="wbid" value="${wb.id }"/>
									<div class="form-group">
										<label for="loginname" class="col-sm-2 control-label">我要评论</label>
										<div class="col-sm-10">
											<textarea name="content" id="txt" class="form-control" rows="3"></textarea>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-10">
											<button type="submit" class="btn btn-default">提交</button>
										</div>
									</div>
								</form>
								<!--END发表评论-->
							</div>
						</div>
					</div>
				</div>
				<!--END评论-->
			</div>
			<div class="col-md-3 col-sm-12">
				<!--个人信息-->
				<div class="thumbnail">
					<img src="imgs/7.jpg" alt="..." class="img-circle" width="100px"
						height="120px" style="float: left; margin: 30px 10px">
					<div class="caption text-center">
						<h3>${auth.nickName }</h3>
						<p>发表博文:${wbCount }</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">关注</a>
						</p>
					</div>
				</div>
				<!--END 个人信息-->
				<!--排行榜-->
				<div class="list-group">
					<a href="#" class="list-group-item" style="background: #ccc">
						作者的博客 </a>
					<c:forEach var="aw" items="${authWbList }">
						<a href="/weibo/detail?wbid=${aw.id }" class="list-group-item">
							<span class="badge">${aw.readCount }</span>${aw.title }
						</a>
					</c:forEach>
				</div>
				<!--END 排行榜-->
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<!--面板-->
				<div class="panel panel-default" style="margin-top: 10px">
					<div class="panel-body text-center">
						aiweibo sulan.cn<br /> Designed by fan wu
					</div>
				</div>
				<!--END 面板-->
			</div>
		</div>

	</div>
	<script src="/weibo/js/jquery-1.11.0.min.js"></script>
	<script src="/weibo/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/weibo/easyui/jquery.easyui.min.js"></script>
</body>
</html>







