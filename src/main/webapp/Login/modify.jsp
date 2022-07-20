<%@page import="Member.MemberDAO"%>
<%@page import="Member.MemberDTO"%>
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
   MemberDTO dto = new MemberDTO();
   MemberDAO dao = new MemberDAO();
   dto.setId(request.getParameter("id"));
   dto.setPwd(request.getParameter("pwd"));
   dto.setName(request.getParameter("name"));
   dto.setTel(request.getParameter("tel"));
   dto.setAddr(request.getParameter("addr"));
   
   dao.update(dto);
   response.sendRedirect("showinfo.jsp");
%>

</body>
</html>