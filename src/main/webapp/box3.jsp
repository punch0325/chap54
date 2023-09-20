<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>box2.jsp</title>
<style type="text/css">

 	header > div{
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


	header ~ div{
		margin:20px;
		padding : 0px;
		width : 
	}

</style>
<script type="text/javascript">
	window.onload=function(){
		
		let divs = document.querySelectorAll("header > div");
		console.log(divs);
		
		divs.forEach(function(div) {
			div.onmousedown=function(e){
				let clientWidth=0;
				let offsetWidth=0;
				let style = getComputedStyle(div);
				
				clientWidth = style.paddingLeft + style.width + style.paddingRight;
			// css 값 만으로 길이의 값을 더하려면 css는 문자열로 나오기 때문에 수치값으로 나올 수 있게 해주어야함
				console.log(clientWidth);
				console.log(`\${div.clientWidth}`); //backtick사용 중

				e.preventDefault();	 // 이벤트 함수의 기본 기능을 막는 메소드	
			}
		});
		
	}
</script>
</head>
<body>
<header>
	<diV>box1</diV>
	<diV>box2</diV>
	<diV>box3</diV>
</header>

<hr>
</body>
</html>