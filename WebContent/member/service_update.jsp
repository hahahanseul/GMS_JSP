<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../member/member_service.jsp" %>
<%
if(update(request).equals("1")){
	%>
	<script>
	alert('회원정보 수정 성공!');
	location.href="<%=root(request)%>/member/member_detail.jsp?id=<%=request.getParameter("id")%>";
	</script>
<%}else{
	%>
		<script>
	alert('회원정보 수정 실패ㅠㅠㅠㅠ');
	location.href="<%=root(request)%>/member/member_detail.jsp?id=<%=request.getParameter("id")%>";
	</script>
	<%
}
%>