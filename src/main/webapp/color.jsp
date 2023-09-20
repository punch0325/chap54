<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>color.jsp</title>
<style type="text/css">
</style>
</head>
<body style="background-image: url('/img/ManyCat.jpg');">
<h1 style="background: #ff70a685;">Color Code</h1>
<hr>

<%-- 색상 코드를 지정하는 3가지 표현 방법 --%>
<section>
	<div style="background: pink;">Pink</div>
	<div style="background: skyblue;">Blue</div>
	<div style="background: lightgreen;">Green</div>
</section>
<hr>

<article>                                 <%-- HEX 코드로 투명도를 줄 땐 맨 뒤의 2자리(0~100) 숫자로 설정 --%>
	<div style="background: #ff8fab80">Pink</div>
	<div style="background: #abc4ff">Blue</div>
	<div style="background: #a5ffd6">Green</div>
</article>
<hr>

<article>
	<div style="background: rgb(255,143,171)">Pink</div>
													<%-- rgb 코드로 투명도를 줄 때도 맨 뒤의 숫자(0~1)로 투명도를 준다 --%>
	<div style="background: rgba(171,196 , 255 , 0.5)">Blue</div>
	<div style="background: rgb(165 255 214)">Green</div>
</article>
<hr>

</body>
</html>