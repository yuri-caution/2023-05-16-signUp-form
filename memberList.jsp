<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="./css/style.css">
</head>
<body>
    <%@ include file="header.jsp"%>
    <%@ include file="nav.jsp"%>
    <%@ include file="dbconn.jsp"%>
    
    <section>
        <h1>회원 정보 리스트</h1>
        <table border="1" id="tab2">
            <tr>
                <td>ID</td>
                <td>성명</td>
                <td>비밀번호</td>
                <td>성별</td>
                <td>생년월일</td>
                <td>이메일</td>
                <td>연락처</td>
                <td>주소</td>
                <td>관심분야</td>
                <td>구분</td>
            </tr>
            <%
                PreparedStatement pstmt=null;
                ResultSet rs=null;
                String sql="select * from member";
                pstmt=conn.prepareStatement(sql);
                rs=pstmt.executeQuery();
                while(rs.next()){
                    String ID=rs.getString("ID");
                    String name=rs.getString(2);
                    String PW=rs.getString(3);
                    String gender=rs.getString(4);
                    String birth=rs.getString(5);
                    String email=rs.getString(6);
                    String phone=rs.getString(7);
                    String address=rs.getString(8);
                    String interest=rs.getString(9);
                    


                    %>
                    <tr>
                        <td><%=ID%></td>
                        <td><%=name%></td>
                        <td><%=PW%></td>
                        <td><%=gender%></td>
                        <td><%=birth%></td>
                        <td><%=email%></td>
                        <td><%=phone%></td>
                        <td><%=address%></td>
                        <td><%=interest%></td>
                        <td id="btn2">
                            <a href="memberUpdat.jsp?ID=<%=ID%>">수정</a>/
                            <a href="memberDelete.jsp?ID=<%=ID%>" onclick="if(!confirm('정말로 삭제하시겠습니까?')) return false;">삭제</a>
                        </td>
                    </tr>
                    <%
                }
                    %>
                </table>
    </section>
    <%@ include file="footer.jsp"%>
    
</body>
</html>