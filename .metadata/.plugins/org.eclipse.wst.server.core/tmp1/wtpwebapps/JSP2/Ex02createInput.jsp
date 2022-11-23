<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	int num = Integer.parseInt(request.getParameter("num"));
	%>
	<fieldset align="center">
		<legend>랜덤당첨 작성</legend>
		<form action="Ex02randomWinner.jsp">
		<table align="center">
			<tr>
				<td>주제</td>
				<td><input type="text" name="menu"></td>
			</tr>
			<%for(int i=1; i<=num; i++){
			out.print("<tr>");
				out.print("<td>"+"아이템"+i+"</td>");
				out.print("<td><input type='text' name='item'></td>");
			out.print("</tr>");
			} %>
			<tr>
				<td colspan="2"><input type="submit" value="시작"></td>
			</tr>
		</table>
		</form>
	</fieldset>
</body>
</html>