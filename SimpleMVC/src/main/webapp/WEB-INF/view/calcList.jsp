<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

${calcList} <br/>
<!-- 애를 반복하며 출력함.. -->
<c:forEach items="${calcList}" var="calc">
	${calc.numberOne} + ${calc.numberTwo} = ${calc.result}  
</c:forEach>

</body>
</html>