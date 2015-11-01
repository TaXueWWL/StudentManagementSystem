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
<body style='background-color:cornsilk;'>
<jsp:include page="header-admin.html"></jsp:include>
	<% 	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	Connection connection = new conn().getCon();

	stmt = connection.createStatement();
	System.out.print("数据库连接成功");
	
        String name = null;
		String id = (String) session.getAttribute("id");
		String sql_1 = "select * from studenttable where id='" + id.trim() + "'";
		
		try {
			rs = stmt.executeQuery(sql_1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		if(rs.next())
		{
		   name = rs.getString("name");
		}
		
		String sql = "delete from studenttable where id='" + id.trim() + "'";
		
		try {
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	%>
	<br><br><br><br><br><br>
	<table width="100%"><tr>

	<td align="center"><font color="red"><h1>【删除学生信息成功】</h1></font></td>

	</tr>
	</table>
	
	
	<br>
	
	<center>

		<h2><font color="blue"><%=name%></font>已经被删除！</h2>
		<br><br>
		<a href="deletestudent.jsp"><button type="reset" class="btn btn-warning btn-lg" id="back" name="back" value="返回">返回</button></a>
	</center>
    <jsp:include page="footer.html"></jsp:include>
</body>
</html>