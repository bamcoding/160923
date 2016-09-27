<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${article.subject }</title>
</head>
<h1>${article.subject }</h1>
<body bgcolor="eedddd">
	<hr/>
	<table
		style="border-collaps: collaps; border: 1px solid black; width: 400px; height: 400px">
		<tr  bgcolor=fffffff  style="height: 10%">
			<th style="width:20%">제목</th>
			<td>${article.subject }</td>
		</tr>
		<tr  bgcolor=fffffff >
			<th style="width:20%">내용</th>
			<td>${article.content }</td>
		</tr>
	</table>
	<hr/>
	<form>
		<input type="button" value="삭제" onclick="location.href='./delete?artclId='${article.artclId}'" /> 
		<input
			type="button" value="돌아가기" onclick="location.href='./article'" />
	</form>
</body>
</html>