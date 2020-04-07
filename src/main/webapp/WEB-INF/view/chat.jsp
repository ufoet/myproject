<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	textarea {
		font-size: 20px;
		color : blue;
	}
</style>

</head>

<script type="text/javascript">
	var ws;
	function connectWs() {
		ws = new WebSocket('ws://' + location.host + '/chat');
		ws.onmessage = function(data) {
			console.log(data.data);
			/* $("<p>"+data.data+"</p>").prependTo('#chat'); */
			$("#arr9").val(data.data);
			$("#test").val("");
			for(var i=0;i<10;i++){
				$("#test").val($("#test").val() + $("#arr"+i).val() + "\n");
			}
			for(var i=0;i<9;i++){
				$("#arr"+i).val($("#arr"+(i+1)).val());
			}
		}
		$('#startBtn').hide();
	}

	function send() {
		ws.send($("#chatting").val());
		$('#chatting').val("");
	}
</script>

<body>
<!-- 	<div>
		<img src="static/img/test.png">
	</div> -->
	<h1>채팅 방 입니다</h1>
	<button onclick="connectWs()" id="startBtn"> 채팅 시작하기</button>
	<input id="chatting"></input><button onclick="send()"> 보내기 </button>
	<div>
		<p id="chat"></p>
	</div>
	<div>
		<textarea rows="10" cols="30" id = "test"></textarea>
	</div>
	<%for(int i=0;i<10;i++){%>
		<div>
			<input type="hidden" id = "arr<%=i%>"/>
		</div>
	<%}%>
</body>
</html>

