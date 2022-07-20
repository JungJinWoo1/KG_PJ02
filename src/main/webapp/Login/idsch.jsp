<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<form name="idfindscreen" method="post">
   <div class="search-title">
     <h3>아이디 찾기</h3>
   </div>
   <section class="form-search">
   <div class="input_name">
     <label>이름</label>
     <input type="text" id="name" name="name" placeholder="이름" class="text_name">
   </div>
     <br>
   <div class="input_tel">
     <label>번호</label>
     <input type="text" name="tel" onkeyup="addHypen(this);" placeholder="휴대폰 번호를'-'없이 입력" class="text_tel">
   </div>
     <br>
   </section>
   <div class="btnSearch">
     <input type="button" name="enter" value="아이디 조회" onclick="id_search()">
     <input type="button" name="cancle" value="취소" onclick="history.back()">
   </div>
</form>
<script type="text/javascript">
function id_search(){
	var frm = document.idfindscreen;
	
	if (document.getElementById('name').value == "") {
		  alert("이름을 입력해주세요");
		  name.focus();
		  return;
		 }

		 if (frm.tel.value.length != 13) {
			  alert("핸드폰번호를 정확하게 입력해주세요");
			  tel.focus();
			  return;
		 }

	 frm.method = "post";
	 frm.action = "idchk.jsp";
	 frm.submit();  
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

</body>
</html>