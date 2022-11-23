<%@page import="java.util.Random"%>
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
	String menu = request.getParameter("menu");
	String[] item = request.getParameterValues("item");
	Random rd = new Random();
	%>
	<fieldset align="center">
		<legend>랜덤당첨결과</legend>
		<table align="center">
			<tr>
				<td><%=menu %>></td>
			</tr>
			<tr>
				<td><%=item[rd.nextInt(item.length)] %></td>
			</tr>
		</table>
	</fieldset>
</body>
</html>