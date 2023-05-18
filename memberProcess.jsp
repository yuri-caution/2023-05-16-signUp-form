<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>jsp example</title>
</head>
<body>
    <%@ include file="dbconn.jsp"%>;
    <%
        request.setCharacterEncoding("utf-8");

        PreparedStatement pstmt = null;

        String ID=request.getParameter("ID");
        String name=request.getParameter("name");
        String PW=request.getParameter("PW");
        String gender=request.getParameter("gender");
        String phone=request.getParameter("phone");
        String address=request.getParameter("address");
        String job=request.getParameter("job");
        String hobby[]=request.getParameterValues("hobby");
        String ho="";
        if(hobby != null){
            for(int i = 0; i<hobby.length; i++)
                if(i==(hobby.length-1)){
                    ho=ho+hobby[i];
                }else{
                    ho=ho+hobby[i]+",";
                }
        }

        try {
            String sql="insert into member0518 values(?,?,?,?,?,?,?,?)";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,ID);
            pstmt.setString(2,name);
            pstmt.setString(3,PW);
            pstmt.setString(4,gender);
            pstmt.setString(5,phone);
            pstmt.setString(6,address);
            pstmt.setString(7,job);
            pstmt.setString(8,ho);
            pstmt.executeUpdate();
    %>

        <script>
            alert("회원정보 등록 성공");
            history.back(-1);
        </script>
        
        <%
        }catch(SQLException e){
            e.printStackTrace();
        }
        %>
</body>
</html>