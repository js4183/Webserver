package com.smhrd.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex10user")
public class ex10user extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String pc = request.getParameter("pc");
		String gender = request.getParameter("gender");
		String blood = request.getParameter("blood");
		String date = request.getParameter("date");
		String[] hobby = request.getParameterValues("hobby");
		String color = request.getParameter("color");
		String talk = request.getParameter("talk");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		out.print("<div>"+"아이디 : "+id+"</div>");
		out.print("<div>"+"비밀번호 : "+pw+"</div>");
		if(pw.equals(pc)) {
			out.print("<div>"+"비밀번호가 일치합니다."+"</div>");			
		}else {
			out.print("<div>"+"비밀번호가 일치하지 않습니다."+"</div>");			
		}
		out.print("<div>"+"성별 : "+gender+"</div>");
		out.print("<div>"+"혈액형 : "+blood+"</div>");
		out.print("<div>"+"생일 : "+date+"</div>");
		out.print("<div>"+"취미 : "+Arrays.toString(hobby)+"</div>");
		out.print("<div>"+"좋아하는 색 : "+color+"</div>");
		out.print("<div>"+"남기고 싶은 말 : "+talk+"</div>");
		
		out.print("</body>");
		out.print("</html>");
	}

}
