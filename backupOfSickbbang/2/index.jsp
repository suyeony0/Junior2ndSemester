<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>식빵굽냥</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="landing is-preload">

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
					<jsp:include page="header.jsp" />

				<!-- Banner -->
					<section id="banner"  style="background-image: url(images/1.jpg);">
						<div class="inner">

							<h2 style="color:orange; font-size:40px">식빵굽냥</h2>
							<p>가톨릭대학교<br />
							길냥이 커뮤니티<br />
							정보시스템 개론 1조</p>
							<ul class="actions special">
								<li><a href="agreementOfTerms.jsp" class="button primary">집사가 되시겠습니까?</a></li>
							</ul>
						</div>
						<a href="#one" class="more scrolly"><b style="font-size:20px">더 알아보지 않을래?</b></a>
					</section>

					<!-- One -->
					<section id="one" class="wrapper style1 special" style="background-color:LightPink   ">
						<div class="inner">
							<header class="major"  >
								<h2>식빵굽냥은 각 지역 길냥이에 대한 정보를 공유하기 위한 커뮤니티입니다.<br />
								This homepage has been made for sharing information <br/>
								of each districts' street cat</h2>
								<br>
								<br>
								<p><b>각 지역에서 운영하는 급식소 및 쉼터 입니다.</b></p>
							</header>
							<ul class="icons major" style="padding-bottom: 0px;">
								<li><a href="https://cafe.naver.com/icfc0520/75788" class="icon fa-diamond major style1" style="padding-bottom: 0px;"></a></li> <!-- 여기 href에 3개정도 커뮤니티 링크 넣어줘야함-->
								<li style="margin-left:5px; margin-right:5px"><a href="https://cafe.naver.com/cattutorials" class="icon fa-heart-o major style2"></a></li>
								<li style="margin-left:5px"><a href="http://www.catcare.or.kr/networkgroup" class="icon fa-star major style3" style="padding-bottom: 0px; color:orange"></a></li>
							</ul>
              <ul>
                <span style="color: white; margin-left:0px ;margin-right:40px"><b>고양이 급식소</b></span>
                <span style="color: white; margin-right:45px ; text-align:center"><b>길냥이 쉼터</b></span>
                <span style="color: white;"><b>풀뿌리 소모임</b></span>
              </ul>
						</div>
					</section>


				<!-- Two -->
					<section id="two" class="wrapper alt style2">
						<section class="spotlight">
							<div class="image"><a href="registAndSearch.jsp"><img src="images/index1.jpg" alt="인덱스 첫번째 고양이"></a></div><div class="content">
								<h2 style="font-size:30px" >우리동네에는 어떤 고양이가 있을까?</h2>
								<ul><span style="display:inline-block; padding:0; font-size:20px">What kind of cat do our town has?</span></ul>
								<p ><span class="icon fa-arrow-left major style3" style="font-size:15px; margin:20px"></span>우리동네 길냥이를 등록하고 정보를 공유해요!</p>
								<p></p>
							</div>
						</section>

						<section class="spotlight">
							<div class="image"><a href="boardElement.jsp"><img src="images/index2.jpg" alt="크림히어로즈 3마리" /></a></div><div class="content">
								<h2>분양 받고 싶죠? 냥이 사진 보고 싶죠?</h2>
									<ul><span style="display:inline-block; padding:0; font-size:20px">Parcel out and photo board</span></ul>
								<p>자유게시판, 질문게시판, 사진게시판,분양 문의 게시판<span class="icon fa-arrow-right major style3" style="font-size:15px; margin:20px"></span></p>
							</div>
						</section>

						<section class="spotlight">
							<div class="image"><a href="agreementOfTerms.jsp"><img src="images/coco.jpg" alt="" /></a></div><div class="content">
								<h2>회원가입을 하면 엄청난 혜택이!<br /></h2>
								<ul><span style="display:inline-block; padding:0; font-size:20px">Please sign in and share your lovely cat's information</span></ul>
								<p><span class="icon fa-arrow-left major style3" style="font-size:15px; margin:20px"></span>
									Email만 있으면 가입가능합니다!
								</p>
							</div>
						</section>
					</section>

				<!-- Footer -->
					<%@ include file="footer.jsp" %>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>
