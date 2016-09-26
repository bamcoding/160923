<%@page import="net.gondor.index.dao.NewsDaoImpl"%>
<%@page import="net.gondor.index.dao.NewsDao"%>
<%@page import="net.gondor.index.vo.NewsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<%
		String newsIdParam = request.getParameter("newsId");
		if (newsIdParam == null) {
			response.sendRedirect("./news.jsp");
		}

		int newsId = Integer.parseInt(newsIdParam);

		NewsDao dao = new NewsDaoImpl();

		dao.updateRecommendCount(newsId);
		NewsVO news = dao.getNewsAt(newsId);
		
		
	%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contents</title>
</head>
<body>	
	<table border=1 style="border-collaps:collaps;border:1px solid black;width:500px;height:350px">
	<tr style="height:5%">
	<th>제목</th>
	<td><%=news.getSubject()%></td>
	</tr>
	<tr style="height:5%">
	<th>작성자</th>
	<td><%=news.getJournalistVO().getJournalistName()%>
	</td>
	</tr>
	<tr style="height:5%">
	<th>카테고리</th>
	<td><%=news.getCategoryVO().getCategoryName()%></td>
	</tr>
	<tr>
	<th>내용</th>
	<td><%=news.getContent()%></td>
	<tr style="height:5%">
	<th>날짜</th>
	<td><%=news.getCreatedDate()%></td>
	</tr>
	</table>
	<hr/>
	<form>
	<input type="button" value="수정" onclick="location.href='news.jsp'"/>
	<input type="button" value="삭제" onclick="location.href='deleteNews.jsp?newsId=<%=news.getNewsId()%>'"/>
	<input type="button" value="돌아가기" onclick="location.href='news.jsp'"/>
	</form>
	
</body>
</html>