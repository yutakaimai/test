<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta charset="utf-8">
	<title>退会</title>
	<style type="text/css">
	/* ========TAG LAYOUT======== */
	body {
		   margin:0;
		   padding:0;
		   line-height:1.6;
		   letter-spacing:1px;
		   font-family:Verdana, Helvetica, sans-serif;
		   font-size:12px;
		   color:#333;
		   background:#fffdb1;
		}

		table {
			text-align:center;
			margin:0 auto;
		}

		/* ========ID LAYOUT======== */
		#top {
		   width:780px;
		   margin:30px auto;
			font-size: 31px;
   			font-weight: bold;
    		letter-spacing: 20px;
    		color: red;
		}

		#header {
		   width: 100%;
		   height: 80px;
		   background-color: #8c2121;
		}

		#main {
		   width: 100%;
		   height: 472px;
		   text-align: center;
		}

		#footer {
			width: 100%;
			height: 80px;
			background-color: #8c2121;
			clear:both;
		}
		.user{
			font-weight: 900;
   			font-size: 30px;
		}
		.henko {
			font-weight: 600;
	    	font-size: 18px;
		}
	</style>

</head>
<body>
	<div id="header">
	 	<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>退会完了しました。</p>
		</div>
		<div>

			<p><span class="user">今までご利用ありがとうございました。</span></p>
			<div>
				<p><span class="henko"><br/>Homeへ戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a></span></p>
			</div>
		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>
</body>
</html>
