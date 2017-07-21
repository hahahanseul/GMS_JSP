<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">
<title>관리자 로그인</title>
<link rel="stylesheet" href="../css/member.css" />
</head>
<body>
<div id="wrapper">
	<header>
		<h1 id="title">관리자 로그인</h1>
		<a id="go_main" href="../index.jsp">메인으로 가기</a><br>
	</header>
	<hr/>
	<div id="container" class="margin-auto" style="width:400px">
	<form action="">
	<fieldset>
	<legend>log-in information</legend>
	<img src="../img/img.jpg" style="width:300px;height:400px;"alt="" /><br />
		<span id="login_id">ID</span>
		<input type="text" />
		<span id="login_pass">PASSWORD</span>
		<input type="password" /><br />
		<input id="login_btn" type="submit" value="로그인"></input>
		<input id="cancel_btn" type="submit" value="취소"></input>
	</fieldset>
	</form>
	</div>
</div>
</body>
</html>