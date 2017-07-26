<%@page import="java.util.Set"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_head.jsp" %>
<%@ include file="member_service.jsp" %>
<%
	List<Map<String, String>> list = new ArrayList<>();
	Map<String, String> map = null;
	Class.forName(ORACLE_DRIVER);
	ResultSet rs = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement("SELECT * FROM Member").executeQuery();
	while(rs.next()){
		map=new HashMap<>();
		map.put("id",rs.getString("id"));
		map.put("name",rs.getString("name"));
		map.put("ssn",rs.getString("ssn"));
		map.put("regdate",rs.getString("regdate"));
		list.add(map);
	}
%>
<div id="container">
	<div id="sub_title">회원 목록 </div>
	<!--id, name, ssn, regdate,phone,email,major, subject;-->
	<table id="member_tab">
		<tr id="member_menu">
			<th>No.</th>
			<th>ID</th>
			<th>NAME</th>
			<th>SSN</th>
			<th>REGDATE</th>
			<th>PHONE</th>
			<th>EMAIL</th>
			<th>MAJOR</th>
			<th>SUBJECT</th> 
		</tr>
		<%
		int count=list.size();
		for(int i=0;i<list.size();i++){
			Map<String, String> result=list.get(i);%>
		<tr id="member_menu">
			<td><%=count--%></td>			
			<td><%=result.get("id")%></td>
			<td><%=result.get("name")%></td>
			<td><%=result.get("ssn")%></td>
			<td><%=result.get("regdate")%></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
	<%
		}
		%>
		</tr>
	</table>
	</div>
<%@ include file="../common/footer.jsp" %>