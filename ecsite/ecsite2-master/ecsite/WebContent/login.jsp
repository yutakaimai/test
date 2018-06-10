<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>ログイン画面</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #8c2121;
}

table {
	text-align: center;
	margin: 0 auto;
}

/* ========TEMPLATE LAYOUT======== */
#top {
	width: 780px;
	margin: 45px auto;
	border: 1px solid #333;
	font-size: medium;
	font-weight: 900;
	letter-spacing: 10px;
	background-color:white;
}

#header {
	width: 100%;
	height: 80px;
	background-color: #8c2121;
}

#main {
	width: 100%;
	height: 457px;
	text-align: center;

/* 画像ファイルの指定*/
	background-image: url(./img/keiyaku.jpg);
	/* 画像を常に天地左右の中央に配置*/
	background-position: center center;
	/* 画像をタイル状に繰り返し表示しない*/
	background-repeat: no-repeat;
	/* コンテンツの高さが画像の高さより大きい時、動かないように固定*/
	background-attachment: fixed;
	/* 表示するコンテナの大きさに基づいて、背景画像を調整*/
	background-size: cover;
	/* 背景画像が読み込まれる前に表示される背景のカラー*/
	background-color:#000000;
}

#footer {
	width: 100%;
	height: 80px;
	background-color: #8c2121;
	clear: both;
}

#text-center {
	display: inline-block;
	text-align: center;
}

#log {
	text-align: center;
	font-size: medium;
    color: red;
}

.user{
	font-weight: 900;
    font-size: 15px;
    color: red;
}

.log {
	font-weight: 900;
    font-size: 20px;
    color: red;
}

.kotira {
font-size: 18px;
colore: red;
}

.henko {
	font-weight: 600;
    font-size: 14px;
    color: red;
}

.work{
	font-size: 23px;
    font-family: cursive;
    width: 100%;
    height: 85px;
    color: #FFFFFF;
    display: flex;
    align-items: center;
    justify-content: center;
    letter-spacing: 13px;
    font-family: unset;
    letter-spacing: 10px;
}
</style>
</head>
<body>
	<div id="header">
		<div id="pr">
			<span class="work">MyWork</span>
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>契約画面</p>
		</div>
		<div id="log">
			<p>下記を入力して<span class="log">契約</span>をお願いします　↓　↓　↓</p>
		</div>
	<s:form action="LoginAction">
		<table >
			<tr>
				<td>
					<label><span class="user">使い魔名：</span></label>
					<s:textfield name="userName" escape="false" />
				</td>
			</tr>
			<tr>
				<td>
					<label><span class="user">使い魔ID：</span></label>
					<s:textfield name="userId" escape="false" />
				</td>
			</tr>
			<tr>
				<td>
					<label><span class="user">パスワード：</span></label>
					<s:password name="password" escape="false" />
				</td>
			</tr>
			<tr>
				<s:submit value="ログイン" />
			</tr>
		</table>
	</s:form>
	<div id="text-link">
		<p>
			<span class="henko">新規使い魔登録</span>は<a href='<s:url action="GoUserCreateAction" />'><span class="kotira">こちら</span></a>
		</p>
		<p>
			<span class="henko">Home</span>へ戻る場合は<a href='<s:url action="GoHomeAction" />'><span class="kotira">こちら</span></a>
		</p>
	</div>
</div>
	<div id="footer">
		<div id="pr"></div>
	</div>
</body>
</html>