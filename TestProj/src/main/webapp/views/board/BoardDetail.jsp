<%@page import="model.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	BoardDTO dto = (BoardDTO)request.getAttribute("mainData");
%>

<table border="">
	<tr>
		<td width="200px">번호<%=dto.getId() %></td>
	</tr>
	<tr>
		<td>제목</td><td><%=dto.getTitle() %></td>
	</tr>
	<tr>
		<td>작성자</td><td><%=dto.getId() %></td>
	</tr>
	<tr>
		<td>작성일</td><td><%=dto.getId() %></td>
	</tr>
	<tr>
		<td>조회수</td><td><%=dto.getId() %></td>
	</tr>
	<tr>
		<td>파일</td><td><%=dto.getId() %></td>
	</tr>
	<tr>
		<td>내용</td><td><%=dto.getId() %></td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<a href="BoardList">목록으로</a>
		</td>
	</tr>
</table>