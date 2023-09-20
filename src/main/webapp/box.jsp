<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>box.jsp</title>
<style type="text/css">

 	div{
 		border-top:3px solid pink;
 		border-bottom: 3px solid lightblue;
 		border-left : 3px solid pink;
 		border-right: 3px solid lightblue;
 		border-radius: 10px;
 		width: 100px;
 		height: 100px;
 		padding: 10px;
 		margin: 10px;
 	}

	header{
		border: 10px solid plum;
		padding: 10px;
	}
	/*
		getComputedStyle ▶ 스타일을 알아내는 법
		예 ) getComputedStyle(div).background
	*/
</style>
</head>
<body>
<header>
	<diV>box1</diV>
	<diV>box2</diV>
	<diV>box3</diV>
</header>
</body>
</html>