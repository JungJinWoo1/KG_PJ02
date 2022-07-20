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
String id = (String)session.getAttribute("login");
String pwd = request.getParameter("pwd");

MemberDAO dao = new MemberDAO();
dao.infopwd(id, pwd);
%>
<%
int result = dao.infopwd(id, pwd);
if(result == 1){%>
<script type="text/javascript">
alert('비밀번호 확인되었습니다');
location.href='showinfo.jsp';
</script>	
<%
}else{%>
<script type="text/javascript">
alert('비밀번호를 다시 입력해주세요');
location.href='infopwd.jsp';
</script>
<%	
}
%>
</body>
</html>