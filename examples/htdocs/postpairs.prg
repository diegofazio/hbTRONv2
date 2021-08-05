function main()

	local hPairs := HW_PostPairs()
	if Len( hPairs ) == 0
	  ? "This example is used from post.prg"
	else
	  ? ValToChar( hPairs )
	endif
	TEMPLATE
		<button onclick="goBack()">Go Back</button>
		<script>
			function goBack() {
				window.history.back();
			}
		</script>
	ENDTEXT
   

return nil
