<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>여행을 기록하는 로그</title>


<script type="text/javascript" src="/test/jsp/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript" src="js/quickmenu.js"></script>
<script type="text/javascript" src="js/tabmenu.js"></script>
<script src="js/facebook.js"></script>
<link rel="stylesheet" type="text/css" href="css/main_style.css" />
<link rel="stylesheet" type="text/css" href="jsp/sub_css/body_style.css" />
<link rel="stylesheet" type="text/css" href="css/menu_style.css" />

</head>

<body>

	<div class="login_left"></div>
	<div class="login_right">
		<fb:login-button show-faces="true" autologoutlink="true" max-rows="1"></fb:login-button>
	</div>
	<div class="container">
		<div class="header" align="left">
			<a href="index.jsp?body_path=jsp/main.jsp"> <img
				src="img/여기로01.png" width="215" height="80" id="Insert_logo"
				style="background-color: #fff; display: block;" /></a>
		</div>
		<div align="center">
			<form name="search" method="post" action="search">
				<label for="textfield"></label> <input name="textfield" type="text"
					id="textfield" size="40"> <input type="submit"
					name="search" id="search" value="검색">
			</form>
			<!-- end .header -->
		</div>
		<div class="sidebar1">
			<ul id="dropdown">
				<li><a href="index.jsp"><p>대문</p></a>
					<ul>

						<li><a href="#">사용자 모임</a></li>
						<li><a href="#">요즘 화제</a></li>
						<li><a href="#">최근 바뀜</a></li>
						<li><a href="#">모든 문서보기</a></li>
					</ul></li>

				<li><a href="#"><p>도구</p></a></a>
					<ul>
						<li><a href="#">여기를 가르키는 문서</a></li>
						<li><a href="#">가르키는 글의 바뀜</a></li>
						<li><a href="#">인쇄용 문서</a></li>
						<li><a href="#">고유 링크</a></li>
					</ul></li>

				<li><a href="#"><p>고객지원실</p></a></a>
					<ul>
						<li><a href="#">여기로 소개</a></li>
						<li><a href="#">면책 조항 / 운영 정책</a></li>
						<li><a href="#">이용규약</a></li>
					</ul></li>
			</ul>

			<!-- end .sidebar1 -->
		</div>
		<div class="content">

			<jsp:include page="jsp/maincontent.jsp" flush="false">
				<jsp:param value="" name="" />
			</jsp:include>

		</div>
		<div class="footer">
			<p>http://www.yeogiro.co.kr/</p>
			<!-- end .footer -->
		</div>
		<!-- end .container -->

	</div>

	<div id="quick_menu_div">

		<a href="#"> <img src="img/facebook.png" width="50px" /></a> <br></br>
		<a href="#"> <img src="img/instagram.png" width="50px" /></a> <br></br>
		<a href="#"> <img src="img/kakao.png" width="50px" /></a> <br></br>
		<a href="#"> <img src="img/twitter.png" width="50px" /></a> <br></br>


	</div>

</body>
</html>
</body>
</html>
