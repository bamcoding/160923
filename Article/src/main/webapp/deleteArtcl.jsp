<%@page import="net.homework1.dao.ArticleDaoImpl"%>
<%@page import="net.homework1.dao.ArticleDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String artclIdParam = request.getParameter("artclId");
	int artclId = Integer.parseInt(artclIdParam);
	ArticleDao dao = new ArticleDaoImpl();
	dao.deleteArtcl(artclId);

	response.sendRedirect("./artcl.jsp");
%>