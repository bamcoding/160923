<%@page import="net.gondor.index.dao.NewsDaoImpl"%>
<%@page import="net.gondor.index.dao.NewsDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	String newsIdParam = request.getParameter("newsId");

	if(newsIdParam == null){
		newsIdParam = "1";
	}
	int newsId = Integer.parseInt(newsIdParam);
	
	NewsDao dao = new NewsDaoImpl();
	System.out.println(newsId);
	dao.deleteNews(newsId);
	
	response.sendRedirect("./news.jsp");

%>