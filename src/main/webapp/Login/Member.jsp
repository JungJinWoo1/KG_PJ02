<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style type="text/css">
font-family : 'Do Hyeon', sans-serif;
.login { width: 300px; text-align: center; border: black; }
.btn { width: 210px; height: 40px; margin: auto; display: block; text-align: center;
       font-size: 18px; cursor: pointer; color: white; background-color: black;
       border: gray; }
.input { text-align: center; }
.idpw { padding: 20px 10px 10px; background-color: transparent; border: none; 
        font-size: 18px; outline: none; }
form { padding-top:0px; padding-bottom: 20px;}
h1 { font-size: 50px; }
footer { width: 100%; height: 20px; position: absolute; bottom: 0; left: 0; }
#wrapper {min-height: 100%; position: relative;}
img { position: absolute; left: 100px; top: 0; z-index: 1; cursor: pointer; padding-top: 30px; } 

</style>
</head>
<body>
<header>
<form action="../Main.jsp">
<a href="../Main.jsp"><img alt="img" src="../resources/images/pet_foot.png" width="120" height="120"></a>
</form>
</header>
<section>
<div class="login" id="wrapper">
     <h1 align="center">Login</h1>
     <form class="input" name="logintab" method="post">
     <div class="idpw">
     <input class="idpw" type="text" id="id" name="id" placeholder="ID" style="width: 200px; height: 15px; border-bottom: 1px solid black; " autocomplete="off" required><br>
     <input class="idpw" type="text" id="pwd" name="pwd" placeholder="PW" style="width: 200px; height: 15px; border-bottom: 1px solid black; " autocomplete="off" required><br>
     </div>
     <br>    
     <input class="btn" name="loginbtn" type="button" value="LOGIN" onclick="check()"><br>
     <a href="create.jsp" style="color: black; text-decoration: inherit;">회원가입</a>&nbsp;&nbsp;&nbsp;&nbsp;
     <a href="search.jsp" style="color: black; text-decoration: inherit;">ID/PW찾기</a>
     </form>
</div>
</section>
<script type="text/javascript">
function check(){
	var fo = document.logintab;
		
		if (document.getElementById('id').value == "") {
			  alert("아이디를 입력해주세요");
			  id.focus();
			  return;
			 }

			 if (document.getElementById('pwd').value == "") {
				  alert("비밀번호를 입력해주세요");
				  pwd.focus();
				  return;
			 }
			 
		 fo.method = "post";	 
		 fo.action = "check.jsp";
		 fo.submit(); 
	}
</script>
<footer>
<%@ include file="../footer.jsp" %>
</footer>
</body>
</html>