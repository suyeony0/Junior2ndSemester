<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<title>식빵굽냥</title>
<script type="text/javascript">
	function move(url) {
		location.href = url;
	}
	function boardWriteCheck() {
		var form = document.BoardWriteForm;
		return true;
	}
</script>
</head>

<body>
	<div class="wrapper">
		<jsp:include page="header.jsp" />
		<div class="inner">
			<table class="table table-striped" summary="글쓰기 전체 테이블">
				<form name="BoardWriteForm" method="post"
					action="FreeBoardWriteAction">

					<colgroup>
						<col width="20%">
						<col width="80%">
					</colgroup>


					<table summary="테이블 구성">
						<h3>게시글 등록</h3>
						<tr>
							<td width="20%">사진</td>
							<td><img src="${PATH}" width="60%" height="300" style="align-items: center;"></td>
						</tr>
						<tr>
							<td width="20%">작성일</td>
							<td><input type=text name="AGE" readonly="readonly"
								value="${BOARD.date}"></td>
						</tr>
						<tr>
							<td width="20%">작성자</td>
							<td><input type=text name="WRITER" readonly="readonly"
								value="${BOARD.writer}"></td>
						</tr>
						<tr>
							<td width="20%">이름</td>
							<td><input type=text name="NAME" readonly="readonly"
								value="${BOARD.name}"></td>
						</tr>
						<tr>
							<td width="20%">나이</td>
							<td><input type=text name="AGE" readonly="readonly"
								value="${BOARD.age}"></td>
						</tr>
						<tr>
							<td width="20%">품종</td>
							<td><input type=text name="SPECIES" readonly="readonly"
								value="${BOARD.species}"></td>
						</tr>
						<tr>
							<td width="20%">중성화</td>
							<c:choose>
								<c:when test="${BOARD.isNeutered == 1}">
									<td><input type=text name="NEUTERED" readonly="readonly"
										value="예"></td>
								</c:when>
								<c:otherwise>
									<td><input type=text name="NEUTERED" readonly="readonly"
										value="아니오"></td>
								</c:otherwise>
							</c:choose>
						</tr>
						<tr>
							<td width="20%">성격</td>
							<td><input type=text name="ATTITUDE" readonly="readonly"
								value="${BOARD.attitude}"></td>
						</tr>
						<tr>
							<td width="20%">코멘트</td>
							<td><textarea name="COMMENT" rows="10" cols="100" readonly="readonly">${BOARD.comment}</textarea></td>
						</tr>
						<tr>
							<td width="20%">연락처</td>
							<td><input type=text name="CONTACT" readonly="readonly"
								value="${BOARD.contact}"></td>
						</tr>
						<tr>
							<td colspan="2"><div align="center">
									<input type="button" value="뒤로"
										onclick="move('ParcelBoardViewAction');">
								</div></td>
						</tr>
					</table>
				</form>
			</table>
		</div>
	</div>
	<jsp:include page="footer.jsp" />

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