<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ include file="../member/member_service.jsp" %>
<%
if(update(request).equals("1")){
	%>
	<script>
	alert('회원정보 수정 성공!');
	location.href="<%=root(request)%>/member/member_detail.jsp?search=<%=request.getParameter("id")%>";
	</script>
<%}else{
	%>
		<script>
	alert('회원정보 수정 실패ㅠㅠㅠㅠ');
	</script>
	<%
}
%>