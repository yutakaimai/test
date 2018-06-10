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
<title>商品詳細画面</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #ffe18e;
}

table {
	text-align: center;
	margin: 0 auto;
}

/* ========TEMPLATE LAYOUT======== */
#top {
	width: 780px;
	margin: 30px auto;
	border: 1px solid #333;
}

#header {
	font-size: 21px;
    font-family: sans-serif;
    width: 100%;
    height: 100px;
    background-color: #630e0e;
    color: #FFFFFF;
    display: flex;
    align-items: center;
    justify-content: center;
    letter-spacing: 13px;

}

#main {
	width: 100%;
	height: 472px;
	text-align: center;
}

#footer {
	width: 100%;
	height: 80px;
	clear: both;
	font-size: 21px;
    font-family: sans-serif;
    background-color: #630e0e;
    color: #FFFFFF;
    display: flex;
    align-items: center;
    justify-content: center;
    letter-spacing: 13px;

}

#text-center {
	display: inline-block;
	text-align: center;
}

#cake {
	width:33%;
	text-align: center;
	float:left;
}

.user {
	font-weight: 900;
    font-size: 14px;
}


</style>
</head>
<body>
<div id="header">
	<p>【商品一覧】<br></p>
	<p>お好きな商品をお選び下さい</p>

</div>

	<s:iterator value="myPageDTO">
		<s:form action="ItemAction">
			<table id="cake">

				<tr>
					<td>
						<img src='<s:property value="image_file_path" />'width="200" height="200" class="imageleft">
					</td>
				</tr>
				<tr id="item">
					<td>
						<s:hidden name="itemId" value="%{itemId}" />
					</td>
					<td>
						<label><span class="user">商品名：</span>&ensp;</label>
						<s:property value="itemName" />
						<input type="hidden" name="itemName" value='<s:property value="itemName" />' />
					</td>
				</tr>
				<tr id="price">
					<td>
						<label><span class="user">値段：</span>&ensp;</label>
						<s:property value="price" /><span>円</span>
						<input type="hidden" name="price" value='<s:property value="price" />' />

					</td>
				</tr>
				<tr id="count">
					<td>
						<label><span class="user">購入個数：</span>&ensp;</label>
						<select name="count">
							<option value="1" selected="selected">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</td>
				</tr>
				<tr id="payment">
					<td>
						<label><span class="user">支払方法：</span>&ensp;</label>
						<select name="payment">
							<option value="1" selected="selected">クレジットカード</option>
							<option value="2">コンビニ払い・電子マネー</option>
							<option value="3">代引き</option>
							<option value="4">現金</option>
						</select>
					</td>
				</tr>
				<tr id="transport">
					<td>
						<label><span class="user">配送方法：</span>&ensp;</label>
						<select name="transport">
						<option value="1" selected="selected">通常配送</option>
						<option value="2">配送日指定</option>
						<option value="3">お急ぎ便</option>
						<option value="4">冷凍クール便</option>

						</select>
					</td>
				</tr>
						<s:submit value="支払い確認画面へ" />
				<tr>
					<td><br/></td>
					<td><br/></td>
				</tr>
			</table>
		</s:form>
	</s:iterator>
<div id="footer">
<a href='<s:url action="GoMyPageAction" />'>マイページ</a><span>へ戻る</span>
</div>

</body>
</html>