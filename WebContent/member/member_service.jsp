<%@page import="java.sql.Connection"%>
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
public String root(HttpServletRequest request){
	return request.getContextPath();
}
public String showMain(HttpServletRequest request){
	String result="";
	String rsPass="";
	String id = request.getParameter("id");
	String pass = request.getParameter("pw");
	try{
		Class.forName(ORACLE_DRIVER);
		Connection conn =DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD);
		String sql = "SELECT * FROM Member WHERE id =?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()){
			rsPass=rs.getString("pw");
			if(rsPass.equals(pass)){
				result="success";
			}else{
				result="fail";
			}
		}else{
			result="invalidId";
		}
	}catch(Exception e){
		e.printStackTrace();
	}

	return result;
}

public String addMember(HttpServletRequest request){
	String rs = "";
	try{
		Class.forName(ORACLE_DRIVER);
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String password = request.getParameter("pw");
		String birth=request.getParameter("birthday");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String[] subjects = request.getParameterValues("subject");
		//id, name, pw, ssn, regdate, phone, email, major_id, profile (subj_id 이건 아직 안함)
		String sql="INSERT INTO Member VALUES (?,?,?,?,SYSDATE,?,?,?,?)";
		PreparedStatement pstmt= DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, password);
		pstmt.setString(4, "");
		pstmt.setString(5, phone);
		pstmt.setString(6, email);
		pstmt.setString(7, "");
		pstmt.setString(8, "defaultimg.jpg");
		rs=String.valueOf(pstmt.executeUpdate());
	}catch(Exception e){
		e.printStackTrace();
	}
	return rs;
}
public List<Map<String, String>> getList(HttpServletRequest request){
	List<Map<String, String>> list=new ArrayList<>();
	Map<String, String> map = null;
	PreparedStatement pstmt = null;
	try{
		Class.forName(ORACLE_DRIVER);	
		if(request.getParameter("action").equals("list")){
			pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement("SELECT * FROM Member");
		}else{
			String name = request.getParameter("name");
			pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement("SELECT * FROM Member WHERE name=?");
			pstmt.setString(1, name);
		}
		
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
			map=new HashMap<>();
			map.put("id",rs.getString("id"));
			map.put("name",rs.getString("name"));
			map.put("regdate",rs.getString("regdate"));
			map.put("pw",rs.getString("pw"));
			map.put("ssn",rs.getString("ssn"));
			map.put("phone",rs.getString("phone"));
			map.put("email",rs.getString("email"));
			map.put("major",rs.getString("major_id"));
			list.add(map);
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	return list;
}
public Map<String, String> searchById(HttpServletRequest request){
	Map<String, String> map = new HashMap<>();
	String id=request.getParameter("id");
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
			map.put("phone",rs.getString("phone"));
			map.put("email",rs.getString("email"));
			map.put("major",rs.getString("major_id"));
			map.put("profile",rs.getString("profile"));
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	return map;
}
public String updateEmail(HttpServletRequest request){
	List<String> list = new ArrayList<>();
	String domain="@test.com";
	String id="";
	String result="";
	try{
		ResultSet rs= DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement("SELECT id FROM Member").executeQuery();
		while(rs.next()){
		   list.add(rs.getString("id"));
		}
		for(int i=0;i<list.size();i++){
			id=list.get(i);
			PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement("UPDATE Member SET email=? WHERE id=?");
			pstmt.setString(1, id+domain);
			pstmt.setString(2, id);
			result=String.valueOf(pstmt.executeUpdate());
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	return result;
}
public String update(HttpServletRequest request){
	String rs="";
	String id = request.getParameter("id");
	Map<String, String> temp = searchById(request);
	String phone = (request.getParameter("phone").equals(""))? temp.get("phone") :request.getParameter("phone");
	String email = (request.getParameter("email").equals(""))? temp.get("email") :request.getParameter("email");
	String major = (request.getParameter("major").equals(""))? temp.get("major") :request.getParameter("major");
	try{
	Class.forName(ORACLE_DRIVER);	
	String sql="UPDATE Member SET phone=?, email=?, major_id=? WHERE id=?";
	PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement(sql);
	pstmt.setString(1, phone);
	pstmt.setString(2, email);	
	pstmt.setString(3, major);
	pstmt.setString(4, id);
	rs=String.valueOf(pstmt.executeUpdate());
	}catch(Exception e){
		e.printStackTrace();
	}
	return rs;
}
public String delete(HttpServletRequest request){
	String id = request.getParameter("id");
	String rs="";
	try{
	Class.forName(ORACLE_DRIVER);	
	String sql="DELETE FROM Member WHERE id=?";
	PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement(sql);
	pstmt.setString(1, id);
	rs=String.valueOf(pstmt.executeUpdate());
	}catch(Exception e){
		e.printStackTrace();
	}
	return rs;
}
%>