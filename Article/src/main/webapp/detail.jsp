<%@page import="net.homework1.vo.ArtclVO"%>
<%@page import="java.util.List"%>
<%@page import="net.homework1.dao.ArtclDaoImpl"%>
<%@page import="net.homework1.dao.ArtclDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	String artclIdParam = request.getParameter("artclId");
	int artclId = Integer.parseInt(artclIdParam);
	ArtclDao dao = new ArtclDaoImpl();
	List<ArtclVO> artclVOs = dao.getArtcls();

	int temp = 0;
	for (ArtclVO artclVO : artclVOs) {
		temp = artclVO.getArticlId();
		if (temp == artclId) {
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=artclVO.getSubject()%></title>
</head>
<h1><%=artclVO.getSubject()%></h1>
<body>
	<hr/>
	<table border=1
		style="border-collaps: collaps; border: 1px solid black; width: 400px; height: 400px">
		<tr style="height: 10%">
			<th style="width:20%">제목</th>
			<td><%=artclVO.getSubject()%></td>
		</tr>
		<tr>
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