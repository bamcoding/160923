<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>기사 등록하기</title>
</head>
<body>
<h1>기사 등록하기</h1>
<form name="insertArtcl" method="post" action="./doInsertArtcl.jsp">
<!-- 
	public String subject;
	public String content;
 -->
<input name="subject" type="text" placeholder="제목을 입력해주세요." style="width:400px;">
<hr/>
<textarea name="content" placeholder="내용을 입력해주세요." style="width:400px;height:400px;"></textarea>

<hr/>
<input type="submit" value="등록하기"/>
<input type="button" value="취소" onclick="location.href='./artcl.jsp'"/>
</form>
</body>
</html>