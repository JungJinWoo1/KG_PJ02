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
<% request.setCharacterEncoding("utf-8"); %>
     
  <%
     String id = request.getParameter("id");
     String pwd = request.getParameter("pwd");
     MemberDAO dao = new MemberDAO();
     int result = dao.userchk(id, pwd);
     if(result == 1){
    	 session.setAttribute("login",id);
    	 %>
    	 <script type="text/javascript">
    	     alert('환영합니다');
    	     location.href='../Main.jsp'
    	 </script>
    	 <%}
     else if(result == 0){
    	 %>
    	 <script type="text/javascript">
    	     alert('비밀번호를 확인해주세요');
    	     location.href='Member.jsp'
    	 </script>
    	 <%}
     else{
    	 %>
    	 <script type="text/javascript">
    	     alert('존재하지 않는 아이디 입니다');
    	     location.href='Member.jsp'
    	 </script>
    	 <%}
 %>
</body>
</html>