package net.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public NewServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		
		// 화면에 출력하기 위한 객체
		// 정확히 말하면, 응답을 보낼 수 있는 객체
		PrintWriter out = response.getWriter();
		
		// 응답메시지를 메모리에 담아둔다.
		out.print("<h1>반갑습니다.</h1>");
		// 응답을 클라이언트에게 전송합니다.
		// 반갑습니다라는 물을 쌓아두고 막아두고 있던 벽을 풀어버린다.
		out.flush();

		//PrintWriter를 닫습니다.
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
