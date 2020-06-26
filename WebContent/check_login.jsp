<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/userdemo";
	String username = "root";
	String password = "111111";
	conn = DriverManager.getConnection(url, username, password);
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String sql = "SELECT *FROM users WHERE name ='" + name + "'AND pwd = '" + pwd + "'";
	ps = conn.prepareStatement(sql);
	rs = ps.executeQuery();
	if (rs.next()) {
		response.sendRedirect("./index.jsp");
	}
	else{
		response.sendRedirect("./login.jsp");
		//response.sendRedirect("./login.jsp");
	}
%>