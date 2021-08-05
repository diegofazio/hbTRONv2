function Main()

   TEMPLATE
<html>
  <head>
    <meta charset="utf-8">
    <title>POST example</title>
  </head>
  <body>
    <form name "test" action method="get">
      User name:
      <br>
      <input type="text" name="username">
      <br>
      Password:
      <br>
      <input type="password" name="passw">
      <br><br>
      <input type="submit" value="Send data" formaction="getpairs.prg">
    </form>
	<button onclick="goBack()">Go Back</button>
	<script>
		function goBack() {
			window.history.back();
		}
	</script>
  </body>
</html>
   ENDTEXT

return nil

