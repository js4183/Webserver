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
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));

	String ope = request.getParameter("ope");

	int res = 0;
	
	if (ope.equals("plus")) {
		res = num1 + num2;
		ope = "+";
	} else if (ope.equals("minus")) {
		if (num1 >= num2) {
			res = num1 - num2;
		} else {
			res = num2 - num1;
		}
		ope = "-";
	} else if (ope.equals("mul")) {
		res = num1 * num2;
		ope = "*";
	} else {
		res = num1 / num2;
		ope = "/";
	}
	%>

	<%=num1 + ope + num2 + "=" + res%>

</body>
</html>