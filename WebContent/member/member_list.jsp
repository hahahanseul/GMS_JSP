<%@page import="java.util.Set"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_head.jsp" %>
<%@ include file="member_service.jsp" %>
<div id="container">
	<div id="sub_title">회원 목록 </div>
	<table id="member_tab">
		<tr id="member_menu">
			<th>No.</th>
			<th>아이디</th>
			<th>이름</th>
			<th>생년월일</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>전 공</th>
			<th>학 점</th>
			<th>등록일</th>
			<th>수정/삭제</th> 
		</tr>
		<%	
			for(int i=0;i<getList(request).size();i++){
				Map<String, String> result=getList(request).get(i); %>
			<tr id="member_menu">
				<td><%=i+1%></td>		
				<td><%=result.get("id")%></td>
				<td><a href="member_detail.jsp?id=<%=result.get("id")%>"><%=result.get("name")%></a></td>
				<td><%=result.get("ssn")%></td>
				<td><%=result.get("phone")%></td>
				<td><%=result.get("email")%></td>
				<td><%=result.get("major")%></td>
				<td>A</td>
				<td><%=result.get("regdate")%></td>
				<td><a href="member_update.jsp?id=<%=result.get("id")%>">수정</a>/<a href="service_delete.jsp?id=<%=result.get("id")%>">삭제</a></td> 
			</tr>	
			<%}
			%>
	</table>
	</div>
<%@ include file="../common/footer.jsp" %>