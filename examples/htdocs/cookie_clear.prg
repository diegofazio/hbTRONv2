//----------------------------------------------------------------//

function Main()
	
   ? "<h2>Clearing a cookie</h2>"
   ? ""
   HW_SetCookie( 'HBTronCookie' )
   ? 'cookie cleared! '
   TEMPLATE 
		<br>
		<button onclick="goBack()">Go Back</button>
		<script>
			function goBack() {
				window.history.back();
			}
		</script>
		</html>
   ENDTEXT

return nil

