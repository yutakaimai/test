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
	<title>マイページ</title>

	<script>
	$(function () {

		  var timer = setInterval(slideshow, 3000);

		  function slideshow() {
		    $('#frame img:first').fadeOut('fast', function() {
		      $(this).next('img').fadeIn();

		      $('#frame').append(this);
		    });
		  }

		  $('#frame img').hover(
		    function () {

		      clearInterval(timer);
		    },
		    function () {

		      timer = setInterval(slideshow, 3000);
		    }
		  );
		});

	$(function () {

		  var timer = setInterval(slideshow, 3000);

		  function slideshow() {
		    $('#frame2 img:first').fadeOut('fast', function() {
		      $(this).next('img').fadeIn();

		      $('#frame2').append(this);
		    });
		  }

		  $('#frame2 img').hover(
		    function () {

		      clearInterval(timer);
		    },
		    function () {

		      timer = setInterval(slideshow, 3000);
		    }
		  );
		});

	$(function () {

		  var timer = setInterval(slideshow, 3000);

		  function slideshow() {
		    $('#frame3 img:first').fadeOut('fast', function() {
		      $(this).next('img').fadeIn();

		      $('#frame3').append(this);
		    });
		  }

		  $('#frame3 img').hover(
		    function () {

		      clearInterval(timer);
		    },
		    function () {

		      timer = setInterval(slideshow, 3000);
		    }
		  );
		});
	</script>

<style type="text/css">
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #fff;
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
	width: 100%;
	height: 80px;
	background-color:  #8c2121;
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
	clear: both;
}

#slider {
		width: 100%;
		height: 200px;
		 display: flex;
    	align-items: center;
    	justify-content: center;
    	letter-spacing: 13px;
    	font-family: unset;
		text-align:center;
}

#text-center {
	display: inline-block;
	text-align: center;
}

#frame img {
  display: none;
  width: 200px;
  height: 200px;
  max-width: 100%;
  max-heght: 100%;
  float:left;
  margin-left:-30px;

}

#frame img:first-child  {
  display: inline;
}

#frame2 img {
  display: none;
  width: 200px;
  height: 200px;
  max-width: 100%;
  max-heght: 100%;
  float:left;

}

#frame2 img:first-child  {
  display: inline;
}


#frame3 img {
  display: none;
  width: 200px;
  height: 200px;
  max-width: 100%;
  max-heght: 100%;
  float:left;
  margin-left:30px;

}

#frame3 img:first-child  {
  display: inline;
}

.user{
			font-weight: 900;
   			font-size: 14px;
		}

.sweets{
	font-size: 24px;
    font-family: cursive;

}

</style>
</head>
<body>

	<div id="header">
		<div id=""></div>
	</div>

	<div id="main">

		<div id="top">
			<p><span class="user"><s:property value="#session.userName" escape="false"/></span>さん </p>
			<p>ようこそ  <span class ="sweets"> My WorkShop </span> へ</p>
		</div>
			<div>
			<table>
				<tr>
					<td><span class="user">商品の購入へは　→</span></td>
					<td> <a href='<s:url action="MyPageAction" />'>商品購入</a></td>
				</tr>
					<tr>
						<td><span class="user">過去の商品の購入履歴は　→</span></td>
						<td> <a href='<s:url action="HistoryAction" />'>商品履歴</a></td>
					</tr>
					<tr>
						<td><span class="user">ログアウトの場合は　→</span></td>
						<td>
							 <a href='<s:url action="LogoutAction" />'> ログアウト</a>
						</td>
					</tr>

				</table>
				<table>
					<tr>
						<td><span class="user">パスワードを変更する場合は　→</span></td>
						<td><a href='<s:url action="UpdatePasswordAction" />'>パスワード変更</a></td>
					</tr>
				</table>
				<table>
					<tr>
						<td><span class="user">退会する場合は　→</span></td>
						<td><a href='<s:url action="UnsubscribeAction" />'>退会</a></td>
					</tr>
				</table>
	<div id="slider">
				<div id="frame">
						<img src="./img/Beverly.jpg">
						<img src="./img/Book-of-black-magic.jpg">
						<img src="./img/ChamomileFloralWater.jpg">
						<img src="./img/FreyaPlaque.jpg">
						<img src="./img/mediate.jpg">
						<img src="./img/occult-magic-and0witchcraft.jpg">
				</div>

				<div id="frame2">
						<img src="./img/Ouija.jpg">
						<img src="./img/peter.jpg">
						<img src="./img/ramp.jpg">
						<img src="./img/Resin.jpg">
						<img src="./img/Rosslyn.jpg">
						<img src="./img/rowan.jpg">
						<img src="./img/runa.jpg">
				</div>

				<div id="frame3">
						<img src="./img/SekeniteB.jpg">
						<img src="./img/spill.jpg">
						<img src="./img/tarot.jpg">
						<img src="./img/Treadbag.jpg">
						<img src="./img/箒.jpg">
						<img src="./img/akuma.jpg">
				</div>

	</div>
	</div>
	</div>

	<div id="footer">
		<div id=""></div>
	</div>

</body>
</html>