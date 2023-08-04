<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table>
	<tr>
		<td colspan="4" width="900px" align="center">
			<h1><%=request.getAttribute("mainTitle") %></h1>
		</td>
	</tr>
	<tr align="center">
		<td><a href="/TestProj/info">회사 소개</a></td>
		<td><a href="/TestProj/product">제품</a></td>
		<td><a href="/TestProj/gallery">갤러리</a></td>
		<td><a href="/TestProj/board/BoardList">게시판</a></td>
	</tr>
</table>