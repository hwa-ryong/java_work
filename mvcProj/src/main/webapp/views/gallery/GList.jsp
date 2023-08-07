<%@page import="java.util.ArrayList"%>
<%@page import="model_p.GalleryDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<table border="">
<%
	int i = 0;
	for (GalleryDTO gto : (ArrayList<GalleryDTO>) request.getAttribute("mainData")) {
	i++; 
%>
	<tr>
		<img width="200px" src="/mvcProj/up/<%=gto.getUpfile() %>" alt="" />
	</tr>
	
	<%} %>
</table>