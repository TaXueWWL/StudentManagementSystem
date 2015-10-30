<%@page import="com.app.snowalker.bean.studentTable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>学生信息管理系统</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">


</head>

<body>

<!-- 学生验证 -->
	<jsp:useBean id="student" class="com.app.snowalker.bean.studentTable"></jsp:useBean>
	<jsp:useBean id="studentservice" class="com.app.snowalker.service.studentservice"></jsp:useBean>
	

	
	<!-- 封装表单数据    student -->
	<jsp:setProperty property="*" name="student" />


	<jsp:include page="header-default.html"></jsp:include>
	<div class="container-fluid">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-4">
				<p><br><br><br><br>
					<center>
						<h1>
							<font color="green">学生登录</font>
						</h1>
						</center>
					<br>
					<br>
					<br>

					<form  action="validatestudent.jsp" name="studentlogin" method="post">
					</form>
					
					
					<form class="form-actions" action="validatestudent.jsp" method="post">
					<center>
						<label>账号<input type="text" id="studentid" name="id"/></label><br>
						<label>密码<input type="password" id="password"name="password"></label>
					</center>
						<center>
						<br>
						<button type="submit" class="btn btn-primary">提交</button>
						<button type="reset" class="btn alert-danger">重置</button>
						</center>
					</form>
				</div>
				
				
				
					
				


				<div class="col-md-8">
                    <p><br><br><br><br>
                    <center>
                        <h1>
                            <font color="green">欢迎使用学生成绩在线查询网站</font>
                        </h1>
                        
                    <br>
                </center>
                <center><img align="center" src="images/github-logo.jpg"></center>
                    <center>
                        <p>
                            <ul>
                                <li><h3>开发:武文良(snowalker)</h3></li>
                                <li><h3>前台:bootstrap,jquery,JSP</h3></li>
                                <li><h3>后台:Servlet,scriptlet,JavaBean</h3></li>
                                <li><h3>数据库:Mysql</h3></li>
                            </ul>
                        
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