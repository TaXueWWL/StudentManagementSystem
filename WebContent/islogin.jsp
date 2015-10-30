<%@page import="com.app.snowalker.bean.adminTable"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	adminTable admin = (adminTable) session.getAttribute("admin");
	if (admin == null) {
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
	}
%>
