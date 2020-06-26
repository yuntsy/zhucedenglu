<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Connection conn = null;
	PreparedStatement ps = null;
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/userdemo?useSSL=false";
	String username = "root";
	String password = "111111";
	conn = DriverManager.getConnection(url, username, password);
	request.setCharacterEncoding("utf-8");//设置编码方式，防止中文乱码
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String sql = "INSERT users(id,name,pwd) VALUES(?,?,?)";
	ps = conn.prepareStatement(sql);
	ps.setString(1, id);
	ps.setString(2, name);
	ps.setString(3, pwd);
	int row = ps.executeUpdate();
	if (row > 0) {
		response.sendRedirect("./login.jsp");//重定向到登陆页面
	}
%>
