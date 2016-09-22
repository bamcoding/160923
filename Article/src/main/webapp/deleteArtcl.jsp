<%@page import="java.util.List"%>
<%@page import="net.homework1.vo.ArtclVO"%>
<%@page import="net.homework1.dao.ArtclDaoImpl"%>
<%@page import="net.homework1.dao.ArtclDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String artclIdParam = request.getParameter("artclId");
	int artclId = Integer.parseInt(artclIdParam);
	ArtclDao dao = new ArtclDaoImpl();
	dao.deleteArtcl(artclId);

	response.sendRedirect("./artcl.jsp");
%>