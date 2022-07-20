<%@page import="Member.MemberDTO"%>
<%@page import="Member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
form { text-align: center; }
h3 { font-size: 30px; padding-bottom: 50px; }
.btn { width: 110px; height: 30px; margin: auto; text-align: center;
       font-size: 15px; cursor: pointer; color: white; background-color: gray; opacity : 0.8;
       border: none; border-radius: 12px; }
.btn:hover { background-color: black; 
box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19); }
.btn:active {background-color: black;}
footer { width: 100%; height: 20px; position: absolute; bottom: 0; left: 0; }
#wrapper {min-height: 100%; position: relative;}
</style>
</head>
<body>
<script type="text/javascript">
alert('비밀번호 확인이 필요한 페이지입니다')
</script>
<div id="wrapper">
<form action="infocheck.jsp" method="post">
<h3 style="padding-top: 100px;">비밀번호 확인</h3>
<label><b>PW : </b></label><input type="text" name="pwd" placeholder="PASS WORD" 
style="border: none; border-bottom: 1px solid black;">
<br><br>
<a href="infocheck.jsp" style="text-decoration: none; text-align: center;"><input type="submit" class="btn" value="확인"></a>
&nbsp;&nbsp;
<a href="Main.jsp" style="text-decoration: none; text-align: center;"><input type="button" class="btn" value="취소"></a>
</form>
</div>
<footer>
<%@ include file="footer.jsp" %>
</footer>
</body>
</html>