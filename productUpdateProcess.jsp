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
            String sql="update product set name=?, unitprice=?,description=?,manufacturer=?,category=?,unitsInstock=?,condition1=? where productId=?";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(9,code);
            pstmt.setString(1,name);
            pstmt.setString(2,price);
            pstmt.setString(3,desc);
            pstmt.setString(4,maker);
            pstmt.setString(5,cate);
            pstmt.setString(6,stock);
            pstmt.setString(7,condition);
            pstmt.executeUpdate();
    %>

        <script>
            alert("상품정보 수정 성공");
            location.href="productList.jsp";
        </script>
        
        <%
        }catch(SQLException e){
            e.printStackTrace();
        }
        %>
</body>
</html>