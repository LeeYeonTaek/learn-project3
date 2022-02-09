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
		
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
	int index = -1;
	for(int i =0; i<count;i++){
		if(id.equals(idList[i])){
			index = i;
			break;
		}
	}
	if(index == -1){
	
	idList[count] = id;
	pwList[count] = pw;
	nameList[count] = name;
	genderList[count] = gender;
	
	count +=1;
	session.setAttribute("count", count);
	
	System.out.println("회원가입 완료");
	response.sendRedirect("02_main.jsp");
	
	}else{
		System.out.println("중복된 id 입니다.");
		response.sendRedirect("03_11_joinForm.jsp");
	}
	%>
</body>
</html>