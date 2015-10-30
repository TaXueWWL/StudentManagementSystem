<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>学生信息管理系统--学生端</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">


</head>
<jsp:include page="isstudentlogin.jsp"></jsp:include>
<body>

	<jsp:include page="header-user.html"></jsp:include>
	<div class="container-fluid">
		<div class="col-md-12">
			<div class="row">
	


				<div class="col-md-12">
                    <p><br><br><br><br>
                    <center>
                        <h1>
                            <marquee><font  color=blue>-学生<font color="red">${sessionScope.id}</font>欢迎使用在线查询系统-</font></marquee>
                        </h1>
                        <%--
                        	String userid = (String) session.getAttribute("id");
                        	if(userid != null) {
                        		out.println(userid);
                        	}
                        --%>
                    <br>
                </center>
                <center><img align="center" src="images/user-logo.png"></center>
                    <center>
                        <p>
                            <ul>
                            	<li><h3>查询记录时，注意核对数据，确认无误方可退出系统;</h3></li>
                                <li><h3>发现信息错误请及时联系系统管理员进行修改等处理;</h3></li>
                                <li><h3>欢迎用户对本系统进行反馈，以便我们更好完善系统;</h3></li>   
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