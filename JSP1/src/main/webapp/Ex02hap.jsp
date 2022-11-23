<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! int numS = 1; %>
	<%! int numF = 100; %>
	<%! int sum = 0; %>	
	<% for(int i=numS;i<=numF;i++) {
		sum += i;
		}
	%>
	<%=numS+"~"+numF+"까지의 합 : "+sum %>
	<%="<br>" %>
	1~100까지의 합 : <%=sum %>
	
</body>
</html>