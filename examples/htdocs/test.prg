function main()
	
	TEXT TO cHtml
		<html>
		<h1>Hello HBTron!!!<h1>
		<button onclick="goBack()">Go Back</button>
		<script>
			function goBack() {
				window.history.back();
			}
		</script>
		</html>
	ENDTEXT
	?? cHtml
return 