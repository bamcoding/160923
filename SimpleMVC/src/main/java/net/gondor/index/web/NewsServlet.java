package net.gondor.index.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.gondor.index.biz.NewsBiz;
import net.gondor.index.biz.NewsBizImpl;
import net.gondor.index.vo.NewsVO;

public class NewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private NewsBiz biz;

	public NewsServlet() {
		super();
		biz = new NewsBizImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<NewsVO> newses = biz.getAllNewsesOf(20);
		
		String viewPath = "/WEB-INF/view/newsList.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(viewPath);
		request.setAttribute("newses", newses);
		
		rd.forward(request, response);
	}
}
