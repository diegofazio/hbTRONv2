//----------------------------------------------------------------//

function Main()
   
   ? "<h2>Reading the cookies</h2>"
   ?
   ? Time(), '<hr>'
   
   ? 'cookies: ', HW_GetCookies()

   TEMPLATE 
		<button onclick="goBack()">Go Back</button>
		<script>
			function goBack() {
				window.history.back();
			}
		</script>
		</html>
   ENDTEXT

return nil

