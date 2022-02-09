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
	int count = (int)session.getAttribute("count");
	%>
	<div align="center">
	<h1>관리자 페이지</h1>
	<form action="01_13_adminUserDelete.jsp">
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>패스워드</td>
			<td>이름</td>
			<td>성별</td>
			<td>삭제</td>
		</tr>
		<%
			for(int i =0; i<count; i++){
		%>
			<tr>
				<td><%= idList[i] %></td>
				<td><%= pwList[i] %></td>
				<td><%= nameList[i] %></td>
				<td><%= genderList[i] %></td>
				<td><button name="index" value="<%=i%>">삭제</button></td>
			</tr>
		<% 
			}
		%>
	</table>
	</form>
	</div>
</body>
</html>