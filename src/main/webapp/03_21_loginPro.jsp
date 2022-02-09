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
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("admin") && pw.equals("admin")){
			response.sendRedirect("01_11_adminMain.jsp");
		}else{
		
		for(int i = 0; i<count;i++){
			if(id.equals(idList[i]) && pw.equals(pwList[i])){
				log = i + "";
				break;
			}
		}
		session.setAttribute("log", log);
		if(log.equals("-1")){
			System.out.println("id, pw 확인");
			response.sendRedirect("03_21_loginForm.jsp");
		}else{
			System.out.println("로그인 성공");
			response.sendRedirect("02_main.jsp");
		}
		}
	%>
</body>
</html>