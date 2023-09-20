<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu.jsp</title>
<style type="text/css">
ul{
	list-style: none;
	font-style: italic;

}

li{
	border: 1px solid #B0E0E6;
	padding : 3px;
	margin: 3px;
	width: 30%;
	text-align: center;
}

li > a{
	text-decoration: none;
	color : black;	
}

li:nth-last-child(n+5){
	color : #ffffff
}

li:nth-child(n+9) {
 	background-color: #B0E0E6;
}

li > a:hover {
 	color: #ffffff;	
}

li:hover:nth-last-child(n+6) {
 	background-color: #8BD2DA;
}
</style>
</head>
<body>
<h1>MENU LIST</h1>
<hr>

<ul>
	<li><a href="https://paikdabang.com/menu/menu_coffee/">Americano</a></li>
	<li><a href="https://paikdabang.com/menu/menu_coffee/">Latte</a></li>
	<li><a href="https://paikdabang.com/menu/menu_coffee/">Cappuccino</a></li>
	<li><a href="https://paikdabang.com/menu/menu_coffee/">Caramel macchiato</a></li>
	<li><a href="https://paikdabang.com/menu/menu_coffee/">Cafe au lait</a></li>
	<li><a href="https://paikdabang.com/menu/menu_coffee/">Cafe mocha</a></li>
	<li><a href="https://paikdabang.com/menu/menu_coffee/">Flat white</a></li>
	<li><a href="https://paikdabang.com/menu/menu_coffee/">Espresso</a></li>
	<li><a href="https://paikdabang.com/menu/menu_drink/">Milk</a></li>
	<li><a href="https://paikdabang.com/menu/menu_drink/">Ade</a></li>
	<li><a href="https://paikdabang.com/menu/menu_drink/">Shake</a></li>
	<li><a href="https://paikdabang.com/menu/menu_drink/">Smoothie</a></li>
	<li><a href="https://paikdabang.com/menu/menu_dessert/">Dessert</a></li>
</ul>
</body>
</html>