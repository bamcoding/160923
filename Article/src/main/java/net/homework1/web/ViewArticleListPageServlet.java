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

public class ViewArticleListPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	ArticleDao dao;
	
    public ViewArticleListPageServlet() {
        super();
        dao = new ArticleDaoImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
/*		String categoryParam = request.getParameter("categoryId");
		String parentCategoryIdParam = request.getParameter("parentCategoryId");
		if (categoryParam == null) {
			categoryParam = "0";
		}
		if (parentCategoryIdParam == null) {
			parentCategoryIdParam = "0";
		}
		int categoryId = Integer.parseInt(categoryParam);
		int parentCategoryId = Integer.parseInt(parentCategoryIdParam);
*/
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/article.jsp");
		List<ArticleVO> articles = dao.getArtcls();
		request.setAttribute("articles", articles);
		
		rd.forward(request, response);
	}

}
