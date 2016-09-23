<%@page import="net.homework1.vo.ArtclVO"%>
<%@page import="net.homework1.dao.ArtclDao"%>
<%@page import="net.homework1.dao.ArtclDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>기사 수정하기</title>
</head>
<body bgcolor=eedddd>
	<%
		String artclIdParam = request.getParameter("artclId");
		int artclId = Integer.parseInt(artclIdParam);

		ArtclDao dao = new ArtclDaoImpl();
		ArtclVO artcl = dao.getArtclById(artclId);
		String content = artcl.getContent().replaceAll("<br/>", "\n");
	%>
	<h1>기사 수정하기</h1>
	<form name="insertArtcl" method="post"
		action="./doEditArtcl.jsp?artclId=<%=artclId%>">
		<hr />
		<table
			style="width: 400px; height: 400px; border: 1px solid black; border-collaps: collaps">
			<tr style="height: 10%;">
				<th sytle="background-color:#dddddd;width:20%">제목</th>
				<td><input name="subject" type="text"
					value="<%=artcl.getSubject()%>" style="width: 98%;" /></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="content" style="width: 98%; height: 100%;"><%=content%></textarea>
				</td>
			</tr>
		</table>
		<hr />
		<input type="submit" value="수정하기" /> <input type="button" value="취소"
			onclick="location.href='./detail.jsp?artclId=<%=artclId%>'" />
	</form>
</body>
</html>