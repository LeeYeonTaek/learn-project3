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
	
	String log = (String)session.getAttribute("log");	
	
	
	if(log.equals("-1")){
	%>
	<div align="center">
	<h1>메인 페이지</h1>
	<table border="1">
		<tr>
		<td><a href="03_11_joinForm.jsp">회원가입</a>&nbsp;<a href="03_21_loginForm.jsp">로그인</a></td>
		</tr>		
	</table>
	</div>
	<%
	}else{
	%>
		<div align="center">
		<h1>메인 페이지</h1>
		<table border="1">
			<tr>
				<td><a href="03_23_logoutPro.jsp">로그아웃</a></td>
				<td><a href="03_31_updateForm.jsp">회원정보수정</a></td>
				<td><a href="03_41_deleteForm.jsp">회원탈퇴</a>
			</tr>
		</table>
		</div>
	<%
	}
	%>
	
</body>
</html>