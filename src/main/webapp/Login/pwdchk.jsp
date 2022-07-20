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
   <% request.setCharacterEncoding("utf-8"); 
   
      String name = request.getParameter("name");
      String id = request.getParameter("id");
      
      MemberDAO dao = new MemberDAO();
      String pwd = dao.Pwdsearch(name,id);
   %>
<form name="pwdsearch" method="post">   
   <%
    if(pwd == null){
   %>
     <div class="container">
      <div class="found-fail">
       <h4>등록된 정보가 없습니다</h4>
      </div>
      <div class="found-login">
       <button type="button" id="back_btn" onclick="pwdsch.jsp">다시 조회하기</button><br>
       <button type="button" id="id_search" onclick="idsch.jsp">아이디 찾기</button>
      </div>
     </div>
   <% 	
    }else{
   %>
     <div class="container">
      <div class="found-success">
        <h4>비밀번호를 변경해주세요</h4>
        <input type="text" name="pwd" placeholder="변경할 비밀번호 입력"><br>
        <button type="button" onclick="pwdset.jsp">비밀번호 변경</button>
      </div>
     </div> 	
   <% 	
    }  
   %>
</form>
   
   
</body>
</html>