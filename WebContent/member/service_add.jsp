<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_head.jsp" %>
<%@ include file="../constants/db.jsp" %>
<%
Class.forName(ORACLE_DRIVER);
String id = request.getParameter("id");
String password = request.getParameter("pw");
String name = request.getParameter("name");
String birth=request.getParameter("birthday");
String[] subjects = request.getParameterValues("subject");
String sql="INSERT INTO Member VALUES (?,?,?,?,SYSDATE)";
PreparedStatement pstmt= DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement(sql);
pstmt.setString(1, id);
pstmt.setString(2, name);
pstmt.setString(3, password);
pstmt.setString(4, "");
String rs ="";
rs=String.valueOf(pstmt.executeUpdate());
if(rs.equals("1")){
	%>
	<script>
	alert('회원가입 성공');
	location.href="<%=headRoot(request)%>/index.jsp";
	</script>
	<%
	
}else{%>
	<script>
	alert('다시 가입해주세요');
	location.href="<%=headRoot(request)%>/member/member_add.jsp";
	</script>

	<%
}
%>

	