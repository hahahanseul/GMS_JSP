<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../member/member_service.jsp" %>
<script>
<%if(updateEmail(request).equals("1")){%>
	alert('이메일 수정 완료');
	location.href="<%=request.getContextPath()%>/index.jsp";
<%}else{%>
	alert('이메일 수정 실패');
	location.href="<%=request.getContextPath()%>/index.jsp";
<%
}%>
</script>
