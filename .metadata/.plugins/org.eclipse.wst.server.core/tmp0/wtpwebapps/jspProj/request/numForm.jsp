<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int cnt = 5;
	
	if(request.getParameter("cnt")!=null){
		cnt = Integer.parseInt(request.getParameter("cnt"));
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>numForm</title>
<script type="text/javascript">
	function cntChange() {
		qwer.action="?"
		qwer.submit()
	}
</script>
</head>
<body>
<h1>numForm</h1>
<form action="numReg.jsp" name="qwer">
	<table border="">
			<tr>
				<td colspan="2" align="right">
					칸수:
					<select name="cnt" id="" onchange="cntChange()">
					<% for(int i = 5; i<=30; i+=5){ 
						String sel = "";
						
						if(i==cnt){
							sel = "selected";
						}
					
					%>
						<option <%=sel %> ><%=i %></option>
						
						<%} %>
					</select>
				</td>
			</tr>
			
			
			<% for(int i = 1; i<6; i++){ %>
			<tr>
				<td><%=i %></td>
				<td><input type="text" name="이름" value=""/></td>
				<td><input type="text" name="국어" value="<%=(int)(Math.random()*100)+10 %>"/></td>
				<td><input type="text" name="영어" value="<%=(int)(Math.random()*100)+10 %>"/></td>
				<td><input type="text" name="수학" value="<%=(int)(Math.random()*100)+10 %>"/></td>
			</tr>
			<%} %>
			<tr>
				<td colspan="5" align="center">
					<input type="submit" value="입력" />
				</td>
			</tr>
	</table>
</form>

</body>
</html>