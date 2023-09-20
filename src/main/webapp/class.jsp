<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>class.jsp</title>
<style type="text/css">
	.box{ /*클래스 선택자는 온점을 앞에 붙인다. 클래스 선택자는 하나의 엘리먼트가 여러개 가질 수 있음*/
		width :100px;
		height : 100px;
		text-align: center;
	}
	
	.circle{
		border-radius: 50px;
	}
	
	.pink{
		border : 3px solid pink;
	}
	
	.lime{
		border : 3px solid lime;
	}
	
	.plum{
		border : 3px solid plum;
	}
	
	input[value='box']{ /*속성 선택자*/
		width:50px;
	}
</style>

<script type="text/javascript">
window.onload=function(){
/* input 태그의 box속성 엘리먼트를 boxs 변수에 넣음*/
	let boxs = document.querySelectorAll("input[value='box']");	
/*boxs가 유사배열이기 때문에 forEach를 사용하여 반복을 돌려준다. */
	boxs.forEach(function(elt, i, array) { // elt : 엘리먼트
	/*엘리먼트(여기선 boxs)가 바뀌면 이벤트 함수 실행*/
		elt.onchange=function(){
		  /* 엘리먼트의 부모(여기선 box라는 값을 가진 input태그를 감싸는 div태그)의 형제엘리먼트의 값을 가져옴*/
			let box = elt.parentElement.nextElementSibling;
		  	let parent = elt.parentElement;

			if (elt.checked)
				box.classList.add('box'); // classList.add 메소드로 box클래스를 추가
			else
				box.classList.remove('box'); // classList.remove 메소드로 box클래스를 삭제
		}
	});
	
	
	
	
	let circles = document.querySelectorAll("input[value='circle']");
	circles.forEach(function(elt, i, array) { // eit : 엘리먼트
		elt.onchange=function(){
			let circle = elt.parentElement.nextElementSibling;
				
			if (elt.checked)
				circle.classList.add('circle'); 
			else
				circle.classList.remove('circle');	
		}
	});
	
	
	
// 	let colors = document.querySelectorAll( `/*back tick 사용중*/
// 			input[name='color1'],
// 			input[name='color2'],
// 			input[name='color3'],
// 			input[name='color4']
// 	`);
// 	let colors = document.querySelectorAll("input[name*='color']"); ▶ color를 포함하는 모든 name
	let colors = document.querySelectorAll("input[name^='color']"); // ▶ color로 시작하는 모든 name(끝은 $임)
	console.log(colors);
	colors.forEach(input=>{
		input.onchange = e=>{
			let box = input.parentElement.nextElementSibling;
			box.classList.remove('pink');
			box.classList.remove('lime');
			box.classList.remove('plum');
			box.classList.add(input.value);
		}
	});
}
</script>
</head>
<body>
<h2>Class 선택자</h2>
<hr>

<div>
<lable>box</lable><input type="checkbox" value="box">
<label>circle</label><input type="checkbox" value="circle">
<label>pink</label><input type="radio" value="pink" name="color1">
<label>lime</label><input type="radio" value="lime" name="color1">
<label>plum</label><input type="radio" value="plum" name="color1">
</div>
<div id="box1">box1</div>
<br>

<div>
<lable>box</lable><input type="checkbox" value="box">
<label>circle</label><input type="checkbox" value="circle">
<label>pink</label><input type="radio" value="pink" name="color2">
<label>lime</label><input type="radio" value="lime" name="color2">
<label>plum</label><input type="radio" value="plum" name="color2">
</div>
<div id="box2">box2</div>
<br>

<div>
<lable>box</lable><input type="checkbox" value="box">
<label>circle</label><input type="checkbox" value="circle">
<label>pink</label><input type="radio" value="pink" name="color3">
<label>lime</label><input type="radio" value="lime" name="color3">
<label>plum</label><input type="radio" value="plum" name="color3">
</div>
<div id="box3">box3</div>
<br>

<div>
<lable>box</lable><input type="checkbox" value="box">
<label>circle</label><input type="checkbox" value="circle">
<label>pink</label><input type="radio" value="pink" name="color4">
<label>lime</label><input type="radio" value="lime" name="color4">
<label>plum</label><input type="radio" value="plum" name="color4">
</div>
<div id="box4">box4</div>
</body>
</html>