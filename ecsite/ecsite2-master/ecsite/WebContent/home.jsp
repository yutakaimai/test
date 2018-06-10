<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<link rel="stylesheet" href="./css/body.css">
	<link rel="stylesheet" href="./css/animate.min.css">
	<link rel="stylesheet" href="./css/jquery.bxslider.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="./js/jquery.bxslider.js"></script>


	<title>Home画面</title>
<script>
$(function(){
	$('.work').effect('shake', {} ,1000);
});

</script>

	<style type="text/css">
body {
	height: 660px;
	width: 100%;
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
}

table {
	text-align: center;
	margin: 0 auto;
}

/* ========TEMPLATE LAYOUT======== */
#header {
	font-size: 15px;
    font-family: cursive;
    width: 100%;
    height: 100px;
    background-color: #630e0e;
    color: #FFFFFF;
    display: flex;
    align-items: center;
    justify-content: center;
    letter-spacing: 13px;
    font-family: unset;
    letter-spacing: 10px;
}

#main {
	width: 100%;
	height: 512px;
	text-align: center;


	/* 画像ファイルの指定*/
	background-image: url(./img/home.jpg);
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
	height: 50px;
	background-color: #630e0e;
	clear: both;
}

#text-center {
	display: inline-block;
	text-align: center;
}

#login {
	margin-top: 0px;
	margin-left: 800px;
	width: 120px;
	height: 100px;
	background-color: #FFFFFF;
	display: flex;
	align-items: center;
	justify-content: center;
	border: 1px solid #333;
}

#user {
	margin-top: 60px;
	margin-left: 800px;
	width: 120px;
	height: 100px;
	background-color: #FFFFFF;
	display: flex;
	align-items: center;
	justify-content: center;
	border: 1px solid #333;
}

.sweets{
	font-size: 23px;
    font-family: cursive;

}

.login{
font-size: 22px;
}
</style>
	</head>
	<body >

		<div id="header">
			<div class="my">
			<p>Welcome to <span class ="work">My WorkShop</span></p>
				<p>　　　　　購入へは<span class  ="login">使い魔契約を</span>をお願いします。但し自己責任で…</p>
			</div>
		</div>

		<div id="main">
			<div id="top">

			</div>
				<div>

					<div id="login">
					<table>
					<tr>
						<td>
							<label>使い魔契約済みの方は </label>
						<td>
					</tr>
					<tr>
						<td>
						 	<a href='/ecsite/HomeAction.action' ><br/>ログインへ</a>
						 </td>
					<tr>
					</table>
					</div>
					</div>
					<div id="user">
					<table>
						<tr>
							<td>
						  		<label>まだ使い魔契約していない方は</label>
						  	</td>
						</tr>
						<tr>
							<td>
						  		<a href='/ecsite/GoUserCreateAction.action' ><br/>新規契約へ</a>
							</td>
						</tr>

					</table>

					</div>

		</div>


		<div id="footer">
			<div id=""></div>
		</div>

	</body>
	</html>