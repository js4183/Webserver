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
	request.setCharacterEncoding("UTF-8");
	String NAME = request.getParameter("NAME");
	int JAVA = Integer.parseInt(request.getParameter("JAVA")); 
	int WEB = Integer.parseInt(request.getParameter("WEB"));
	int IOT = Integer.parseInt(request.getParameter("WEB"));
	int ANDROID = Integer.parseInt(request.getParameter("ANDROID"));
	int SUM = JAVA+WEB+IOT+ANDROID;
	float AVG =SUM/4f;
	String grade ="";
	if(AVG>=95){
		grade="A+";
	}else if(AVG>=90){
		grade="A";
	}else if(AVG>=85){
		grade="B+";
	}else if(AVG>=80){
		grade="B";
	}else {
		grade="F";
	}
	%>
	<fieldset align="center">
		<legend>학점확인 프로그램</legend>
		<table align="center">
			<tr>
					<td>이름</td>
					<td><%=NAME %></td>
				</tr>
				<tr>
					<td>JAVA점수</td>
					<td><%=JAVA %></td>
				</tr>
				<tr>
					<td>WEB점수</td>
					<td><%=WEB %></td>
				</tr>
				<tr>
					<td>IOT점수</td>
					<td><%=IOT %></td>
				</tr>
				<tr>
					<td>ANDROID점수</td>
					<td><%=ANDROID %></td>
				</tr>
				<tr>
					<td>평균</td>
					<td><%=AVG %></td>
				</tr>
				<tr>
					<td>학점</td>
					<td><strong><%=grade %></strong></td>
				</tr>
		</table>
	</fieldset>
</body>
</html>