<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <%@ include file="dbconn.jsp"%>
    <%
        String code=request.getParameter("code");
        PreparedStatement pstmt=null;
        try {
            String sql="delete from product where productId=?";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,code);
            pstmt.executeUpdate();
            %>

            <script>
                alert('회원 정보 삭제 성공');
                location.href="productList.jsp"
            </script>
            <%
        } catch(Exception e){
            e.printStackTrace();
        }
    %>
</body>
</html>