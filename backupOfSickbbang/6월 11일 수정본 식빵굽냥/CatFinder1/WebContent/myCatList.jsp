<%@page contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
<title>식빵굽냥</title>
<script type="text/javascript">
function move(url){
	location.href=url;
}

</script>
</head>
<body>
	<table class="bbs" width="800" height="200" border="2">
    	<colgroup>
     	  <col width="50"/>
      	 <col width="100"/>
      	 <col width="100"/>
      	 <col width="50"/>
    	</colgroup>
	<thead>
    	 <tr>
         	<th style="width: 20%; text-align: center">글 번호</th>
         	<th style="width: 20%; text-align: center">제목</th>
        	<th style="width: 20%; text-align: center">내용</th>
        	<th style="width: 20%; text-align: center">작성지</th>
        	<th style="width: 20%; text-align: center">날짜</th>
    	 </tr>
	</thead>
	<tbody>
     	<tr>
          	<td align="center">3</td>
          	<td align="center">게시판 예시 1</td>
          	<td align="center">3</td>
          	<td align="center">3</td>
          	<td align="center">3</td>
    	 </tr>     
    	 <tr>
          	<td align="center">3</td>
         	 <td align="center">게시판 예시 2</td>
          	<td align="center">3</td>
          	<td align="center">3</td>
          	<td align="center">3</td>
     	</tr> 
     	<tr>
          	<td align="center">3</td>
          	<td align="center">게시판 예시 3</td>
          	<td align="center">3</td>
         	 <td align="center">3</td>
          	<td align="center">3</td>
     	</tr> 
	</tbody>
	<tfoot>
    	<tr>
    	<td align="center" colspan="5">1</td>
    	</tr>
	</tfoot>    
</table>
<input type="button" value="처음으로" onclick="move('registAndSearch.jsp');"/>
<!-- <input type="button" value="글쓰기" onclick="move('myCat.jsp');"/>  -->
		
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