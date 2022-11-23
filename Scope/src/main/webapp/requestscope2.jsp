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
		String nickName = (String)request.getAttribute("nick");
	%>
	여기는 2.jsp!!!
	표현식:<%=nickName %><br>
	el표기법:${nick} 
</body>
</html>