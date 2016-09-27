package net.homework1.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.homework1.dao.ArticleDao;
import net.homework1.dao.ArticleDaoImpl;
import net.homework1.vo.ArticleVO;

public class DoInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DoInsertServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String subject = request.getParameter("subject");
		String content = request.getParameter("content");

		content = content.replaceAll("\n", "<br/>").replaceAll("\r", "");

		if (subject == null || subject.length() == 0) {
			subject = "제목이 없습니다.";
		}
		if (content == null || content.length() == 0) {
			content = "내용이 없습니다.";
		}

		ArticleVO artclVO = new ArticleVO();
		artclVO.setSubject(subject);
		artclVO.setContent(content);

		ArticleDao dao = new ArticleDaoImpl();
		dao.insertArtcl(artclVO);

		System.out.println("doInsertArtcl is completed");

		response.sendRedirect("./article");	}

}
