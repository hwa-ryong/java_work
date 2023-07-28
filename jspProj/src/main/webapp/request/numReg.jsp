<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>numReg</title>
<script>
<%
	String [] nameArr = request.getParameterValues("name");
	String [] korArr = request.getParameterValues("kor");
	String [] engArr = request.getParameterValues("eng");
	String [] mathArr = request.getParameterValues("math");
	
	int[] sum = new int[5];
	int[] avg = new int[5];
	
	for(int i=0; i<5; i++){
		sum[i] = Integer.parseInt(korArr[i])
				+ Integer.parseInt(engArr[i])
				+ Integer.parseInt(mathArr[i]);
		
		avg[i] = sum[i] / 3;
	}


%>

</script>
</head>
<body>
<h1>numReg</h1>
<table border="">
	<tr>
		<td>이름</td>
		<td>국어</td>
		<td>영어</td>
		<td>수학</td>
		<td>총점</td>
		<td>평균</td>
	</tr>
	
	
	<% for(int i = 0; i<5; i++){ %>
	<tr>
		
		<td><input type="text" name="name" value="<%=nameArr[i] %>"/></td>
		
		<td><input type="text" name="kor" value="<%=korArr[i] %>"/></td>
		
		<td><input type="text" name="eng" value="<%=engArr[i] %>"/></td>
		
		<td><input type="text" name="math" value="<%=mathArr[i] %>"/></td>
		
		<td><input type="text" name="sum" value="<%=sum[i] %> "/></td>
			
		<td><input type="text" name="avg" value="<%=avg[i] %>"/></td>
	
	</tr>
	<%} %>
	
	<tr>
		<td colspan="7" align="right">
			<input type="submit" value="입력" />
		</td>
	</tr>
</table> 
	

</body>
</html>