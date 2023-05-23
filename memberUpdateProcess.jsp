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

        String ID=request.getParameter("ID");
        String name=request.getParameter("name");
        String PW=request.getParameter("PW");
        String gender=request.getParameter("gender");
        String birthY=request.getParameter("birthY");
        String birthM=request.getParameter("birthM");
        String birthD=request.getParameter("birthD");
        String birth=birthY + "-" + birthM + "-" + birthD;

        String emailId=request.getParameter("emailId");
        String emailAd=request.getParameter("emailAd");
        String email=emailId + "@" + emailAd;

        String phone1=request.getParameter("phone1");
        String phone2=request.getParameter("phone2");
        String phone3=request.getParameter("phone3");
        String phone=phone1 + "-" + phone2 + "-" + phone3;

        String address=request.getParameter("address");
        String interest[]=request.getParameterValues("interest");
        String inter="";
        if(interest != null){
            for(int i = 0; i<interest.length; i++)
                if(i==(interest.length-1)){
                    inter=inter+interest[i];
                }else{
                    inter=inter+interest[i]+",";
                }
        }



        try {
            String sql="update member set name=?, password=?,gender=?,birthday=?,email=?,phone=?,address=?,interest=? where id=?";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(9,ID);
            pstmt.setString(1,name);
            pstmt.setString(2,PW);
            pstmt.setString(3,gender);
            pstmt.setString(4,birth);
            pstmt.setString(5,email);
            pstmt.setString(6,phone);
            pstmt.setString(7,address);
            pstmt.setString(8,inter);
            pstmt.executeUpdate();
    %>

        <script>
            alert("회원정보 수정 성공");
            location.href="memberList.jsp";
        </script>
        
        <%
        }catch(SQLException e){
            e.printStackTrace();
        }
        %>
</body>
</html>