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
	<title>購入履歴</title>
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
			background-color: white;
		}

	/* ========ID LAYOUT======== */
		#top {
		   width:780px;
		   margin:30px auto;
		   border:1px solid #333;
		   font-size: 20px;
   			font-weight: 900;
			letter-spacing: 44px;
			background-color:white;
		}

		#header {
		   width: 100%;
		   height: 80px;
		   background-color: #8c2121;
		}

		#main {
		   width: 100%;
		   text-align: center;
		}

		#footer {
			width: 100%;
			height: 80px;
			background-color: #8c2121;
			clear:both;
		}

		#text-right {
			display: inline-block;
			text-align: right;
		}

		.henko {
			font-weight: 600;
		    font-size: 14px;
		}

		.sweets{
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
	 	<span class="sweets">MYSWEETS</span>
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>購入履歴</p>
		</div>
		<div>
		<s:if test="myPageList == null">
			<h3>ご購入情報はありません。</h3>
		</s:if>
		<s:elseif test="message == null">
			<h3>ご購入情報は以下になります。</h3>
			<table border="1">
			<tr style="background-color:gold;">
				<th>商品名</th>
				<th>値段</th>
				<th>購入個数</th>
				<th>支払い方法</th>
				<th>購入日</th>
			</tr>
			<s:iterator value="myPageList">
				<tr>
					<td><s:property value="itemName" /></td>
					<td><s:property value="amount" /><span>円</span></td>
					<td><s:property value="count" /><span>個</span></td>
					<td><s:property value="payment" /></td>
					<td><s:property value="insert_date" /></td>
				</tr>
			</s:iterator>
			</table>
			<s:form action="HistoryAction">
				<input type="hidden" name="deleteFlg" value="1">
				<s:submit value="削除" method="delete" />
			</s:form>
		</s:elseif>
		<s:if test="message != null">
			<h3><s:property value="message"/></h3>
		</s:if>
			<div id="text-right">
				<p><span class="henko">マイページ</span>へ戻る場合は<a href='<s:url action="GoMyPageAction" />'>こちら</a></p>
			</div>
		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>
</body>
</html>