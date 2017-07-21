<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">
<title>학생정보 추가</title>
<link rel="stylesheet" href="../css/member.css" />
</head>
<body>
<div id="wrapper">
	<header>
		<h1 id="title">학생정보 추가</h1>
		<a id="go_main" href="../index.jsp">메인으로 가기</a><br>
	</header>
	<hr/>
	<div id="container">
		<form id="join_form" action="">
			<fieldset>
			<legend>join information</legend>
			<span id="join_id">ID</span>
			<input type="text" name="id" placeholder="아이디"/>
			<span id="join_name">NAME</span>
			<input type="text" name="name" placeholder="이름"/>
			<span id="join_pass">PASSWORD</span>
			<input type="password" name="pw" placeholder="비밀번호" /><br />
			<span id="join_birth">BIRTH</span>
			<input type="date" name="birthday" placeholder="생년월일"/><br /><br>
	 		<input type="radio" name="gender" value="female" checked> 여성
			<input type="radio" name="gender" value="male"> 남성<br>
			<span id="join_email">email</span><input type="email" name="email" />
			<br>
			<h3>전공</h3>
			<select name="major" id="">
				<option value="computer"selected>컴퓨터공학</option>
				<option value="economics">경제학</option>
				<option value="art">미술학</option>
				<option value="tourism" >관광학</option>
			</select><br>
			<h3>수강과목</h3>
			<input type="checkbox" name="subject" value="java" checked/>자바<br>
			<input type="checkbox" name="subject" value="c" checked/>C언어<br>
			<input type="checkbox" name="subject" value="html"/>HTML<br>
			<input type="checkbox" name="subject" value="css"/>CSS<br>
			<input type="checkbox" name="subject" value="javascript"/>자바스크립트<br>
			<input type="checkbox" name="subject" value="sql"/>SQL<br />
			<input type="checkbox" name="subject" value="python"/>파이썬 <br />
			<input id="join_yes_btn" type="submit" value="제출"/>
			<input id="join_no_btn" type="reset" value="취소"/>
		</fieldset>
		</form>
	</div>
</div>
</body>
</html>