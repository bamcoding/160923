<%@page import="net.homework1.dao.ArticleDaoImpl"%>
<%@page import="net.homework1.vo.ArticleVO"%>
<%@page import="net.homework1.dao.ArticleDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	String artclIdParam = request.getParameter("artclId");
	int artclId = Integer.parseInt(artclIdParam);
	ArticleDao dao = new ArticleDaoImpl();
	List<ArticleVO> artclVOs = dao.getArtcls();

	int temp = 0;
	for (ArticleVO artclVO : artclVOs) {
		temp = artclVO.getArticlId();
		if (temp == artclId) {
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=artclVO.getSubject()%></title>
</head>
<h1><%=artclVO.getSubject()%></h1>
<body bgcolor="eedddd">
	<hr/>
	<table
		style="border-collaps: collaps; border: 1px solid black; width: 400px; height: 400px">
		<tr  bgcolor=fffffff  style="height: 10%">
			<th style="width:20%">제목</th>
			<td><%=artclVO.getSubject()%></td>
		</tr>
		<tr  bgcolor=fffffff >
			<th style="width:20%">내용</th>
			<td><%=artclVO.getContent()%></td>
		</tr>
	</table>
	<%
		}
		}
	%>
	<hr/>
	<form>
		<input type="button" value="수정"
			onclick="location.href='editArtcl.jsp?artclId=<%=artclId %>'" /> 
		<input type="button"
			value="삭제" onclick="location.href='deleteArtcl.jsp?artclId=<%=artclId %>'" /> 
		<input
			type="button" value="돌아가기" onclick="location.href='artcl.jsp'" />
	</form>
</body>
</html>