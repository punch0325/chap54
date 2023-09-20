<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>pseudo4.jsp</title>
<style type="text/css">
	:first-of-type {
/* first-of-type은 first-child와는 달리 타입을 고려하기 때문에,
	두번째 자식 엘리먼트라고 하더라도 태그(타입)이 다른 첫 엘리먼트라면 css가 적용 된다.*/
		border: 2px solid pink;
	}
	
	li:first-of-type{
		color : white;
		background-color: black;
	}
	
	li:last-of-type{
		font-family: fantasy;
	}
	
	div > :first-of-type{
		color : white;
		background-color: black;
	}
	
	div > :last-of-type{
		font-style: italic;
	}
</style>
</head>
<body>
<%-- of type은 엘리먼트의 타입까지 고려하여 css를 적용한다. --%>
<h1>구조 선택자</h1>
<h3> - [:first-of-type]</h3> 
<h3> - [:last-of-type]</h3>
<h3> - [:nth-of-type(n)]</h3>
<hr>

<o1>
	<li>Eunbi</li>
	<li>Junseok</li>
	<li>Miso</li>
	<li>Punch</li>
	<li>TenTen</li>
	<li>Solyee</li>
	<li>Sieun</li>
</o1>
<hr>

<div>
	<p>Eunbi</p>
	<h4>Junseok</h4>
	<header>Miso</header>
	<p>Punch</p>
	<p>TenTen</p>
	<header>Solyee</header>
	<h4>Sieun</h4>
</div>
</body>
</html>