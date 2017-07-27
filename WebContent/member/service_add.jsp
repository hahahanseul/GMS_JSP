<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_service.jsp" %>
<%
if(addMember(request).equals("1")){
	%>
	<script>
	alert('회원가입 성공');
	location.href="<%=root(request)%>/index.jsp";
	</script>
	<%
	
}else{%>
	<script>
	alert('다시 가입해주세요');
	location.href="<%=root(request)%>/member/member_add.jsp";
	</script>
	<%
}
%>

	