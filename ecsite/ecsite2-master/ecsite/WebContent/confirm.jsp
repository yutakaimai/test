
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
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<title>購入確認画面</title>
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
		   margin:72px auto;

		   font-size: 13px;
		}

		#header {
		   font-size: large;
			font-family: cursive;
			width: 100%;
			height: 100px;
			background-color: #8c2121;
			color: #FFFFFF;
			display: flex;
			align-items: center;
			justify-content: center;
			letter-spacing: 28px;
    		font-size: 28px;
    		font-family: monospace;
		}

		#main {
		   width: 100%;
		   height: 430px;
		   text-align: center;
		}

		#footer {
			width: 100%;
			height: 60px;
			background-color: #8c2121;
			clear:both;
		}

		.user{
			font-weight: 900;
   			font-size: 14px;
		}


		.henko {
			font-weight: 600;
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
	 	<div id="pr">
	 		<p>購入確認画面</p>
		</div>
	</div>
	<div id="main">
		<div id="top">

		</div>
		<div>
			<s:form>
				<tr>
					<td>
						<label><span class="user">氏名：</span></label>
					</td>
					<td>
						<s:property value="#session.userName" escape="false"/>
					</td>
				</tr>
				<tr>
					<td>
						<label><span class="user">お届け先：</span></label>
					</td>
					<td>
						<s:property value="#session.address" escape="false"/>
					</td>
				</tr>
				<tr>
					<td>
						<s:hidden name="itemId" value="%{itemId}" />
					</td>
				</tr>
				<tr>
					<td>
						<label><span class="user">商品名：</span></label>
					</td>
					<td>
						<s:property value="itemName" escape="false"/>
						<input type="hidden" name="itemName" value='<s:property value="itemName" />' />
					</td>
				</tr>
				<tr>
					<td>
						<label><span class="user">値段：</span></label>
					</td>
					<td>
						<s:property value="#session.price" escape="false" /><span>円</span>
					</td>
				</tr>
				<tr>
					<td>
						<label><span class="user">購入個数：</span></label>
					</td>
					<td>
						<s:property value="#session.count" escape="false"/><span>個</span>
					</td>
				</tr>
				<tr>
					<td>
						<label><span class="user">送料：</span></label>
					</td>
					<td>
						<span>420円</span>
					</td>
				</tr>
				<tr>
					<td><span class="user">支払い方法：</span></td>
					<td>
						<s:property value="payment" escape="false"/>
						<input type="hidden" name="payment" value='<s:property value="payment" />' />
					</td>
				</tr>
				<tr>
					<td><span class="user">お届け方法：</span></td>
					<td>
						<s:property value="transport"  escape="false"/>
						<input type="hidden" name="transport" value='<s:property value="transport" />' />
					</td>
				</tr>
				<tr>
					<td>
						<label><span class="user">合計金額：</span></label>
					</td>
					<td>
						<s:property value="#session.amount" escape="false"/><span>円</span>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
					</td>
				</tr>


				<tr>
					<td><input type="button" value="戻る" onclick="submitAction('GoMyPageAction')" /></td>
					<td><input type="button" value="完了" onclick="submitAction('ConfirmAction')" /></td>
				</tr>
			</s:form>
		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>
</body>
</html>