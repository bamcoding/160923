<%@page import="java.util.ArrayList"%>
<%@page import="net.gondor.vo.CategoryVO"%>
<%@page import="java.util.List"%>
<%@page import="net.gondor.vo.NewsVO"%>
<%@page import="net.gondor.dao.NewsDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
	String categoryParam = request.getParameter("categoryId");
	String parentCategoryIdParam = request.getParameter("parentCategoryId");
	if (categoryParam == null) {
		categoryParam = "0";
	}
	if (parentCategoryIdParam == null) {
		parentCategoryIdParam = "0";
	}
	int categoryId = Integer.parseInt(categoryParam);
	int parentCategoryId = Integer.parseInt(parentCategoryIdParam);

	NewsDaoImpl dao = new NewsDaoImpl();
	List<CategoryVO> categories = new ArrayList<CategoryVO>();

	boolean isLeafNode = dao.isCategoryLeafNode(categoryId);
	if (isLeafNode) {
		categories = dao.getCategoriesOf(parentCategoryId);
	} else {
		categories = dao.getCategoriesOf(categoryId);
	}
	List<NewsVO> newses = dao.getNewsesOf(categoryId);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>News</title>
</head>
<body>
	<h1>NEWS</h1>

	<a href="./news.jsp">처음으로</a>&nbsp;|&nbsp;
	<% 
	for(CategoryVO category:categories){
	
	%>
	<a href="./news.jsp?categoryId=<%= category.getCategoryId() %>&parentCategoryId=<%= category.getParentCategoryId() %>">
	<%= category.getCategoryName() %>
	</a>&nbsp;|&nbsp;
	<%} %>
	

	<hr />
	<table
		style="width: 100%; border-collaps: collaps; border: 1px solid black;">
		<tr>
			<th>NEWS_ID</th>
			<th>SBJ</th>
			<th>CONT</th>
			<th>RCMD_CNT</th>
			<th>JRNLST_ID</th>
			<th>CTGR_ID</th>
			<th>CRT_DT</th>
		</tr>

		<%
			for (NewsVO newsVO : newses) {
		%>
		<tr>
			<td style="text-align: center;"><%=newsVO.getNewsId()%></td>
			<td><%=newsVO.getSubject()%></td>
			<td><%=newsVO.getContent()%></td>
			<td><%=newsVO.getRecommendCount()%></td>
			<td><%=newsVO.getJournalistVO().getJournalistName()%></td>
			<td><%=newsVO.getCategoryVO().getCategoryId()%></td>
			<td><%=newsVO.getCreatedDate()%></td>
		</tr>
		<%
			}
		%>

	</table>
	<hr/>
	<a href="insert.jsp">기사 등록하기</a>
</body>
</html>