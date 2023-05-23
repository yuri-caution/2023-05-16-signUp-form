<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>jsp example</title>
</head>
<body>
    <%@ include file="dbconn.jsp"%>
    <%
        request.setCharacterEncoding("utf-8");

        PreparedStatement pstmt = null;

        String code=request.getParameter("code");
        String name=request.getParameter("name");
        String price=request.getParameter("price");
        String desc=request.getParameter("desc");
        String maker=request.getParameter("maker");
        String cate=request.getParameter("cate");
        String stock=request.getParameter("stock");
        String condition=request.getParameter("condition");

        try {
            String sql="insert into product values(?,?,?,?,?,?,?,?)";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,code);
            pstmt.setString(2,name);
            pstmt.setString(3,price);
            pstmt.setString(4,desc);
            pstmt.setString(5,maker);
            pstmt.setString(6,cate);
            pstmt.setString(7,stock);
            pstmt.setString(8,condition);
            pstmt.executeUpdate();
    %>

        <script>
            alert("완료되었습니다.");
            location.href="productList.jsp"
        </script>
        
        <%
        }catch(SQLException e){
            e.printStackTrace();
        }
        %>
</body>
</html>