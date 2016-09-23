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

public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public IndexServlet() {
        super();
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doPost(request, response);
    }

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	//jsp에 전달할 값...
    	int numberOne = 10;
    	int numberTwo =	7;
    	int result = numberOne + numberTwo;
    	CalcVO calc= new CalcVO(numberOne, numberTwo, result);
    	List<CalcVO> calcList = new ArrayList<CalcVO>();
    	calcList.add(new CalcVO(1, 2, 1+2));
    	calcList.add(new CalcVO(10,20,10+20));
    	calcList.add(new CalcVO(30,30,30+30));
    	
    	String viewPath="/WEB-INF/view/index.jsp";
    	
    	//Forward 처리를 할 수 있는 객체를 생성한다. 
    	//MVC에서 V를 볼 수 있는 역할을 한다.
    	RequestDispatcher rd = request.getRequestDispatcher(viewPath);
    	
    	//jsp에 데이터를 전달한다.
    	request.setAttribute("name", "이근재");
    	request.setAttribute("result", result);
    	request.setAttribute("calc", calc);
    	request.setAttribute("calcList", calcList);
    	
    	//View를 forward 한다.
    	rd.forward(request, response);
    	
    }

}
