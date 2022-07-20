<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<style type="text/css">
.txt1 { text-align: center; min-height: 100%; position: relative; }
h3 { font-size: 40px; text-align: center; padding-bottom: 20px; padding-top: 100px;}
.btn { width: 210px; height: 40px; margin: auto; display: block; text-align: center;
       font-size: 18px; cursor: pointer; color: white; background-color: black;
       border: gray; }
label { text-align: center; }
footer { width: 100%; height: 20px; position: absolute; bottom: 0; left: 0; }
img { position: absolute; left: 100px; top: 0; z-index: 1; cursor: pointer; padding-top: 30px; }
</style>
</head>
<body>
<header>
<form action="Main.jsp">
<a href="Main.jsp"><img alt="img" src="3.png" width="120" height="120"></a>
</form>
</header>
<section class="create">
<form id="fo" action="save.jsp" method="post">
 <h3>My pet</h3>
 <div class="txt1" >
 <div class="txt1-1">
 <input type="text" name="name" placeholder="이름" style="border : none; border-bottom : 1px solid black; width:200px; padding-bottom: 10px;"><br>
 <input type="text" name="id" id="id" placeholder="아이디" style="border : none; border-bottom : 1px solid black;width:200px; padding-bottom: 10px;"><br>
 <input type="text" name="pwd" id="pwd" placeholder="비밀번호" style="border : none; border-bottom : 1px solid black;width:200px; padding-bottom: 10px;"><br>
 <input type="text" id="pwd2" onchange="pwdchk()" placeholder="비밀번호 확인" style="border : none; border-bottom : 1px solid black;width:200px; padding-bottom: 10px;"><br>    
 <input type="text" name="addr" placeholder="주소" style="border : none; border-bottom : 1px solid black;width:200px; padding-bottom: 10px;"><br>    
 <input type="text" name="tel"onkeyup="addHypen(this);" placeholder="휴대폰 번호를'-'없이 입력" style="border : none; border-bottom : 1px solid black;width:200px; padding-bottom: 10px;"><br>
 </div>
 <br><br>
 <label id="label" style="font-size: 20px;">비밀번호 확인</label><br><br><br>
 <input type="button" class="btn" onclick="chk()" value="회원가입"><br>
 
  </div>
</form>
</section>
<script type="text/javascript">
let pwd1 = document.getElementById("pwd")
let pwd2 = document.getElementById("pwd2")
function pwdchk(){
	let label = document.getElementById("label")
	if(pwd.value == pwd2.value){
		label.innerHTML = "<b>일치합니다</b>"
	}else{
		label.innerHTML = "<b style='color:red;'>비밀번호 확인!!</b>"
		pwd.value=""
		pwd2.value=""
		pwd.focus()
	}
}
function chk(){
	let id = document.getElementById("id")
	if(id.value == ""){
		alert('아이디를 입력해주세요')
		id.focus()
		return;
	}else if(pwd.value == ""){
		alert('비밀번호를 입력해주세요')
		pwd.focus()
	}else{
		fo.submit()
	}
}
function addHypen(obj) {
    var number = obj.value.replace(/[^0-9]/g, "");
    var phone = "";

    if(number.length < 4) {
        return number;
    } else if(number.length < 7) {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3);
    } else if(number.length < 11) {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 3);
        phone += "-";
        phone += number.substr(6);
    } else {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 4);
        phone += "-";
        phone += number.substr(7);
    }
    obj.value = phone;
}
</script>
<footer>
<%@ include file="footer.jsp" %>
</footer>
</body>
</html>