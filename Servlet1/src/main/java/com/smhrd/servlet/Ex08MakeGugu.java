package com.smhrd.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex08MakeGugu")
public class Ex08MakeGugu extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int i = Integer.parseInt(request.getParameter("ns"));
		int j = Integer.parseInt(request.getParameter("nf"));
		String color = request.getParameter("color");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		out.print("<table border=1 bgcolor='"+color+"'>");
		for(int s=i;s<=j;s++) {
			out.print("<tr>");
			for(int k=1;k<=9;k++) {
				out.print("<td>"+s+"*"+k+"="+(s*k)+"</td>");			
			}
			out.print("</tr>");
		}
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
	}

}
