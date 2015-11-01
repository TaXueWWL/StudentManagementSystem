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


</head>
<jsp:include page="islogin.jsp"></jsp:include>
<jsp:useBean id="connectToDB" class="com.app.snowalker.conn.conn"></jsp:useBean>
<body>
	<jsp:include page="header-admin.html"></jsp:include>
	<%
		Connection connection = new conn().getCon();

		Statement statement = connection.createStatement();

		System.out.print("数据库连接成功");

		PreparedStatement pstmt = null;
		String sql = "INSERT INTO studenttable VALUES(?,?,?,?,?,?,?,?,?,?,?)";

		String sql2 = "INSERT INTO studenttable VALUES('id','password','name','gender','major','age','math','cpp','database','Java','english')";

		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String major = request.getParameter("major");

		String age = request.getParameter("age");
		String math = request.getParameter("math");
		String cpp = request.getParameter("cpp");
		String database = request.getParameter("database");
		String Java = request.getParameter("Java");
		String english = request.getParameter("english");

		try {
			statement.execute(sql2);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		try {

			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			pstmt.setString(3, name);
			pstmt.setString(4, gender);
			pstmt.setString(5, major);
			pstmt.setString(6, age);
			pstmt.setString(7, math);
			pstmt.setString(8, cpp);
			pstmt.setString(9, database);
			pstmt.setString(10, Java);
			pstmt.setString(11, english);

			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		out.print(id + "" + password + "" + math + "" + english);
	%>

	<div class="container-fluid">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-12">
				<br> <br><br><br><br>

				<center>
					<h1>学生数据添加成功!</h1>
				</center>

				<center>
					<br>
					<h3>
						<font color="red"><%=name%></font>
						</h3>
							的信息已添加到数据库!
							<br><br>
							<form action="insertform.jsp" method="post">
								<button type="submit" class="btn btn-primary btn-lg">返回</button>
							</form>
				</center>


				</div>
			</div>
		</div>
	</div>



	<jsp:include page="footer.html"></jsp:include>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>