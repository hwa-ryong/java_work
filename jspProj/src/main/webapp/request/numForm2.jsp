<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>numForm</title>

</head>
<body>
<h1>numForm</h1>
<form action="numReg.jsp" name="qwer">
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
				<td><input type="text" name="name"></td>
				
				<td><input type="text" name="kor" value="<%=(int)(Math.random()*100)%>"/></td>
				
				<td><input type="text" name="eng" value="<%=(int)(Math.random()*100) %>"/></td>
				
				<td><input type="text" name="math" value="<%=(int)(Math.random()*100) %>"/></td>
				
				<td><input type="text" name="sum" value=" "/></td>
				
				<td><input type="text" name="avg" value=" "/></td>
			</tr>
			<%} %>
			<tr>
				<td colspan="7" align="right">
					<input type="submit" value="입력" />
				</td>
			</tr>
	</table>
</form>

</body>
</html>