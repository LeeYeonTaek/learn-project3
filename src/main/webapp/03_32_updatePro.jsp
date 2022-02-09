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
	int log = Integer.parseInt((String)session.getAttribute("log"));	
	int count = (int)session.getAttribute("count");	
	
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
	String gender = request.getParameter("gender"); 
	
	if(pw.equals(pwList[log])){
		nameList[log] = name;
		genderList[log] = gender;
	%>	
		
	<% 
		session.setAttribute("nameList", nameList);
		session.setAttribute("genderList", genderList);
		response.sendRedirect("02_main.jsp");
	}else{
		System.out.println("pw 입력 오류 회원 수정 불가");
		response.sendRedirect("03_31_updateForm.jsp");
	}
	%>
</body>
</html>