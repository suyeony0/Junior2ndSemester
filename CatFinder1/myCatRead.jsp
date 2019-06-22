<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>식빵굽냥</title>
<meta charset=UTF-8 "/>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<style>
h3 {
	width: 200px;
}

div.inner {
	width: 800px;
	height: 800px;
	margin-left: -200px;
}

p {
	display: inline-block;
	width: 100px;
	margin: 10px;
	margin-left: 50px;
	text-align: center;
}

p.content {
	display: inline-block;
	width: 300px;
}

p.profile {
	margin-left: 180px;
	font-weight: bold;
}

img {
	margin-left: 130px;
}

span {
	margin-left: 200px;
}
</style>
<script type="text/javascript">
	function move(url) {
		location.href = url;
	}
</script>
</head>
<body class="landing is-preload">
	<!-- Header -->
	<jsp:include page="header.jsp" />

	<div style="width: 0px; margin: auto;">
		<br>
		<br>
		<div class="inner">
			<p class="profile">[고양이 사진]</p>
			<br>
			<br> <img src="${PATH}" width="400" height="200"><br>
			<p>이름</p>
			<p class="content">${CAT.name}</p>
			<br>
			<p>나이</p>
			<p class="content">${CAT.age}</p>
			<br>
			<p>성격</p>
			<p class="content">${CAT.attitude}</p>
			<br>
			<p>출몰 지역</p>
			<p class="content">${CAT.location}</p>
			<br>
			<c:choose>
				<c:when test="${CAT.isNeutered == 1}">
					<p>중성화 여부</p>
					<p class="content">예</p>
					<br>
				</c:when>
				<c:otherwise>
					<p>중성화 여부</p>
					<p class="content">아니오</p>
					<br>
				</c:otherwise>
			</c:choose>
			<p>먹이 선호</p>
			<p class="content">${CAT.foodType}</p>
			<br>
			<p>기타 코멘트</p>
			<p class="content">${CAT.comment}</p>
			<br>
		</div>
		
	</div>
	<input type="button" value="뒤로" onclick="move('MyCatViewAction');" />
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