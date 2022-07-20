<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style>
		img{ width:100px;  height:100px;}
		#picArrow{ position:relative; top:35%; width:50px;  height:50px; }
		table {margin: 0 auto;}
	</style>

	<script>
		var list=[ "pet1", "pet2", "pet3", "pet4", "pet5", "pet6", "pet7", "pet8" ];
		var x = 0, y=1, z=2;
	
		function prev() {
			if(x == 0) {
				x = list.length-1;
			}else {
				x = x-1;
			}
			document.getElementById("pic1").src="./resources/images/"+list[x]+".jpg";
			
			if(y == 0) {
				y = list.length-1;
			}else {
				y = y-1;
			}
			document.getElementById("pic2").src="./resources/images/"+list[y]+".jpg";
			
			if(z == 0) {
				z = list.length-1;
			}else {
				z = z-1;
			}
			document.getElementById("pic3").src="./resources/images/"+list[z]+".jpg";
		}
		
		function next() {
			if(x == list.length-1) {
				x = 0;
			}else {
				x = x+1;
			}
			document.getElementById("pic1").src="./resources/images/"+list[x]+".jpg";
			
			if(y == list.length-1) {
				y = 0;
			}else {
				y = y+1;
			}
			document.getElementById("pic2").src="./resources/images/"+list[y]+".jpg";
			
			if(z == list.length-1) {
				z = 0;
			}else {
				z = z+1;
			}
			document.getElementById("pic3").src="./resources/images/"+list[z]+".jpg";
		}
		
		var stopVal;
		var bool = true
		function auto(){
			if(x == list.length-1) {
				x = 0;
			}else {
				x = x+1;
			}
			
			if(bool){
				document.getElementById("pic1").src="./resources/images/"+list[x]+".jpg";
			}else{
				bool = !bool
				x--;
				y--;
				z--;
			}
			
			if(y == list.length-1) {
				y = 0;
			}else {
				y = y+1;
			}
			
			if(bool){
				document.getElementById("pic2").src="./resources/images/"+list[y]+".jpg";
			}
			
			if(z == list.length-1) {
				z = 0;
			}else {
				z = z+1;
			}
			
			if(bool){
				document.getElementById("pic3").src="./resources/images/"+list[z]+".jpg";
			}
			
			stopval = setTimeout("auto()",1000)
		}
		
		function stop(){ 
			clearTimeout(stopval); bool = false
			}
	</script>

</head>
<body onload="auto()">

	<%@include file="header.jsp" %>
	
	<h1 align="center"> 환영합니다!!</h1>
	<br><br><br><br><br><br>
	
		<table>
			<tr>
				<td>
					<div onmouseover="stop()" onmouseout="auto()">
						<img id="picArrow" src="./resources/images/왼쪽화살표.jpg" onClick="prev()"/>
					</div>
				</td>
				<td>
					<img src="./resources/images/pet1.jpg" id="pic1"/>
					<img src="./resources/images/pet1.jpg" id="pic2"/>
					<img src="./resources/images/pet1.jpg" id="pic3"/>
				</td>
				<td>
					<div onmouseover="stop()" onmouseout="auto()">
						<img id="picArrow" src="./resources/images/오른쪽화살표.jpg" onClick="next()"/>
						</div>
				</td>
			</tr>
		</table>
	<%@include file="footer.jsp" %>

</body>
</html>