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

<style type="text/css">
table {
	font-size: 16px;
}
</style>

</head>
<jsp:include page="islogin.jsp"></jsp:include>
<jsp:useBean id="connectToDB" class="com.app.snowalker.conn.conn"></jsp:useBean>
<body style='background-color: cornsilk;'>
	<jsp:include page="header-admin.html"></jsp:include>

	<div class="container-fluid">
		<div class="col-md-12">
			<div class="row">
				<br>
				<br>
				<br>
				<center>
					<h1>
						<font color="green">学生数据详细列表</font>
					</h1>
				</center>
				<br>
				<%
					java.sql.ResultSet rs = null;
					Connection connection = new conn().getCon();

					Statement statement = connection.createStatement();

					System.out.print("数据库连接成功");

					rs = statement.executeQuery("select * from studenttable");
				%>
				<center>
					<img src="images/search-logo.png" width="89" height="89">
				</center>
				<p>
					<br>
				<center>
					<table width="80%" border="2">
						<tr>
							<th width="10%">学号</th>
							<th width="12%">姓名</th>
							<th width="9%">性别</th>
							<th width="10%">专业</th>
							<th width="9%">年龄</th>

							<th width="10%">高等数学</th>
							<th width="10%">C++</th>
							<th width="10%">数据库</th>
							<th width="10%">Java</th>
							<th width="10%">英语</th>
						</tr>

						<%
							while (rs.next()) {
						%>
						<tr>
							<td><%=rs.getString("id")%></td>
							<td><%=rs.getString("name")%></td>
							<td><%=rs.getString("gender")%></td>
							<td><%=rs.getString("major")%></td>
							<td><%=rs.getString("age")%></td>

							<td><%=rs.getString("math")%></td>
							<td><%=rs.getString("cpp")%></td>
							<td><%=rs.getString("database")%></td>
							<td><%=rs.getString("Java")%></td>
							<td><%=rs.getString("english")%></td>
						</tr>
						<%
							}
						%>
					</table>
					<center>
						<h1>
							<font color="green">数据取出完毕</font>
						</h1>
					</center>


					<%
						} catch (SQLException e) {
						e.printStackTrace();
					%>
				
			</div>
		</div>
	</div>





	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<jsp:include page="footer.html"></jsp:include>
</body>
</html>