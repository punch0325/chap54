<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pseudo3.jsp</title>
<style type="text/css">
	:first-child {   /*지금 이 파일에서의 first-child :  [html, head, meta, h1, li, p] */
		border: 5px solid hotpink;
	}
	
	:last-child { /*지금 이 파일에서의 last-child : [html, style, body, li, h1, script]*/
		border: 3px solid lightblue;
	}
	
	li:nth-child(3n+1) {
	    /*nth-child는 괄호안에 들어가는 숫자에 따라 css 적용 범위가 달라진다. 
	    	숫자 및 수열만 가능하며 n에는 0부터 차례대로 숫자가 들어온다.
	    	즉 현재 3n+1은 차례대로 3x0+1 -> 3x1+1 -> 3x2 +1..... 이런 순서대로 적용된다. */
		text-decoration: line-through;
	}
	
	li:nth-last-child(2) {
		/*nth-last-child는 뒤에서부터 숫자 및 수열 조건에 따라 css가 적용됨*/
		font-size: 2em;
		font-family: fantasy;		
	}

	div > :nth-child(2n){
		color: white;
		background-color: black;
	}
	
</style>
</head>
<body>
<h1>구조 선택자</h1>
<h3> - [:first-child]</h3>
<h3> - [:last-child]</h3>
<h3> - [:nth-child(n)]</h3>
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
	<h1>Junseok</h1>
	<header>Miso</header>
	<p>Punch</p>
	<p>TenTen</p>
	<header>Solyee</header>
	<h1>Sieun</h1>
</div>
</body>
</html>