<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">
<title>샘플</title>
<style>
.box1{ 
		width : 500px;
        height: 200px;
        border:4px solid green;
        text-align: center;
        position:relative
}
.box2{
        height: 100px;
        border:4px solid blue;
        position:absolute;
        top:150px;left:60px  
}
.box3{
		height: 50px;
        border:4px solid blue;
        position:absolute;
        top:50px;left:300px
}
</style>
</head>
<body>
<div>
	<div class="box1">
		BOX1
	</div>
	<div class="box2">
		BOX2
	</div>
	<div class="box3">
		BOX3
	</div>
</div>
</body>
<script type="text/javascript">
	function move() {
		var obj = $("#obj");
		obj.offset({top:500});
		var text = $("#text");
		var type = text.attr("type");
		if(type == "text"){
			text.attr("type","hidden");	
		}
		else{
			text.attr("type","text");
		}
		text.offset({top:100,left:100});
	}
</script>
</html>