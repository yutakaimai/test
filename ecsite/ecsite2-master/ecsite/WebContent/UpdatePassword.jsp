
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
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<title>パスワード変更画面</title>
<style type="text/css">
/* ========TAG LAYOUT======== */
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #fffdb1;
}

table {
	text-align: center;
	margin: 0 auto;
}

/* ========ID LAYOUT======== */
#top {
	width: 540px;
	margin: 30px auto;
	font-size: 18px;
   	font-weight: bold;
    letter-spacing: 16px;
}

#header {
	width: 100%;
	height: 100px;
	background-color: #8c2121;
	font-size: 40px;
    font-weight: 900;
}

#main {
	width: 100%;
	height: 472px;
	text-align: center;
}

#footer {
	width: 100%;
	height: 60px;
	background-color: #8c2121;
	clear: both;
}
.pass {
	font-size: 23px;
    font-family: cursive;
    width: 100%;
    height: 100px;
    color: #FFFFFF;
    display: flex;
    align-items: center;
    justify-content: center;
    letter-spacing: 13px;
    font-family: unset;
}

#home{
	font-size: 18px;
}

.user{
	font-weight: 900;
   	font-size: 14px;
}
</style>
<script type="text/javascript">
		function submitAction(url) {
			$('form').attr('action', url);
			$('form').submit();
		}
	</script>
</head>
<body>
	<div id="header">
		<div class="pass">
			<p>パスワード変更</p>
		</div>

	</div>

	<div id="main">

	<div id="top">
			<p>新しいパスワードの入力は下記へ入力をお願い致します。　</p>
		</div>
		<s:if test="errorMessage!=''">
			<div class="er">
				<s:property value="errorMessage" escape="false" />
			</div>
		</s:if>


		<form action="UpdatePasswordComplateAction">
			<table>

				<tr>
					<td><label><span class="user">ユーザーID：</span></label></td>
					<td><input type="text" name="userId" value="" /></td>
				</tr>


				<tr>
					<td><label><span class="user">新しいパスワード：</span></label></td>
					<td><input type="password" name="password_1" value="" /></td>
				</tr>

				<tr>
					<td><label><span class="user">もう一度入力して下さい</span></label></td>
					<td><input type="password" name="password_2" value="" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="登録" /></td>
				</tr>


			</table>
			<div id="home">
				<a href='<s:url action="GoHomeAction" />' >ホームに戻る</a>
			</div>
		</form>
	</div>


	<div id="footer">

	</div>
</body>

</body>
</html>