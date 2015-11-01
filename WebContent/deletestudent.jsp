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
		request.setCharacterEncoding("UTF-8");


		stmt = connection.createStatement();
		System.out.print("数据库连接成功");

	%>
	
	<table width="100%"><tr>
	<br><br><br><br><br><br>
	<td align="center"><font color="red"><h1>删除学生信息</h1></font></td>
	</tr>
	</table>
	
	<br>
	
	<center>
		<form action="deletestudent_2.jsp" method="post">
			<h3>请选择要删除的学生：</h3> <br> <select name="id" style="font-size:20px; font-family:'微软雅黑';font-style:bold ;">
		
				<%
					String sql = "select * from studenttable";
					
					String sql1 = "select * from studenttable";
				
					try {
						rs = stmt.executeQuery(sql);
					} catch (SQLException e) {
						e.printStackTrace();
					}
				
					
					
					while (rs.next()) {
						String id = rs.getString("id");
						String name = rs.getString("name");
				%>
				<option value="<%=id%>" ><%=name%>/<%=id%></option>
				<%
					}
				%>
			</select>
			<P>
			<br><br>
			<center>
			<button type="submit" class="btn btn-primary btn-lg">确定</button>
			<button type="reset" class="btn btn-primary btn-lg">重置</button>
			</center>
			
			
			
			</p>
			
		</form>
	</center>
    
	<jsp:include page="footer.html"></jsp:include>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>