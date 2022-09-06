<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
    <title>注册会员</title>
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
	  <div class="col-md-offset-3 col-md-6 col-sm-12">
	     <h2>注册会员</h2>
		 <!--表单-->
		 <form class="form-horizontal" action="" method="post">
		  <div class="form-group">
			<label for="title" class="col-sm-2 control-label">昵称</label>
			<div class="col-sm-10">
			  <input type="text" class="form-control" id="title" name="nickName" placeholder="请输入昵称">
			</div>
		  </div>
		  <div class="form-group">
			<label for="title" class="col-sm-2 control-label">用户名</label>
			<div class="col-sm-10">
			  <input type="text" class="form-control" id="title" name="loginName" placeholder="请输入用户名">
			</div>
		  </div>
		  <div class="form-group">
			<label for="title" class="col-sm-2 control-label">密码</label>
			<div class="col-sm-10">
			  <input type="text" class="form-control" id="title" name="loginPwd" placeholder="请输入密码">
			</div>
		  </div>
		  
		  
		
		  <div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
			  <button type="submit" class="btn btn-default">注册</button>
			</div>
		  </div>
		</form>
		 
		 <!--END表单-->
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







