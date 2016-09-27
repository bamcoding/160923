
<%@page import="net.homework1.dao.ArticleDao"%>
<%@page import="net.homework1.vo.ArticleVO"%>
<%@page import="net.homework1.dao.ArticleDaoImpl"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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

	ArticleDao dao = new ArticleDaoImpl();
	List<ArticleVO> artclVOs = dao.getArtcls();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ARTICLE</title>
</head>
<body bgcolor="eedddd">
	<h1>ATICLE TABLE</h1>
	<hr />
	<table
		style="width: 100%; border-collaps: collaps; border: 1px solid black;">
		<tr bgcolor="orange">
			<th>ARTICLE_ID</th>
			<th>SBJ</th>
			<th>CRT_DT</th>
		</tr>

		<%
			for (ArticleVO artclVO : artclVOs) {
		%>
		<tr bgcolor="fffffff">
			<td style="text-align: center;"><%=artclVO.getArticlId()%></td>
			<td><a href="detail.jsp?artclId=<%=artclVO.getArticlId()%>">
					<%=artclVO.getSubject()%></a></td>
			<td><%=artclVO.getCreateDate()%></td>
		</tr>
		<%
			}
		%>

	</table>
	<hr />
	<form>
		<input type="button" value="기사 등록하기"
			onclick="location.href='./insertArtcl.jsp'" />
	</form>
</body>
</html>