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
		//세션 영역에 값 저장
		session.setAttribute("nick","전하");
	
		//세션 영역에 값 가져오기
		String nickName = (String)session.getAttribute("nick");
	%>
	
	표현식 : <%=nickName %>
	el표기법 : ${nick }
	${sessionScope.nick }
	
	<a href="sessionscope2.jsp">2로 이동</a>
</body>
</html>