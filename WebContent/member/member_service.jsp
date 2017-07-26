<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ include file="../constants/db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!
	public Map<String, Object> searchById(HttpServletRequest request){
	Map<String, Object> map = new HashMap<>();
	String id=request.getParameter("search");
	try{
		Class.forName(ORACLE_DRIVER);	
		String sql="SELECT * FROM Member WHERE id=?";
		PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()){
			map.put("id",rs.getString("id"));
			map.put("name",rs.getString("name"));
			map.put("regdate",rs.getString("regdate"));
			map.put("pw",rs.getString("pw"));
			map.put("ssn",rs.getString("ssn"));
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	return map;
/* 	String major=request.getParameter("major");
	String[] birth= (request.getParameter("birthday")).split("/");
	String age = String.valueOf(Integer.parseInt(new SimpleDateFormat("yyyy").format(new Date()))-Integer.parseInt(birth[0]));
	spec = String.format("%s(%s) %s세", name, gender ,age);
	return spec; */
}
public List<Object> searchByName(HttpServletRequest request){
	List<Object> list = new ArrayList<>();
	Map<String, Object> map = new HashMap<>();
	String name=request.getParameter("search");
	try{
		Class.forName(ORACLE_DRIVER);	
		String sql="SELECT * FROM Member WHERE name=?";
		PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement(sql);
		pstmt.setString(1, name);
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
			map.clear();
			map.put("id",rs.getString("id"));
			map.put("name",rs.getString("name"));
			map.put("regdate",rs.getString("regdate"));
			list.add(map);
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	return list;
}
public String update(HttpServletRequest request){
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String rs="";
	try{
	Class.forName(ORACLE_DRIVER);	
	String sql="UPDATE Member SET name=? WHERE id=?";
	PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, id);
	rs=String.valueOf(pstmt.executeUpdate());
	}catch(Exception e){
		e.printStackTrace();
	}
	return rs;
}
public String root(HttpServletRequest request){
	return request.getContextPath();
}
%>