<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<title>测试环境</title>
</head>
<body>
<jsp:include page="header-admin.html"></jsp:include>
	<%
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String str = "";
		//加载驱动程序  
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
		}

		//建立数据库连接
		try {
			String url = "jdbc:mysql://localhost/studentmanagementsystem?useUnicode=true&characterEncoding=utf-8";
			String user = "snowalker";
			String password = "admin";
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
		} catch (SQLException ee) {
		}

		//建立表
		str = "create table student2(id varchar(20),name varchar(20),gender varchar(2),address varchar(50),phone varchar(20),major varchar(30))";
		try{
			stmt.executeUpdate(str);
		}catch(SQLException e){
			e.printStackTrace();
		}

		//添加数据
		str = "insert into student2 values('2014000001','王五','男','太原市迎泽西大街79号','14800000000','计算机')";
		try {
			stmt.executeUpdate(str);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	%>
	<div>
	<center>基本信息</center>
	<table  border="1" width="95%" align="center" bordercolorlight="#CC99FF" cellpadding="2" bordercolordark="#FFFFFF" cellpadding="0">
		<tr>
			<th>学号</th>
			<th>姓名</th>
			<th>性别</th>
			<th>地址</th>
			<th>电话</th>
			<th>专业</th>
		</tr>
		<%
			//获取并浏览数据
			str = "select * from student2";
			try {
				rs = stmt.executeQuery(str);
				while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("id")%></td>
			<td><%=rs.getString("name")%></td>
			<td><%=rs.getString("gender")%></td>
			<td><%=rs.getString("address")%></td>
			<td><%=rs.getString("phone")%></td>
			<td><%=rs.getString("major")%></td>
		</tr>
		<%
			}
			}

			catch (SQLException e) {
				e.printStackTrace();
			}
			//释放资源
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		%>
	</table>
	</div>
</body>
<jsp:include page="footer.html"></jsp:include>
</html>