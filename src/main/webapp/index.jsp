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
		int max = 10;
		int count = 0;
		String[] idList = new String[max];
		String[] pwList =  new String[max];
		String[] nameList = new String[max];
		String[] genderList = new String[max];
		
		String[] sampleId = {"qwer", "abcd", "hello"};
		String[] samplePw = {"1111", "2222", "3333"};
		String[] sampleName ={"이만수", "박영희", "이수민"};
		String[] sampleGender ={"남성","여성","여성"};
		for(int i =0; i<sampleId.length; i++){
			idList[i] = sampleId[i];
			pwList[i] = samplePw[i];
			nameList[i] = sampleName[i];
			genderList[i] = sampleGender[i];
			count +=1;
		}
		
		String log = "-1";
		session.setAttribute("idList", idList );
		session.setAttribute("pwList", pwList);
		session.setAttribute("nameList", nameList );
		session.setAttribute("genderList", genderList);
		session.setAttribute("log", log);
		session.setAttribute("count", count);
		session.setAttribute("max", max);
		response.sendRedirect("02_main.jsp");
	%>
</body>
</html>