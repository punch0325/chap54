<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu2.jsp</title>
<style type="text/css">
ul{
	list-style: none;
	font-style: italic;
	
	width: 1000px;  /*ul에 width를 주면 웹 화면 크기를 줄여도 목록들이 아랫줄로 내려가지 않음*/
}

li{
	border: 1px solid #B0E0E6;
	padding : 3px;
	margin: 3px;
	width: 12%;
	text-align: center;
	
	float: left;
}

li:nth-child(n+9) {
 	background-color: #B0E0E6;	
}

li > a{
	text-decoration: none;
	color : black;
}

/*문자 선택자 (::)*/
a::after {
	content:"☕";
}

a::before{
	content:"▫";
}

h1::before{
	background-image: url('/img/ManyCat.jpg');
}
</style>
</head>
<body>
<h1>MENU LIST</h1>
<hr>

<ul>
	<li><a href="https://paikdabang.com/menu/menu_coffee/">Americano</a></li>
	<li><a href="https://paikdabang.com/menu/menu_coffee/">Latte</a></li>
	<li><a href="https://paikdabang.com/menu/menu_coffee/">macchiato</a></li>
	<li><a href="https://paikdabang.com/menu/menu_coffee/">Smootie</a></li>
	<li><a href="https://paikdabang.com/menu/menu_coffee/">mocha</a></li>
	<li><a href="https://paikdabang.com/menu/menu_coffee/">Flat white</a></li>
	<li><a href="https://paikdabang.com/menu/menu_coffee/">Espresso</a></li>
</ul>
</body>
</html>