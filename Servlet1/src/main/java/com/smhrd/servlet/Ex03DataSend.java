package com.smhrd.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex03DataSend")
public class Ex03DataSend extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//클라이언트(데이터) -> 서버에서 받기 (request)
		//getParameter(input-name) : 해당 name이 지정된 input 창에 작성된(선택한) 값 반환
		//														->String
		request.setCharacterEncoding("euc-kr");// 요청(get/post)데이터 인코딩 방식지정
		String data = request.getParameter("data");
		
		System.out.println(data);
	}

}
