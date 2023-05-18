<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%
    Connection conn = null;

    try {
        String url = "jdbc:mysql://localhost:3306/yangjung1?serverTimezone=UTC";
        String user = "root";
        String password = "1234";

        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);
        out.println("데이터베이스 연결 성공<br>");
    } catch (SQLException ex) {
        out.println("데이터베이스 연결 실패");
        out.println("SQLException: " + ex.getMessage());
    }
%>