<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
<style type="text/css">
 	*{  <%--   * : jsp 파일에 있는 모든 엘리먼트(태그)--%>
		
		padding : 10px; /*내부 영역 공간 늘리기*/	
	}
	
	td{
		border: 1px solid plum;
	}
	
	#heading, td{
		text-decoration: underline;
	}
	
	table td{
		text-shadow: 3px 4px 5px pink;

</style>
<script type="text/javascript">

function setRegions(regions){
	console.log(regions);
	let region = document.forms[0].region;
	region.innerText = "";	
	
	let regionParam = new URL(location.href).searchParams.get('region');
	
	let option = document.createElement('option');
	option.value='';
	option.innerText = '전체';
	if(regionParam == null || regionParam =='')
		option.selected = true;
	region.append(option);
	
	for (let r of regions){
		let option = document.createElement('option');
		option.value = r;
		option.innerText = r;
		if(r == regionParam)
			option.selected='selected';
		region.append(option);
	}
}

window.onload=function(){
	let continent = document.forms[0].continent;
	
	continent.onchange = function(){
		let xhr = new XMLHttpRequest();		
		xhr.open('GET' , `/country/regions?continent=\${continent.value}`); // back tick 사용중
		xhr.send();
		xhr.onload = e => {
			setRegions(JSON.parse(xhr.responseText));
		}
	}
	
	continent.onchange();
	
}
</script>
</head>
<body>
<h1 id="heading" style="font-family: fantasy;">C O U N T R Y - L I S T</h1>
<hr>
<form action="/country/list">
	<select name="continent" id="continent">
		<c:choose>
			<c:when test="${empty param.continent}">
				<option value="" selected="selected">전체</option>
			</c:when>
			<c:otherwise>
				<option value="">전체</option>
			</c:otherwise>
		</c:choose>
		<c:forEach var="continent" items="${continents}">
		<c:choose>
			<c:when test="${param.continent eq continent}">
				<option value="${continent}" selected="selected">${continent}</option>
			</c:when>
			<c:otherwise>
				<option value="${continent}">${continent}</option>
			</c:otherwise>
		</c:choose>
		</c:forEach>	
	</select>
	
	<select name="region">
		<!-- option은 자바스크립트에서 ajax를 이용하여 만들었음 -->
	</select>
	<input type="submit" value="조회">
</form>
<table border="1">
	<thead>
		<tr>
			<th>no.</th>
			<th>code</th>
			<th>name</th>
			<th>continent</th>
			<th>region</th>
			<th>surfaceArea</th>
			<th>indepYear</th>
			<th>population</th>
			<th>lifeExpectancy</th>
			<th>gnp</th>
			<th>gnpOld</th>
			<th>localName</th>
			<th>governmentForm</th>
			<th>headOfState</th>
			<th>capital</th>
			<th>code2</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="c" items="${list}" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td>${c.code}</td>
				<td>${c.name}</td>
				<td>${c.continent}</td>
				<td>${c.region}</td>
				<td>${c.surfaceArea}</td>
				<td>${c.indepYear}</td>
				<td>${c.population}</td>
				<td>${clifeExpectancy}</td>
				<td>${c.gnp}</td>
				<td>${c.gnpOld}</td>
				<td>${c.localName}</td>
				<td>${c.governmentForm}</td>
				<td>${c.headOfState}</td>
				<td>${c.capital}</td>
				<td>${c.code2}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>