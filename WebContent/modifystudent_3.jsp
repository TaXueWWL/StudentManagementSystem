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
<body style='background-color: cornsilk;'>
	<jsp:include page="header-admin.html"></jsp:include>
	<%
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;

		Connection connection = new conn().getCon();
		request.setCharacterEncoding("UTF-8");

		stmt = connection.createStatement();
		System.out.print("数据库连接成功");
	%>

	<br>
	<br>
	<br>
	<%
		String name = null;
		String gender = null;
		String major = null;
		String age = null;
		String math = null;
		String cpp = null;
		String database = null;
		String Java = null;
		String english = null;

		String id = (String) session.getAttribute("id");
		String sql = "select * from studenttable where id='" + id.trim() + "'";
		rs = stmt.executeQuery(sql);
		if (rs.next()) //如果学生存在
		{
			name = request.getParameter("name");
			gender = request.getParameter("gender");
			major = request.getParameter("major");
			age = request.getParameter("age");
			math = request.getParameter("math");
			cpp = request.getParameter("cpp");
			database = request.getParameter("database");
			Java = request.getParameter("Java");
			english = request.getParameter("english");
		}

		String sql_1 = "update studenttable set name='" + name + "', gender='" + gender + "',major='" + major
				+ "',age='" + age + "',math='" + math + "',cpp='" + cpp + "',Java='" + Java + "',english='"
				+ english + "'where id='" + id.trim() + "'";

		try {
			stmt.executeUpdate(sql_1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	%>

	<table width="100%">
		<tr>
			<br>
			<br>
			<br>
			<td align="center"><h1>
					<font color="green">【修改学生信息成功！】</font>
				</h1></td>

		</tr>
	</table>

	<br>


	<center>

		<br>
		<h3>
			<font color="red"><%=name%></font> 的信息已经修改完毕！
		</h3>
		<br>
		<form action="modifystudent.jsp" method="post">
			<button type="submit" class="btn btn-info  btn-lg active">确认</button>
		</form>
	</center>


	<jsp:include page="footer.html"></jsp:include>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>