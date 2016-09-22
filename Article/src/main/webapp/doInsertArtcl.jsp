<%@page import="net.homework1.dao.ArtclDao"%>
<%@page import="net.homework1.dao.ArtclDaoImpl"%>
<%@page import="net.homework1.vo.ArtclVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//한글 깨짐을 방지를 위한 코드
	request.setCharacterEncoding("UTF-8");

	String subject = request.getParameter("subject");
	String content = request.getParameter("content");

	content = content.replaceAll("\n", "<br/>").replaceAll("\r", "");

	if (subject == null || subject.length() == 0) {
		subject = "제목이 없습니다.";
	}
	if (content == null || content.length() == 0) {
		content = "내용이 없습니다.";
	}

	ArtclVO artclVO = new ArtclVO();
	artclVO.setSubject(subject);
	artclVO.setContent(content);

	ArtclDao dao = new ArtclDaoImpl();
	dao.insertArtcl(artclVO);

	System.out.println("doInsertArtcl is completed");

	response.sendRedirect("./artcl.jsp");
%>