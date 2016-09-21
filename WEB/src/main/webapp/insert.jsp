<%@page import="net.gondor.vo.CategoryVO"%>
<%@page import="java.util.List"%>
<%@page import="net.gondor.dao.NewsDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="net.gondor.vo.JournalistVO"%>
<%@page import="net.gondor.dao.NewsDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	NewsDao dao = new NewsDaoImpl();
	List<JournalistVO> journalists = dao.getJournalists();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>기사를 등록</title>
</head>
<body>
	<form name="writeForm" method="post" action="./doInsert.jsp">
		<!-- action은 보통 상대 주소를 쓴다. 전달되는 페이지는 보통 do[현재파일이름]으로 한다. name을 정해주는 것은 필수다
		Form 태그 안에서는 	input, textarea태그만 유효하다. 그외의 다른 태그들은 design만 담당한다.
	-->
		카테고리ID: <select name="categoryId">
			<option>카테고리를 선택하세요</option>
			<%
				List<CategoryVO> categoryVOs = dao.getAllCategories();
				for (CategoryVO categoryVO : categoryVOs) {
			%>
			<option value="<%=categoryVO.getCategoryId()%>"><%=categoryVO.getCategoryName()%></option>
			<%
				}
			%>
		</select>

		<hr />
		기자ID: <select name="journalistId">
			<option>기자를 선택하세요</option>
			<%
				for (JournalistVO journalistVO : journalists) {
			%>
			<option value="<%=journalistVO.getJournalistId()%>"><%=journalistVO.getJournalistName()%></option>
			<%
				}
			%>
		</select>
		<hr />
		기사 제목:<input type="text" placeholder="제목을 입력하세요." name="subject"
			style="width: 500px" /><br />
		<hr />
		기사 내용:
		<textarea name="contents" placeholder="내용을 입력하세요."
			style="width: 500px; height: 300px"></textarea>
		<input type="submit" value="기사 등록!" />
		<!-- submit을 누르는 순간 do파일에 값을 전달합니다. -->
	</form>
</body>
</html>