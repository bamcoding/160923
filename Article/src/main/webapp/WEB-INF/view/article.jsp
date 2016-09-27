<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" type="text/css" href="/Article/css/article.css">
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ARTICLE</title>
</head>
<body >
	<h1>ATICLE TABLE</h1>
	<hr />
	<table
		style="width: 100%; border-collaps: collaps; border: 1px solid black;">
		<tr bgcolor="orange">
			<th>ARTICLE_ID</th>
			<th>SBJ</th>
			<th>CRT_DT</th>
		</tr>
	<c:forEach items="${articles}" var="article">
		<tr bgcolor="fffffff">
			<td style="text-align: center;">${article.articlId }</td>
			<td><a href="detail?artclId=${article.articlId }">
					${article.subject }</a></td>
			<td>${article.createDate}</td>
		</tr>
	</c:forEach>
	</table>
	<hr />
	<form>
		<input type="button" value="기사 등록하기"
			onclick="location.href='./insertArticle'" />
	</form>
	<hr/>
	<h1>Article</h1>
	<hr/>
	<div id="articles">
		<!-- 반복 시작 -->
		<c:forEach items="${articles }" var="article">
			<div class="article">
				<div class="subject">${article.subject }</div>
				<div>
					<div class="author">이근재</div>
					<div class="createDate">${article.createDate}</div>
				</div>
				<div >
					<c:set var="content" value="${fn:replace(article.content, '<br/>', ' ')}" />
					<c:choose>
						<c:when test="${fn:length(content)>50 }">
						${fn:substring(content, 0, 50)}...
						</c:when>
 						<c:otherwise>
						${ content}
						</c:otherwise>
					</c:choose>
					
					<%-- <c:if test="${fn:length(content) > 50}">
					${fn:substring(content, 0, 50)}}...
					</c:if> --%>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>