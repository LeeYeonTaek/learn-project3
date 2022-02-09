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
	
	String pw = request.getParameter("pw");
	if(pw.equals(pwList[log])){
		for(int i =log; i<count -1; i++){
			idList[i] = idList[i+1];
			pwList[i] = pwList[i+1];
			nameList[i] = nameList[i+1];
			genderList[i] = genderList[i+1];
		}
		count -=1;
		session.setAttribute("count", count);
		session.setAttribute("log", "-1");
		response.sendRedirect("02_main.jsp");
	}else{
		System.out.println("pw 입력 오류");
		response.sendRedirect("03_41_deleteForm.jsp");
	}
	%>
</body>
</html>