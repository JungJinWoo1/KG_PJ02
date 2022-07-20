<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.btn { width: 210px; height: 210px; margin: auto; text-align: center;
       font-size: 30px; cursor: pointer; color: white; background-color: gray; opacity : 0.8;
       border: none; border-radius: 12px; }
form { text-align: center; padding-top: 60px; }
img { position: absolute; left: 100px; top: 0; z-index: 1; cursor: pointer; padding-top: 30px; }
h3 { font-size: 40px; text-align: center; }
footer { width: 100%; height: 20px; position: absolute; bottom: 0; left: 0; }
#wrapper {min-height: 100%; position: relative;}
.btn:hover { background-color: black; 
box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19); }
.btn:active {background-color: black;}
</style>
</head>
<body>
<div id="wrapper">
<header>
<form action="Main.jsp">
<a href="Main.jsp"><img alt="img" src="3.png" width="120" height="120"></a>
<h3>My pet</h3>
</form>
</header>

<form name="search" method="post">
<a href="idsch.jsp" style="text-decoration: none; text-align: center;"><input type="button" class="btn" value="ID찾기"></a>
&nbsp;&nbsp;
<a href="pwsch.jsp" style="text-decoration: none; text-align: center;"><input type="button" class="btn" value="PW찾기"></a>
</form>
</div>
<footer>
<%@ include file="footer.jsp" %>
</footer>
</body>
</html>