<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_service.jsp" %>
<%
if(delete(request).equals("1")){
	%>
	<script>
	alert('삭제 성공!');
	location.href="member_list.jsp?action=list";
	</script>
<%}else{
	%>
		<script>
	alert('삭제 실패');
	location.href="member_list.jsp?action=list";
	</script>
	<%
}
%>