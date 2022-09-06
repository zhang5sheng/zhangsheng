<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
    <title>哎微博</title>
	<link rel="stylesheet" type="text/css" href="/weibo/easyui/themes/bootstrap/easyui.css">
	<link rel="stylesheet" type="text/css" href="/weibo/easyui/themes/icon.css">
    <link href="/weibo/css/bootstrap.min.css" rel="stylesheet">
	
    <style>
		header{
		   width:100%;
	       height:100px;
		   background-color:#008;
		   color:white;
		   text-align:center;
		   margin-bottom:20px;
		}
		header h1{ line-height:100px;}
		h2{text-align:center;margin-bottom:50px;}
		body{background:#eee}
	</style>
    
  </head>
  <body>
   <div class="container" style="background:white">
    <div class="row">
	  <div class="col-md-12">
	    <header><h1>哎微博</h1></header>
	  </div>
	</div>
	<div class="row">
	  <div class="col-md-12">
	    <!--导航-->
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
			  <a class="navbar-brand" href="#">首页</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			  <ul class="nav navbar-nav">
				<li class="active"><a href="#">关注的人<span class="sr-only">(current)</span></a></li>
				<li><a href="/weibo/weibo/add">写微博</a></li>
				
			  </ul>
			  <form class="navbar-form navbar-left">
				<div class="form-group">
				  <input type="text" class="form-control" placeholder="标题文字">
				</div>
				<button type="submit" class="btn btn-default">搜索</button>
			  </form>
			  <ul class="nav navbar-nav navbar-right">
				
				<li class="dropdown">
				  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">我的空间<span class="caret"></span></a>
				  <ul class="dropdown-menu">
					<li><a href="#">我写的微博</a></li>
					<li><a href="#">我的评论</a></li>
				  </ul>
				</li>
				<li><button type="button" class="btn btn-default navbar-btn">登陆</button></li>
			  </ul>
			</div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>  
		<!--END导航-->
	  </div>
	</div>
	<div class="row">
	  <div class="col-md-9 col-sm-12">
		 <!--微博-->
		 <div class="row">
		 <c:forEach var="wb" items="${weibos}">
		  <div class="col-sm-6 col-md-4">
			<div class="thumbnail">
			  <img src="/weibo_imgs/${wb.img }" alt="...">
			  <div class="caption">
				<h3>${wb.title}<span style="color:#aaa;font-size:10px">【${wb.userNickName}】</span></h3>
				<p>${wb.content}</p>
				<p><a href="/weibo/detail?wbid=${wb.id }" class="btn btn-primary" role="button">详情</a> <a href="#" class="btn btn-default" role="button">看作者</a></p>
			  </div>
			</div>
		  </div>
	     </c:forEach>
		
		</div>
		 <!--END表单-->
		 <!--分页-->
		 <div class="col-sm-12 text-center">
			 <nav aria-label="Page navigation">
			  <ul class="pagination">
				<li>
				  <a href="#" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
				  </a>
				</li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li>
				  <a href="#" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
				  </a>
				</li>
			  </ul>
			</nav>
		 </div>
		 <!--END分页-->
	  </div>
	   <div class="col-md-3 col-sm-12">
		 <!--排行榜-->
			<div class="list-group">
			  <a href="#" class="list-group-item" style="background:#ccc">
				阅读量排行榜
			  </a>
			  <a href="#" class="list-group-item"><span class="badge">20</span>Dapibus ac facilisis in</a>
			  <a href="#" class="list-group-item"><span class="badge">30</span>Morbi leo risus</a>
			  <a href="#" class="list-group-item"><span class="badge">98</span>Porta ac consectetur ac</a>
			  <a href="#" class="list-group-item"><span class="badge">69</span>Vestibulum at eros</a>
			</div>
		  <!--END 排行榜-->
		  <!--排行榜-->
		    <table class="table">
			   <caption>评论排名</caption>
			   <thead>
			      <tr>
				    <th>排名</th>
					<th>标题</th>
					<th>评论数</th>
				  </tr>
			   </thead>
			   <tbody>
			       <tr>
				     <td>1</td>
					 <td>我爱空调</td>
					 <td>100</td>
				   </tr>
				   <tr>
					 <td>2</td>
					 <td>我爱臭豆腐</td>
					 <td>50</td>
				  </tr>
				   <tr>
					 <td>2</td>
					 <td>淘宝是我的精神支柱</td>
					 <td>50</td>
				  </tr>
				   <tr>
					 <td>3</td>
					 <td>林中的景色</td>
					 <td>30</td>
				  </tr>
			   </tbody>
			</table>
		  <!--END 排行榜-->
	   </div>
	</div>
	<div class="row">
	  <div class="col-md-12">
	   <!--面板-->
		<div class="panel panel-default" style="margin-top:10px">
		  <div class="panel-body text-center">
			aiweibo sulan.cn<br/>
			Designed by fan wu
		  </div>
		</div>  
		<!--END 面板-->
	  </div>
	</div>
  
    </div>
    <script src="/weibo/js/jquery-1.11.0.min.js" ></script>
    <script src="/weibo/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/weibo/easyui/jquery.easyui.min.js"></script>
  </body>
</html>







