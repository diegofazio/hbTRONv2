function ws()

	LOCAL oEchoClient 
	LOCAL msg
	local hSocket
	local aParams := hb_aparams()
	hSocket := aParams[1]
	
	contador := 0
	oDATA	:= { => }
	oMsg	:= { => }
	echo	:= ""
	pause := .t.

	oEchoClient := HW_WebSocketClient():New( hSocket )
	oMsg['ip'] = "IP: " + oEchoClient:userIp()
	oMsg['protocolo'] = "Protocolo: " + oEchoClient:protocol()	
	oMsg['echo'] = ""
	oMsg['contador'] = alltrim(str(contador))
	
	oEchoClient:sendText( hb_jsonEncode(oMsg,.t.))	
	
	while oEchoClient:isConnected()
	
		if (oEchoClient:onMessage(@msg))
			hb_jsonDecode( msg, @oData ) 		
			if oData['type'] == 'echo'
				oMsg['echo'] = oData['text']
				oMsg['contador'] = alltrim(str(contador))
				echo = oMsg['echo']
				oEchoClient:sendText( hb_jsonEncode(oMsg,.t.))
			endif
			if oData['type'] == 'accion'
				if oData['text'] == 'start'
					pause = .f.
				endif
				if oData['text'] == 'stop'
					pause = .t.
				endif
				if oData['text'] == 'reset'
					contador = 0
					oMsg['echo'] = echo
					oMsg['contador'] = alltrim(str(contador))
					oEchoClient:sendText( hb_jsonEncode(oMsg,.t.) )					
				endif
			endif
		endif
		if !pause
			oMsg['echo'] = echo
			oMsg['contador'] = alltrim(str(contador))
			oEchoClient:sendText( hb_jsonEncode(oMsg,.t.) )
			contador++
		endif

		ws_sleep(50000)

	enddo
	
return nil

