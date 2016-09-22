<%@page import="net.gondor.dao.NewsDaoImpl"%>
<%@page import="net.gondor.dao.NewsDao"%>
<%@page import="net.gondor.vo.NewsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
		String newsIdParam = request.getParameter("newsId");
		System.out.println(newsIdParam);
		if (newsIdParam == null) {
			response.sendRedirect("./news.jsp");
		}

		int newsId = Integer.getInteger(newsIdParam);

		NewsDao dao = new NewsDaoImpl();
		dao.updateRecommendCount(newsId);

		NewsVO news = dao.getNewsAt(newsId);
		
		
		
		
	%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table>
	<tr><td><h1><%=news.getSubject()%></h1></td></tr>
	<tr><td><h6><%=news.getJournalistVO().getJournalistName()%></h6></td>
	<tr><td><h6><%=news.getCategoryVO().getCategoryName()%></h6></td>
	<tr><td><h6><%=news.getContent()%></h6></td>
	<tr><td><h6><%=news.getCreatedDate()%></h6></td>
	</table>
	<br/>
	<a href="./news.jsp">돌아가기</a>


</body>
</html>