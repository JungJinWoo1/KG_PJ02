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
section { text-align: center; }
h2 { text-align: center; font-size: 30px; }
h3 { font-size: 40px; text-align: center; padding-bottom: 20px; padding-top: 100px;}
.txt { border-radius: 12px; }
label { position: relative;  display:block;}
header { padding-bottom: 100px; }
</style>
</head>
<body>
<header>
<form action="Main.jsp">
<a href="../Main.jsp"><img alt="img" src="../resources/images/pet_foot.png" width="120" height="120"></a>
</form>
</header>
   <%
   MemberDAO dao = new MemberDAO();
   MemberDTO dto = dao.info((String)session.getAttribute("login"));
   %>
<section class="mypage">
<fieldset>
<legend style="font-size: 25px; text-align: left; padding-left: 20px; padding-right: 20px;"><b>Mypage</b></legend>
<form action="modify.jsp" method="post">
<div class="info">
<label>아이디 : </label><input type="text" class="txt" name="id" readonly value="<%=dto.getId()%>"><br>
<label>비밀번호 : </label><input type="text" class="txt" name="pwd" value="<%=dto.getPwd()%>"><br>
<label>이름 : </label><input type="text" class="txt" name="name" value="<%=dto.getName()%>"><br>
<label>주소 : </label><input type="text" class="txt" name="addr" value="<%=dto.getAddr()%>"><br>
<label>전화번호 : </label><input type="text" class="txt" name="tel" value="<%=dto.getTel()%>"><br>
</div>
<input type="submit" value="수정">
<input type="button" value="회원탈퇴" onclick="location.href='delete.jsp?del=<%=dto.getId()%>'">
</form>
</fieldset>
</section>
</body>
</html>