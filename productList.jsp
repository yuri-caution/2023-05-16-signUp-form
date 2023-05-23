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
        <h1>상품 정보 리스트</h1>
        <table border="1" id="tab2">
            <tr>
                <td>상품코드</td>
                <td>상품명</td>
                <td>단가</td>
                <td>상세정보</td>
                <td>제조사</td>
                <td>분류</td>
                <td>재고 수</td>
                <td>상태</td>
                <td>구분</td>
            </tr>
            <%
                PreparedStatement pstmt=null;
                ResultSet rs=null;
                String sql="select * from product";
                pstmt=conn.prepareStatement(sql);
                rs=pstmt.executeQuery();
                while(rs.next()){
                    String code=rs.getString(1);
                    String name=rs.getString(2);
                    String price=rs.getString(3);
                    String desc=rs.getString(4);
                    String maker=rs.getString(5);
                    String cate=rs.getString(6);
                    String stock=rs.getString(7);
                    String condition=rs.getString(8);

                    %>
                    <tr>
                        <td><%=code%></td>
                        <td><%=name%></td>
                        <td><%=price%></td>
                        <td><%=desc%></td>
                        <td><%=maker%></td>
                        <td><%=cate%></td>
                        <td><%=stock%></td>
                        <td><%=condition%></td>
                        <td id="btn2">
                            <a href="productUpdat.jsp?code=<%=code%>">수정</a>/
                            <a href="productDelete.jsp?code=<%=code%>" onclick="if(!confirm('정말로 삭제하시겠습니까?')) return false;">삭제</a>
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