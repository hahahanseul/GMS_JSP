<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../member/member_service.jsp" %>
<%
String result=showMain(request);
switch(result){
case"success":
	%> <script>
	alert('환영합니당!');
	location.href="<%=request.getContextPath()%>/common/main.jsp";
	</script>
	<%
	break;
case"fail":
	%>
	<script>
alert('잘못된 비밀번호');
location.href="<%=request.getContextPath()%>/index.jsp";
</script>
	<%
	break;
case"invalidId":
	%>
	<script>
	alert('없는 ID.. 회원가입 바랍니다.');
	location.href="<%=request.getContextPath()%>/member/member_add.jsp";
	</script>
	<%
	break;
}
%>