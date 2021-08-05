function casa()

	TEXT TO cHtml
	<html>
	  <head>
		<title>HBTron</title>
		<script type="text/javascript">
		<!--
		  var ws;

		  if ((typeof(WebSocket) == 'undefined') &&
			  (typeof(MozWebSocket) != 'undefined')) {
			WebSocket = MozWebSocket;
		  }

		  function init() {
			ws = new WebSocket('ws://localhost:8002/wsserver.prg');
			ws.onopen = function(event) {
			  document.getElementById("main").style.visibility = "visible";
			  document.getElementById("connected").innerHTML = "Conectado a HBTron WS Server";
			};
			ws.onmessage = function(event) {
			  var oPar = JSON.parse(event.data);
			  document.getElementById("contador").innerHTML = oPar['contador'];
			  document.getElementById("echo").innerHTML = oPar['echo'];
			  document.getElementById("ip").innerHTML = oPar['ip'];		  
			  document.getElementById("protocolo").innerHTML = oPar['protocolo'];		  		  
			};
			ws.onerror = function(event) { alert("Error de recepcion"); };
			ws.onclose = function(event) {
			  ws = null;
			  document.getElementById("main").style.visibility = "hidden";
			  document.getElementById("connected").innerHTML = "Conexion terminada";
			}
		  }

		  function send(tipo,message) {
			if (ws) {
				var msg = {
					type: tipo,
					text: message,
				};
				ws.send(JSON.stringify(msg));
			};
		  };
		  function myFunction() {
			var x = document.getElementById("myInput").value;
			send('echo',x)
		  };
		  
		  function cierra() {
			ws.close();
		  }
		// -->
		</script>
	  </head>
	  <body onload="init();">
		<h1>HBTron WS Server Example</h1>
		<div id="connected">No Conectado</div><div id="ip"></div><div id="protocolo"></div>
		<div id="main" style="visibility:hidden">
			Ingrese Mensaje: <input type="text" id="myInput" oninput="myFunction()"><br/>
			Respuesta ECHO: <div id="echo"></div>
			<button type="button" onclick="send('accion','start')">Start</button>
			<button type="button" onclick="send('accion','stop')">Stop</button>
			<button type="button" onclick="send('accion','reset')">Reset</button>
			<button class="btn" onclick="cierra()">Disconnect</button><br>
			Contador: <div id="contador"></div>
		</div>
	  </body>
	  <button onclick="goBack()">Go Back</button>
	</html>
	<script>
		function goBack() {
			window.history.back();
		}
	</script>

	ENDTEXT
	?? cHtml
return 

