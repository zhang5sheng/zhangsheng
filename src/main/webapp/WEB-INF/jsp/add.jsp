<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
    <title>问题收集</title>
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
	  <div class="col-md-offset-2 col-md-8 col-sm-12">
	     <h2>写微博</h2>
		 <!--表单-->
		 <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
		 <div class="form-group">
			<label for="title" class="col-sm-2 control-label">标题</label>
			<div class="col-sm-10">
			  <input id="title" name="title" type="text" class="form-control" rows="3"></textarea>
			</div>
		  </div>
		  
		  <div class="form-group">
			<label for="title" class="col-sm-2 control-label">图片</label>
			<div class="col-sm-10">
			  <input type="file" id="exampleInputFile" name="img_file">
			</div>
		  </div>
		  
		  <div class="form-group">
			<label for="loginname" class="col-sm-2 control-label">内容</label>
			<div class="col-sm-10">
			  <textarea  id="txt" name="content" class="form-control" rows="3"></textarea>
			</div>
		  </div>
		  <div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
			  <button type="submit" class="btn btn-default">提交</button>
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
			速联办公 sulan.cn<br/>
			Designed by fan wu
		  </div>
		</div>  
		<!--END 面板-->
	  </div>
	</div>
   </div>

   
    <script src="/weibo/js/jquery-1.11.0.min.js" ></script>
    <script src="/weibo/js/bootstrap.min.js"></script>
   
    <script>
	
	</script>
 </body>
</html>







