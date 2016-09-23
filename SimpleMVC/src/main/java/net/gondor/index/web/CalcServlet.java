package net.gondor.index.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.gondor.index.vo.CalcVO;

public class CalcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CalcServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<CalcVO> calcList = new ArrayList<CalcVO>();
		calcList.add(new CalcVO(50,20, 50+20));
		calcList.add(new CalcVO(50,20, 50+20));
		calcList.add(new CalcVO(50,20, 50+20));
		
		String viewPath ="/WEB-INF/view/calcList.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(viewPath);
		
		request.setAttribute("calcList", calcList);
		
		rd.forward(request, response);
		
	}

}
