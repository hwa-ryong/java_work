<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String mainUrl = "board/"+request.getAttribute("mainPage")+".jsp";

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
<table border="">
	<tr>
		<td><jsp:include page="inc/header.jsp"/>헤더</td>
	</tr>
	<tr>
		<td><jsp:include page="<%=mainUrl %>"/>메인</td>
	</tr>
	<tr>
		<td><jsp:include page="inc/footer.jsp"/>푸터</td>
	</tr>
</table>
</body>
</html>