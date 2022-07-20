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
<script type="text/javascript">
alert('회원탈퇴 완료');
location.href="Main.jsp";
</script>
<%= session.getAttribute("login") %><br>
<%= request.getParameter("del") %>
<%
   MemberDAO dao = new MemberDAO();
   dao.delete( request.getParameter("del") );
   session.invalidate(); 
%>

</body>
</html>