<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>anchor.jsp</title>
<style type="text/css">
	a:link{    /*link를 들어간 적이 없을 때*/
		color: red;
		text-decoration: none;
	}
	
	a:visited{   /*link를 들어갔을 때*/
		color: black;
	}
	
	p::first-letter {  /*첫번째 글자에만 css 적용*/
		font-size:2em;
		color: pink;
	}
	
	p::first-line{
		text-decoration: overline;
	}
	
	p:selection{
		color:red;
		text-decoration: overline;
	}
	
</style>
</head>
<body>
<h1> < a태그 href속성 ></h1>
<hr>

<a href="http://www.soen,kr">Seon</a>
<a href="http://www.nate.com">Nate</a>
<a href="http://www.naver.com">Naver</a>
<a href="http://www.google.com">Google</a>

<p>Hello</p>
<br>
<p>Hello</p>
</body>
</html>