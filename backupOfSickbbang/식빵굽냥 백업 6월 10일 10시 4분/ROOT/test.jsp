<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


<a href="#" onclick="HandlePopupResult()"> OPEN </a>

<!DOCTYPE HTML>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script>
			function HandlePopupResult(result){
				var authWindow = window.open('/naverMapTest.jsp','authWindow');
				alert("result of popup is: " + result);
			}
			</script>

	</body>
</html>
