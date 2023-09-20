<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pseudo.jsp</title>
<style type="text/css">
input:focus{ /*포커스가 된 상태이면 css가 적용*/
	border: 5px solid plum; 
}

a:active { /*포커스가 지속된 상태이면 css적용(ex. 마우스로 누르고 있을때)*/
	color: lime;
	font-size: 1.1em;
}

div:hover{ /*커서가 위에 올라가면 css 적용*/
	background : lightblue;
}

input:disabled {
	background: darkgray;
}

input:enabled {
	background: lightyellow;
}
</style>

<script type="text/javascript">
</script>
</head>
<body>
<input disabled="disabled">
<input disabled="disabled">
<input>  <!-- 기본이 enabled  -->
<input>
<div>box1</div>
<div>box2</div>
<div>box3</div>
<br>
<a href="">www.naver.com</a>
</body>
</html>