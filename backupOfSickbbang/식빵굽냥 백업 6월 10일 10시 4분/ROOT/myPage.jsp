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
p.content{
	display: inline-block;
	width: 200px;
	background-color: #BBDEFB;
}
p.profile{
	margin-left: 180px;
	font-weight: bold;	
}
img{
	margin-left: 130px;
}
span{
	margin-left: 200px;
}
</style>
</head>
<body>
	<div style="width: 0px; margin: auto;">
		<br><br>
		<h3>My Page</h3>
		<br><hr style="margin-left: -200px; width:500px;"><br>
		<div class="inner">
			<img src="${photo}" width="200" height="200"><br>
			<p class="profile">[프로필 사진]</p><br><br>
			<p>아이디</p> <p class="content">${Userid}</p><br>
			<p>e-mail</p> <p class="content">${Useremail}</p><br>
			<br><hr style="width:500px; margin-left: 0px"><br>
		</div>

	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>