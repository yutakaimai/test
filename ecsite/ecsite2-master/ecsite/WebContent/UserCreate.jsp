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
	<title>使い魔契約画面</title>
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
		   background:#white";
		}

		table {
			text-align:center;
			margin:0 auto;
		}

		/* ========ID LAYOUT======== */
		#top {
		   width:780px;
		   margin:30px auto;
		   border:1px solid #333;
		   font-size: 13px;
		   background-color:white;
		   font-weight:900;
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
		   height: 472px;
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
</head>
<body>
	<div id="header">
	 	<div id="pr">
	 	<p>新規使い魔登録</p>
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>下記の入力をお願い致します。</p>
		</div>
		<div>
			<s:if test="errorMassage != ''">
				<s:property value="errorMassage" escape="false" />
			</s:if>
			<table>
			<s:form action="UserCreateAction">
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　<span class="user">使い魔ID：</span></label>
					</td>
					<td>
						<input type="text" name="userId" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　<span class="user">パスワード：</span></label>
					</td>
					<td>
						<input type="text" name="password" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　<span class="user">氏名(ユーザー名)：</span></label>
					</td>
					<td>
						<input type="text" name="first_name" value="" />
					</td>
					<td>
						<input type="text" name="family_name" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　<span class="user">性別</span></label>
					</td>
					<td>
						<input type="checkbox" name="gender" value="0" checked="checked" /> 男
						<input type="checkbox" name="gender" value="1" />女
					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　<span class="user">郵便番号：</span></label>
					</td>
					<td>
					<!--pc=postal code(郵便番号)の略-->

						<input type="text" name="pc_1" value="" />
					</td>
					<td>
						<input type="text" name="pc_2" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　 <span class="user">都道府県：</span></label>
					</td>
					<td>
					<select name="prefecture">
								 <option value="select" selected>都道府県を選択</option>
								 <option value="北海道">北海道</option>
								 <option value="青森県">青森県</option>
								 <option value="岩手県">岩手県</option>
								 <option value="宮城県">宮城県</option>
								 <option value="秋田県">秋田県</option>
								 <option value="山形県">山形県</option>
								 <option value="福島県">福島県</option>
								 <option value="茨城県">茨城県</option>
								 <option value="栃木県">栃木県</option>
								 <option value="群馬県">群馬県</option>
								 <option value="埼玉県">埼玉県</option>
								 <option value="千葉県">千葉県</option>
								 <option value="東京都">東京都</option>
								 <option value="神奈川県">神奈川県</option>
								 <option value="新潟県">新潟県</option>
								 <option value="富山県">富山県</option>
								 <option value="石川県">石川県</option>
								 <option value="福井県">福井県</option>
								 <option value="山梨県">山梨県</option>
								 <option value="長野県">長野県</option>
								 <option value="岐阜県">岐阜県</option>
								 <option value="静岡県">静岡県</option>
								 <option value="愛知県">愛知県</option>
								 <option value="三重県">三重県</option>
								 <option value="滋賀県">滋賀県</option>
								 <option value="京都府">京都府</option>
								 <option value="大阪府">大阪府</option>
								 <option value="兵庫県">兵庫県</option>
								 <option value="奈良県">奈良県</option>
								 <option value="和歌山県">和歌山県</option>
								 <option value="鳥取県">鳥取県</option>
								 <option value="島根県">島根県</option>
								 <option value="岡山県">岡山県</option>
								 <option value="広島県">広島県</option>
								 <option value="山口県">山口県</option>
								 <option value="徳島県">徳島県</option>
								 <option value="香川県">香川県</option>
								 <option value="愛媛県">愛媛県</option>
								 <option value="高知県">高知県</option>
								 <option value="福岡県">福岡県</option>
								 <option value="佐賀県">佐賀県</option>
								 <option value="長崎県">長崎県</option>
								 <option value="熊本県">熊本県</option>
								 <option value="大分県">大分県</option>
								 <option value="宮崎県">宮崎県</option>
								 <option value="鹿児島県">鹿児島県</option>
								 <option value="沖縄県">沖縄県</option>
						</select>

					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　<span class="user">市町村区：</span></label>
					</td>
					<td>
						<input type="text" name="city" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>	　　　　　　　　　　　　　　　　<span class="user">町・番地：</span></label>
					</td>
					<td>
						<input type="text" name="banchi" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　<span class="user">建物名：</span></label>
					</td>
					<td>
						<input type="text"  name="building_name" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　<span class="user">会社名：</span></label>
					</td>
					<td>
						<input type="text" name="company" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　<span class="user">電話番号：</span></label>
					</td>
					<td>
						<input type="text" name="tel_1" value="" />
					</td>
					<td>
						<input type="text" name="tel_2" value="" />
					</td>
					<td>
						<input type="text" name="tel_3" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>　　　　　　　　　　　　　　　　<span class="user">E-メール：</span></label>
					</td>
					<td>
						<input type="text" name="email" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<br/>
					</td>
				</tr>
				<s:submit value="登録"/>
			</s:form>
			</table>
			<div>
				<span class="henko">ホーム</span>に戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a>
			</div>
		</div>
	</div>
		<div id="footer">
	 	<div id="pr">
		</div>
	</div>
</body>
</html>