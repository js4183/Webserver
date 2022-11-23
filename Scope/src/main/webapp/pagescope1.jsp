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
		//page 영역 : 특정 page 안에서 선언한 값은 해당 페이지 내에서만 사용 가능 (지역변수)
		
		//page영역 내에 값 저장 pageContext(키(String), 값(Object))
		pageContext.setAttribute("nick", "전하");
	
		//page영역 내에 값 가져오기
		String nickName = (String)pageContext.getAttribute("nick");
		
		//RequestDispatcher rd = request.getRequestDispatcher("pagescope2.jsp");
		//rd.forward(request, response);
	%>
	
	표현식 : <%=nickName %><br>
	el표기법 : ${nick}
	${pageScope.nick }
	
	<a href="pagescope2.jsp">2로 이동</a>
</body>
</html>