//----------------------------------------------------------------//

function Main()
	
   ? "<h2>Creating a cookie 'HBTronCookie for 60sec expiration time'</h2>"
   ? ""
   HW_SetCookie( 'HBTronCookie', hb_datetime() , 60 )
   ? 'cookie created! ', hb_datetime()
   ? ""
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

