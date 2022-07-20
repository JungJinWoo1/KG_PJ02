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
   MemberDAO dao = new MemberDAO();
   MemberDTO dto = new MemberDTO();
   dto.setId(request.getParameter("id"));
   dto.setAddr(request.getParameter("addr"));
   dto.setName(request.getParameter("name"));
   dto.setTel(request.getParameter("tel"));
   dto.setPwd(request.getParameter("pwd"));
   
   int result = dao.insert(dto);
   if(result == 1){%>
	 <script type="text/javascript">
	 alert('회원가입 성공!');
	 location.href='Member.jsp';
	 </script>  
   <%}else{%>
	 <script type="text/javascript">
	 alert('회원가입 실패!');
	 history.back()
	 </script>  
   <%}
   
%>
</body>
</html>