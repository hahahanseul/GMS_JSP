<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%!
public String headRoot(HttpServletRequest request){
	return request.getContextPath();
}
public String now(){
	 return new SimpleDateFormat("yyyy년MM월dd일 a hh:mm:ss").format(new Date());
}

%>