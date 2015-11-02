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


</head>
<jsp:include page="islogin.jsp"></jsp:include>
<jsp:useBean id="connectToDB" class="com.app.snowalker.conn.conn"></jsp:useBean>
<body style='background-color:cornsilk;'>
<jsp:include page="header-admin.html"></jsp:include>
	<% 	Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		Connection connection = new conn().getCon();
		request.setCharacterEncoding("UTF-8");


		stmt = connection.createStatement();
		System.out.print("数据库连接成功");

	%>
	
	<%
		String id = request.getParameter("id");
		String sql_2 = "select * from studenttable where id='" + id + "'";
		try {
			rs = stmt.executeQuery(sql_2);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		rs.next();
		session.setAttribute("id", rs.getString("id"));
	%>
	<br><br><br>
	<table width="100%"><tr>
	<td align="center"><h1><font color="red">【学生${sessionScope.id}信息】</font></h1></td>
	</tr>
	</table>
	
	<br>
	
	
	<center>	
		<form action="modifystudent_3.jsp" method="post" >
			<P>
				姓名：&nbsp; &nbsp;&nbsp;<input type="text" id="name" name="name"
					value="<%=rs.getString("name")%>">
			<P>
				性别： &nbsp;&nbsp;&nbsp;<input type="text" id="gender" name="gender"
					value="<%=rs.getString("gender")%>">
			<P>
				专业： &nbsp;&nbsp;&nbsp;<input type="text" id="major" name="major"
					value="<%=rs.getString("major")%>">
			<P>
				年龄： &nbsp;&nbsp;&nbsp;<input type="text" id="age" name="age"
					value="<%=rs.getString("age")%>">
			<P>
				数学：  &nbsp;&nbsp;&nbsp;<input type="text" id="age" name="age"
					value="<%=rs.getString("age")%>">
			<P>
				C++： &nbsp;&nbsp;&nbsp;<input type="text" id="math" name="math"
					value="<%=rs.getString("math")%>">
			<P>
				数据库： <input type="text" id="database" name="database"
					value="<%=rs.getString("database")%>">
			<P>
				Java：&nbsp; &nbsp;&nbsp;<input type="text" id="Java" name="Java"
					value="<%=rs.getString("Java")%>">
			<P>
				英语： &nbsp;&nbsp;&nbsp;<input type="text" id="english" name="english"
					value="<%=rs.getString("english")%>">
			<P><br>
			<center>
					<button type="submit" class="btn btn-primary btn-lg">确定</button>&nbsp;&nbsp;
					<button type="reset" class="btn btn-success btn-lg">重置</button>
			</P>
			</center>
		</form>
	</center>
    
	<jsp:include page="footer.html"></jsp:include>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>