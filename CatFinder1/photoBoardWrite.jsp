<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset=UTF-8 "/>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<script type="text/javascript">

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
			<form name="PhotoBoardWriteAction" method="POST"
				enctype="multipart/form-data" action="PhotoBoardWriteAction">
				<table class="table table-striped" summary="글쓰기 전체 테이블">
					<colgroup>
						<col width="20%">
						<col width="80%">
					</colgroup>
					<h3>사진 등록</h3>
					<tr>
						<td>사진 등록</td>
						<td><input type="file" name="IMAGE"></td>
					</tr>
					<tr>
						<td colspan="2"><div align="center">
								<input type="submit" value="등록">&nbsp;&nbsp; <input
									type="button" value="뒤로" onclick="move('PhotoBoardViewAction');">
							</div></td>
					</tr>
				</table>
			</form>
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
