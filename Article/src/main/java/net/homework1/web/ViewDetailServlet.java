package net.homework1.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.homework1.dao.ArticleDao;
import net.homework1.dao.ArticleDaoImpl;
import net.homework1.vo.ArticleVO;

public class ViewDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ViewDetailServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String artclIdParam = request.getParameter("artclId");
		int artclId = Integer.parseInt(artclIdParam);
		ArticleDao dao = new ArticleDaoImpl();
		List<ArticleVO> artclVOs = dao.getArtcls();
		
		ArticleVO selectedArticle = new ArticleVO();
		
		int temp = 0;
		for (ArticleVO artclVO : artclVOs) {
			temp = artclVO.getArticlId();
			if (temp == artclId) {
				selectedArticle = artclVO;
			}
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/detail.jsp");
		request.setAttribute("article", selectedArticle);
		rd.forward(request, response);
	}

}
