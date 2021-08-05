function main()

	local hPairs := HW_GetPairs()
	if Len( hPairs ) == 0
	  ? "This example is used from get.prg"
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
