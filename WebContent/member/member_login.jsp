<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_head.jsp" %>
	<div id="container" class="margin-auto" style="width:400px">
	<form action="">
	<fieldset>
	<legend>log-in information</legend>
	<img src="<%=headRoot(request)%>/img/img.jpg" style="width:300px;height:400px;"alt="" /><br />
		<span id="login_id">ID</span>
		<input type="text" />
		<span id="login_pass">PASSWORD</span>
		<input type="password" /><br />
		<input id="login_btn" type="submit" value="로그인"></input>
		<input id="cancel_btn" type="submit" value="취소"></input>
	</fieldset>
	</form>
	</div>
<%@ include file="../common/footer.jsp" %>