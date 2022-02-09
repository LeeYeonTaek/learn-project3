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
	
	String str = request.getParameter("index");
	int index = Integer.parseInt(str);
	
	
	for(int i= index; i< count - 1; i++){
		idList[i] = idList[i+1];
		pwList[i] = pwList[i+1];
		nameList[i] = nameList[i+1];
		genderList[i] = genderList[i+1];
	}
	count -= 1;
	session.setAttribute("count", count);
	
	response.sendRedirect("01_12_adminUserList.jsp");
	%>
</body>
</html>