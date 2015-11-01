<%@page import="com.app.snowalker.conn.conn"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>管理员界面</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">

<%
	request.setCharacterEncoding("utf-8");
%>

<title>删除学生信息</title>
</head>
<jsp:include page="islogin.jsp"></jsp:include>
<jsp:useBean id="connectToDB" class="com.app.snowalker.conn.conn"></jsp:useBean>
<body  style='background-color:cornsilk;'>
<jsp:include page="header-admin.html"></jsp:include>
	<% 	Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		Connection connection = new conn().getCon();

		stmt = connection.createStatement();
		System.out.print("数据库连接成功");
	
		String id = null;
		String password = null;
		String name = null;
		String gender = null;
		String major = null;
		String age = null;
		String math = null;
		String cpp = null;
		String database = null;
		String Java = null;
		String english = null;
		String sql = null;
				
		
		id = request.getParameter("id");
		sql = "select * from studenttable where id='" + id.trim() + "'";
		rs = stmt.executeQuery(sql);
		if (rs.next()) {
			name = rs.getString("name");
			gender = rs.getString("gender");
			major = rs.getString("major");
			age = rs.getString("age");
			math = rs.getString("math");
			cpp = rs.getString("cpp");
			database = rs.getString("database");
			Java = rs.getString("Java");
			english = rs.getString("english");
		}
		session.setAttribute("id", id);
	%>
	<center><br><br><br><br><br>
		<font color="red"><h1>--确定删除吗？--</h1></font>
		<hr>
		

	
		<P>
			<h4>姓名：<%=name%></h4></P>
		<P>
			<h4>性别：<%=gender%></h4>
		<P>
			<h4>专业: <%=major%></h4>
		<P>
			<h4>年龄: <%=age%></h4>
		<P>
			<h4>数学: <%=math%></h4>
		<P>
			<h4>C++: <%=cpp%></h4>
		<P>
			<h4>数据库: <%=database%></h4>
		<P>
			<h4>Java: <%=Java%></h4>
		<P>
			<h4>英语: <%=english%></p></h4>
		<P>

		<form action="deletestudent_3.jsp" method="post">
			<button type="submit" class="btn btn-primary btn-lg">确定</button>&nbsp;&nbsp;
			<button type="reset" class="btn btn-primary btn-lg" id="back" name="back" value="返回" onclick="javascript:history.go(-1)">返回</button>
		</form>
		
		
		</center>
    	<jsp:include page="footer.html"></jsp:include>
</body>
</html>