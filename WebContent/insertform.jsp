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
<body>
	<jsp:include page="header-admin.html"></jsp:include>

	<div class="container-fluid">
		<div class="col-md-12">
			<div class="row">

				



				<div class="col-md-12">
					<p>
						<br>
						<br>
						<br>
						<br>
					<form action="insertstudentinfo.jsp" method="post">
						<center>
							<h1>学生个人信息</h1>
							<lable>学号&nbsp;&nbsp;&nbsp;<input type="text"
								placeholder="请输入学号" id="id" name="id"></lable>
							<br>
							<p>
							<p>
								<lable>密码&nbsp;&nbsp;&nbsp;<input type="password"
									placeholder="请输入密码" id="password" name="password"></lable>
								<br>
							<p>
								<lable>姓名&nbsp;&nbsp;&nbsp;<input type="text"
									placeholder="请输入姓名" id="name" name="name"></lable>
								<br>
							<p>
								<lable>性别&nbsp;&nbsp;&nbsp;<input type="text"
									placeholder="请输入性别" id="gender" name="gender"></lable>
								<br>
							<p>
								<lable>专业&nbsp;&nbsp;&nbsp;<input type="text"
									placeholder="请输入专业" id="major" name="major"></lable>
								<br>
							<p>
							
							<lable>年龄&nbsp;&nbsp;&nbsp;<input type="text"
								placeholder="请输入年龄" id="age" name="age"></lable>
							<br>
							<p>
							<h1>本学期成绩</h1>
								<lable>数学&nbsp;&nbsp;&nbsp;<input type="text"
									placeholder="请输入数学成绩" id="math" name="math"></lable>
								<br>
							<p><p>
								<lable>C++&nbsp;&nbsp;&nbsp;<input type="text"
									placeholder="请输入C++成绩" id="cpp" name="cpp"></lable>
								<br>
							<p>
								<lable>数据库<input type="text" placeholder="请输入数据库成绩"
									id="database" name="database"></lable>
								<br>
							<p>
								<lable>Java&nbsp;&nbsp;&nbsp;<input type="text" placeholder="请输入Java成绩"
									id="Java" name="Java"></lable>
								<br>
							<p>
								<lable>英语&nbsp;&nbsp;&nbsp;<input type="text"
									placeholder="请输入英语成绩" id="english" name="english"></lable>
								<br>
							<p>
								
						</center>
						<center>
							<br>
							<button type="submit" class="btn btn-primary btn-lg">提交</button>
							<button type="reset" class="btn alert-danger btn-lg">重置</button>
						</center>
					</form>
				</div>
			</div>
		</div>
	</div>



	<jsp:include page="footer.html"></jsp:include>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>