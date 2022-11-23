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
		//application 영역에 값 저장
		application.setAttribute("nick", "전하");
		
		//application 영역에 값 가져오기
		String nickName = (String)application.getAttribute("nick");
	%>
	
	<%=nickName %><br>
	${nick }
	${applicationScope.nick }
	
	<a href="applicationsope2.jsp">2로 이동</a>
</body>
</html>