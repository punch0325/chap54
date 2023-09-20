<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>decentant.jsp</title>
<style type="text/css">
  /* >(꺽쇠)가 있으면 직계 자식! 콤마(,)도 없고 꺽쇠(>)도 없으면 모든 후손 엘리먼트*/
  /* 속성 선택자는 대괄호안에 쓴다([])*/
body > div > div{
	border: 2px solid plum;
}

div > div[id]{ /*div의 div자식들 중 id 값이 있는 엘리먼트에만 적용*/
	text-decoration: line-through;
}

div > div[id^='b']{ /* div의 div 직계 자식 중  id값이 b로 시작하는 엘리먼트에만 적용*/
	font-size : 2em;
}

div div[id^='b']{ 
	color : pink;
}
</style>

<script type="text/javascript">
window.onload=function(){

}
</script>
</head>
<body>
<h2>후손과 자손 선택자</h2>
<hr>

<div> <!-- 부모 div -->
	<div>box1</div> <!-- 자식이자 후손1 div -->
	<div> <!-- 자식이자 후손2 div  -->
		<div id="box1_1">box1_1</div> <!-- 후손1 div -->
		<div id="box1_2">box1_2</div> <!-- 후손2 div -->
	</div>
	
	<div>box2</div> <!-- 자식이자 후손3 div -->
	<header> <!-- 자식이자 후손4 header -->
		<div id="b2_1">box2_1</div> <!-- 후손3 div -->
		<div id="b2_2">box2_2</div> <!-- 후손4 div -->
		<div id="b2_3">box2_3</div> <!-- 후손5 div -->
	</header>
</div>
</body>
</html>