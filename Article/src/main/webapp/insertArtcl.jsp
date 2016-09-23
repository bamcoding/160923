<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>기사 등록하기</title>
</head>
<body bgcolor=eedddd>
<h1>기사 등록하기</h1>
<form name="insertArtcl" method="post" action="./doInsertArtcl.jsp">
<!-- 
	public String subject;
	public String content;
 -->
 
<hr/>
<table style="border:1px solid black; border-collaps:collaps; width:400px;height:400px">
	<tr style="height: 10%;"><th>제목</th><td>
<input name="subject" type="text" placeholder="제목을 입력해주세요." style="width:98%;">
	</td></tr>
	<tr><th>내용</th><td>
<textarea name="content" placeholder="내용을 입력해주세요." style="width:98%;height:100%;"></textarea>
</td></tr></table>

<hr/>
<input type="submit" value="등록하기"/>
<input type="button" value="취소" onclick="location.href='./artcl.jsp'"/>
</form>
</body>
</html>