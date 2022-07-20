<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기 페이지</title>
<style type="text/css">
footer { width: 100%; height: 20px; position: absolute; bottom: 0; left: 0; }
#wrapper {min-height: 100%; position: relative;}
h3 { font-size: 30px; padding-bottom: 50px; }
.btn { width: 110px; height: 30px; margin: auto; text-align: center;
       font-size: 15px; cursor: pointer; color: white; background-color: gray; opacity : 0.8;
       border: none; border-radius: 12px; }
form { text-align: center; }
.input { text-align: center; }
</style>
</head>
<body>
<script type="text/javascript">
alert('비밀번호 찾기 페이지로 이동합니다');
</script>
<form name="pwdfindscreen" method="post">
 <div class="search-title" id="wrapper">
   <h3 style="padding-top: 70px;">비밀번호 찾기</h3>
<section>
 <div class="input">
   <label style="display: block; "><b>Name</b></label><br>
   <input type="text"  style=" padding-top: 10px; border: none; border-bottom: 1px solid black; " id="name" name="name" placeholder="Input Name" class="text_name">
 </div>
<br>
 <div class="input">
   <label style="display: block;"><b>ID</b></label><br>
   <input type="text" style=" padding-top: 10px; border: none; border-bottom: 1px solid black;" id="id" name="id" placeholder="Input ID" class="text_id">
 </div>
<br>
</section>
 <div class="btn">
   <a><input type="submit" name="enter" value="비밀번호 조회" onclick="pwd_search()"></a>
   <input type="button" name="cancle" value="취소" onclick="history.back()">
 </div>
 </div>
</form>
<script type="text/javascript">
function pwd_search() {
	var pw = document.pwdfindscreen;
	
	if(document.getElementById('name').value == ""){
		alert("이름을 입력해주세요");
		name.focus();
	    return;
	}
	if(document.getElementById('id').value == ""){
	    alert("아이디를 입력해주세요");
	    id.focus();
	    return;
	}
	
	pw.method="post";
	pw.action="pwdchk.jsp";
	pw.submit();	
}
</script>
<footer>
<%@ include file="../footer.jsp" %>
</footer>
</body>
</html>