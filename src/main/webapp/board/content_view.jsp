<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style type="text/css">
		h2 { text-align: center; color: #785D12;}
		table {margin: 0 auto; width: 70%; border: 1px solid #993800; padding: 20px; border-radius: 15px; background-color: beige; }
		input { padding: 10px 20px; align: float-right; border-radius: 5px; border: #FFA46C; background-color: #FFA46C; }
		input:active {border-radius: 10px; background-color: #993800;}
	</style>
	
</head>
<body>

	<%@include file="../header.jsp" %>

<div id="wrapper">
	<jsp:useBean id="dao" class="board.Board1DAO" />
	<c:set var="dto" value="${dao.getContent(param.bnum) }" />
	
		<h2>${dto.bnum }번 게시글 내용</h2>
		<br>
		
		<table border="1">
			<tr>
				<td>번호 : ${dto.bnum }</td> <td colspan="2">제목 : ${dto.title }</td>
			</tr>
			<tr>
				<td>아이디 : ${dto.id }</td> <td>작성자 : ${dto.name }</td> <td>조회수 : ${dto.hit }</td>
			</tr>
			<tr>
				<td colspan="3" align="center">내용</td> 
			</tr>
			<tr>
				<td colspan="3">${dto.content }</td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<input type="button" onclick="location.href='boardList.jsp'" value="목록">
				<c:choose>
				 	<c:when test="${login != null && login == dto.id }">
				 			<input type="button" onclick="location.href='board1_Update.jsp?bnum=${dto.bnum }'" value="수정">
							<input type="button" onclick="location.href='board1_delete.jsp?bnum=${dto.bnum}'" value="삭제">
							<input type="button" onclick="location.href='board1_replyWrite.jsp?bnum=${dto.bnum}'" value="댓글">
					</c:when>
					<c:when test="${login != null && login != dto.id }">
							<input type="button" onclick="location.href='board1_replyWrite.jsp?bnum=${dto.bnum}'" value="댓글">
					</c:when>
					<c:otherwise>
				 		<input type="button" onclick="location.href='../Login/Member.jsp'" value="로그인">
				 	</c:otherwise>
				</c:choose>
				</td>
			</tr>
		</table>
</div>
		
		<%@include file="../footer.jsp" %>
		
</body>
</html>