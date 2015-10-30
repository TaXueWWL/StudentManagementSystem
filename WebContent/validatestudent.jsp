<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 验证页面，成功则重定向 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>validatestudent page</title>
</head>
<body>


	
	<!-- 学生验证 -->
	<jsp:useBean id="student" class="com.app.snowalker.bean.studentTable"></jsp:useBean>
	<jsp:useBean id="studentservice" class="com.app.snowalker.service.studentservice"></jsp:useBean>
	

	
	<!-- 封装表单数据    student -->
	<jsp:setProperty property="*" name="student" />

	
	<%--student验证 --%>
	<%
		String id = request.getParameter("id");

		
		if (studentservice.validateStudent(student)) {
			//将当前jsp页面中的student实例存储在名为student的session字段中
			session.setAttribute("student", student);
			session.setAttribute("id", id);
	%>
	<jsp:forward page="studentquerypage.jsp"></jsp:forward>
	<%
		} else {
	%>
	<jsp:forward page="index.jsp"></jsp:forward>
	<%
		}
	%>
</body>
</html>