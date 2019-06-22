<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
<meta charset="utf-8">
<title></title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/photoBoard.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>

<body class="landing is-preload">

	<!-- Page Wrapper -->
	<div id="page-wrapper">
		<!-- Header -->
		<jsp:include page="header.jsp" />
	</div>


	<article id="main">
		<section id="banner" style="min-height:500px; height:50%">
			<div class="inner">
				<h2 style="color: orange">사진 게시판</h2>
			</div>
		</section>

		<div class="container page-top">

			<div align="right">
				<div class="round-button">
					<button onclick="location.href='photoBoardWrite.jsp'" class="round-button">+</button>
				</div>
			</div>

			<div class="row">
				<c:choose>
					<c:when test="${PATH_LIST.listSize > 0}">
						<c:forEach var="cnt" begin="0" end="${PATH_LIST.listSize - 1}">
							<div class="col-lg-3 col-md-4 col-xs-6 thumb">
								<a href="${PATH_LIST.path[cnt] }" class="fancybox"
									rel="ligthbox"> <img src="${PATH_LIST.path[cnt] }"
									class="zoom img-fluid " alt=""
									style="height: 400px; margin-bottom: 20px; margin-top: 20px;">
								</a>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<div class="col-lg-3 col-md-4 col-xs-6 thumb">
							<a href="photoBoard/noImage.png" class="fancybox" rel="ligthbox">
								<img src="photoBoard/noImage.png" class="zoom img-fluid " alt=""
								style="height: 400px; margin-bottom: 20px; margin-top: 20px">
							</a>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>

	</article>
	<jsp:include page="footer.jsp" />



	<!-- Scripts -->


	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.css"
		media="screen">
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.js"></script>

	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>

	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script src="assets/js/photoBoard.js"></script>
</body>

</html>
