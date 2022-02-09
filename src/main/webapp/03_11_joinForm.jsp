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
	String[] idList = (String[])session.getAttribute("idList");
	String[] pwList = (String[])session.getAttribute("pwList");
	String[] nameList = (String[])session.getAttribute("nameList");
	String[] genderList = (String[])session.getAttribute("genderList");
	String log = (String)session.getAttribute("log");	
	int count = (int)session.getAttribute("count");
	int max = (int)session.getAttribute("max");
	
	if(count < max){
	%>
		<div align="center">
		<form action="03_12_joinPro.jsp">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
				<input type="radio" name="gender" value="남성" checked>남성
				<input type="radio" name="gender" value="여성" checked>여성
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="회원가입"></td>
			</tr>
		</table>
		</form>
		</div>
	<%	
	}else{
		response.sendRedirect("02_main.jsp");
	}
	%>
	
</body>
</html>