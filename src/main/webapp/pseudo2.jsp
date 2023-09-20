<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pseudo2.jsp</title>
<style type="text/css">
 <%-- 상태 선택자의 +로 css를 적용하려고 할땐 중간에 다른 태그가 있다면 적용되지 않음--%>
/*  input:checked ~ div{   ▶  input태그 속성이 checked가 되면 그 아래의 div속성들만css가 적용   */ 
/*  input:checked + div + span + div {   ▶  input태그의 속성이 checked가 되면 그 바로 아래의 div, 그 바로 아래의 span, 그 바로 아래의 div 엘리먼트에 css가 적용*/ 
 	input:checked + div {   /*input태그의 속성이 checked가 되면 그 바로 아래의 엘리먼트가 div이면 css 적용*/
 	width : 200px;
 	height: 100px;
 	border: 5px solid plum;
 	background: pink;
 	text-align: center;
 } 
</style>

<script type="text/javascript">
</script>
</head>
<body>
<h1>상태 선택자 [Checked]</h1>
<hr>

<input type="checkbox">
<div>box1</div>
<span>box2</span>
<div>box3</div>
</body>
</html>