<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주민번호</title>
<script>
<%	
	String [] name2 = request.getParameterValues("name");
	String [] gender2 = request.getParameterValues("gender");
	String [] age2 = request.getParameterValues("age");
	String [] number2 = request.getParameterValues("number");
	
	int[] number = new int [13];
	
	
	if(number[6] == 5 || number[6] == 6 || number[6] == 7 || number[6] == 8) {
		response.sendRedirect("foreign.jsp");
	}else if(number[6] == 1 || number[6] == 2 || number[6] == 3 || number[6] == 4) {
		response.sendRedirect("LoginForm.jsp");
	}
	
	
%>
</script>
</head>
<body>
	<h2>주민등록번호</h2>
</body>
</html>