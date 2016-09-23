<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SimpleMVC</title>
</head>
<body>
	${name}님, 환영합니다.<br/><br/>
	${result}<br/>
	CalcVO에 있는 값.. <br/>
	
	${calc.numberOne}<br/>
	${calc.numberTwo}<br/>
	${calc.result}<br/>
	
	CalcList에 있는 값.. <br/>
	${calcList[0].numberOne} ${calcList[0].numberTwo} ${calcList[0].result}<br/>
	${calcList[1].numberOne} ${calcList[1].numberTwo} ${calcList[1].result}<br/>
	${calcList[2].numberOne} ${calcList[2].numberTwo} ${calcList[2].numberOne + calcList[2].numberTwo}
	
</body>
</html>