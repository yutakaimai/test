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
	<title>使い魔情報登録完了画面</title>
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
		   background:#red;
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
		   /* 画像ファイルの指定*/
	background-image: url(./img/akuma.jpg);
	/* 画像を常に天地左右の中央に配置*/
	background-position: center center;
	/* 画像をタイル状に繰り返し表示しない*/
	background-repeat: no-repeat;
	/* コンテンツの高さが画像の高さより大きい時、動かないように固定*/
	background-attachment: fixed;
	/* 表示するコンテナの大きさに基づいて、背景画像を調整*/
	background-size: cover;
	/* 背景画像が読み込まれる前に表示される背景のカラー*/
	background-color:;
		}

		#footer {
			width: 100%;
			height: 80px;
			background-color: #8c2121;
			clear:both;
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
			<p>登録完了！！！</p>
		</div>
		<div><br>
			<h3>ユーザーの登録が完了致しました。</h3>

			<div>
				<a href='<s:url action="HomeAction" />'>ログインへ</a>
			</div>
		</div>
	</div>
	<div id="footer">
	 	<div id="pr">
		</div>
	</div>
</body>
</html>

