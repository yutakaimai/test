
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
	<title>使い魔登録確認画面</title>
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
		   background:#white;
		}

		table {
			text-align:center;
			margin:0 auto;
		}

		/* ========ID LAYOUT======== */

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
			letter-spacing: 12px;
    		font-size: 28px;
    		font-family: monospace;
		}

		#main {
		   width: 100%;
		   height: 472px;
		   text-align: center;
		}

		#box {
			border: 1px solid #000000;
		}

		#footer {
			width: 100%;
			height: 76px;
			background-color: #8c2121;
			clear:both;
		}

		.user{
			font-weight: 900;
   			font-size: 14px;
		}




	</style>
</head>
<body>
	<div id="header">
	 	<div id="pr">
	 		<p>ユーザー情報の登録確認</p>
		</div>
	</div>
	<div id="main">
		<div id="top">
	</div>
		<div>
			<h3>登録する内容は以下でよろしいですか。</h3>
			<table>
				<s:form action="UserCreateConfirmAction">
					<tr id="box">
						<td>
							<label><span class="user">ユーザーID：</span></label>
						</td>
						<td>
							<s:property value="userId" escape="false" />
						</td>
					</tr>
					<tr id="box">
						<td>
							<label><span class="user">パスワード：</span></label>
						</td>
						<td>
							<s:property value="password" escape="false" />
						</td>
					</tr>
					<tr id="box">
						<td>
							<label><span class="user">氏名(ユーザー名)：</span></label>
						</td>
						<td>
							<s:property value="userName" escape="false" />
						</td>
					</tr>
					<tr>
						<td>
							<label><span class="user">性別：</span></label>
						</td>
						<td>
							<s:property value="genderStr" escape="false" />
						</td>
					</tr>
					<tr>
						<td>
							<label><span class="user">郵便番号：</span></label>
						</td>
						<td>
							<s:property value="pc" escape="false" />
						</td>
					</tr>
					<tr>
						<td>
							<label><span class="user">都道府県：</span></label>
						</td>
						<td>
							<s:property value="prefecture" escape="false" />
						</td>
					</tr>
					<tr>
						<td>
							<label><span class="user">市町村区：</span></label>
						</td>
						<td>
							<s:property value="city" escape="false" />
						</td>
					</tr>
					<tr>
						<td>
							<label><span class="user">町・番地：</span></label>
						</td>
						<td>
							<s:property value="banchi" escape="false" />
						</td>
					</tr>
					<tr>
						<td>
							<label><span class="user">建物名：</span></label>
						</td>
						<td>
							<s:property value="building_name" escape="false" />
						</td>
					</tr>
					<tr>
						<td>
							<label><span class="user">会社名：</span></label>
						</td>
						<td>
							<s:property value="company" escape="false" />
						</td>
					</tr>
					<tr>
						<td>
							<label><span class="user">電話番号：</span></label>
						</td>
						<td>
							<s:property value="tel" escape="false" />
						</td>


					<tr>
						<td>
							<label><span class="user">Eメール：</span></label>
						</td>
						<td>
							<s:property value="email" escape="false"/>
						</td>
					</tr>
					<tr>
						<td>
							<s:submit value="確認完了" />
						</td>
					</tr>
				</s:form>
			</table>
		</div>
	</div>
	<div id="footer">
	 	<div id="pr">
		</div>
	</div>
</body>
</html>