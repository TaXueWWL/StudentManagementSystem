<%@page import="com.app.snowalker.bean.studentTable"%>
<%@page import="com.app.snowalker.bean.adminTable"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	studentTable student = (studentTable) session.getAttribute("student");
	if (student == null) {
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
	}
%>
