<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>jsp example</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String ID=request.getParameter("ID");
        String name=request.getParameter("name");
        String PW=request.getParameter("PW");
        String gender=request.getParameter("gender");
        String job=request.getParameter("job");
        String phone=request.getParameter("phone");
        String address=request.getParameter("address");
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
    out.println("아이디 : " + ID + "<br>");
    out.println("이름 : " + name + "<br>");
    out.println("비밀번호 : " + PW + "<br>");
    out.println("성별 : " + gender + "<br>");
    out.println("직업 : " + job + "<br>");
    out.println("취미 : " + ho + "<br>");
    out.println("전화번호 : " + phone + "<br>");
    out.println("주소 : " + address + "<br>");
    %>
</body>
</html>