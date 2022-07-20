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
  
   String pwd = request.getParameter("pwd");   
   String id = request.getParameter("id");   
   MemberDAO dao = new MemberDAO();
   
   dao.pwdupdate(pwd,id);%>
   <script type="text/javascript">
   alert("비밀번호 변경 완료");
   location.href='Member.jsp';
   </script>
</body>
</html>