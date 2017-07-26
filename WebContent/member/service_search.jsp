<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/common_service.jsp" %>
<%
String option=request.getParameter("option");
String search=request.getParameter("search");
switch(option){
case "id":
	%>
	<script>
	location.href="<%=headRoot(request)%>/member/member_detail.jsp?search=<%=search%>";
	</script>
	<%
	break;
case "name":
	%>
	<script>
	location.href="<%=headRoot(request)%>/member/member_list.jsp?search=<%=search%>";
	</script>
<%	
	break;
	
}
%>