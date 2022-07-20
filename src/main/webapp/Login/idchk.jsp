<%@page import="Member.MemberDTO"%>
<%@page import="Member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    
    String name = request.getParameter("name");
    String tel = request.getParameter("tel");
    
    MemberDAO dao = new MemberDAO();
    String id = dao.IDsearch(name, tel);
%>
<form name="idsearch" method="post">
<%
   if(id != null){
%>
<div class="container">
 <div class="found-success">
   <h4>회원님의 아이디는</h4>
    <div class="found-id"><%=id %></div>
   <h4>  입니다  </h4>
 </div>
   <div class="found-login">
   <button type="button" onclick="member.jsp">로그인</button><br>
   <button type="button" onclick="pwdsch.jsp">비밀번호 찾기</button>
 </div>
</div>
<%	   
   }else{%>
<div class="container">
  <div class="found-fail">
   <h4 align="center">등록된 정보가 없습니다</h4>
   </div>
   <div class="found-login" style="text-align: center;">    
     <button type="button" onclick="location.href='idsch.jsp';">다시찾기</button><br>
     <button type="button" onclick="location.href='create.jsp';">회원가입</button> 
  </div>
</div>	   

<%	   
   }
%>        
</form>

</body>
</html>