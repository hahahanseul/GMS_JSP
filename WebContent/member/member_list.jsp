<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_head.jsp" %>
<%@ include file="member_service.jsp" %>s
	<div id="container">
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
		}
		</tr>
		<tr id="member_menu">
			<%for(int i=0;i<searchByName(request).size();i++){

			 %>
			<td><%=i %></td>
			<td><%=%></td>
			<%
		}
		%>
		</tr>
		<tr id="member_menu">
			<td>1</td>
			<td>hong</td>
			<td>홍길동</td>
			<td>562021-2145102</td>
			<td>2017-07-29</td>
			<td>010-0000-0000</td>
			<td>redroadtown@gmail.com</td>
			<td>computer</td>
			<td>g</td>
		</tr>
		<tr id="member_menu">
			<td>1</td>
			<td>hong</td>
			<td>홍길동</td>
			<td>562021-2145102</td>
			<td>2017-07-29</td>
			<td>010-0000-0000</td>
			<td>redroadtown@gmail.com</td>
			<td>computer</td>
			<td>g</td>
		</tr>
		<tr id="member_menu">
			<td>1</td>
			<td>hong</td>
			<td>홍길동</td>
			<td>562021-2145102</td>
			<td>2017-07-29</td>
			<td>010-0000-0000</td>
			<td>redroadtown@gmail.com</td>
			<td>computer</td>
			<td>g</td>
		</tr>
		<tr id="member_menu">
			<td>1</td>
			<td>hong</td>
			<td>홍길동</td>
			<td>562021-2145102</td>
			<td>2017-07-29</td>
			<td>010-0000-0000</td>
			<td>redroadtown@gmail.com</td>
			<td>computer</td>
			<td>g</td>
		</tr>
	</table>
	</div>
<%@ include file="../common/footer.jsp" %>