<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script>
        function check(){
            document.frm.submit()
        }
        
    </script>
</head>
<body>
    <%@ include file="header.jsp"%>
    <%@ include file="nav.jsp"%>
    <section>
        <%@ include file="dbconn.jsp" %>
    <%
        ResultSet rs=null;
        PreparedStatement pstmt=null;
        String code=request.getParameter("code");
        String sql="select productId, name, unitprice, description, manufacturer, category, unitsInstock, condition1 from product where productId=?";
        pstmt=conn.prepareStatement(sql);
        pstmt.setString(1, code);
        rs=pstmt.executeQuery();
        if(rs.next()){
            String name=rs.getString(2);
            String price=rs.getString(3);
            String desc=rs.getString(4);
            String maker=rs.getString(5);
            String cate=rs.getString(6);
            String stock=rs.getString(7);
            String condition=rs.getString(8);
            
    %>
    <hr>
        <h1>상품 정보 수정 화면</h1>    
        <form name="frm2" method="get" action="productUpdateProcess.jsp">
            <table border="1" id="tab1">
                <tr>
                    <td>상품코드</td>
                    <td><input type="text" name="code" id="in1" value="<%=code%>"></td>
                </tr>
                <tr>
                    <td>상품명</td>
                    <td><input type="text" name="name" id="in1" value="<%=name%>"></td>
                </tr>
                <tr>
                    <td>가 격</td>
                    <td><input type="text" name="price" id="in1" value="<%=price%>"></td>
                </tr>
                <tr>
                    <td>상세정보</td>
                    <td><input type="text" name="desc" id="in1" value="<%=price%>"></td>
                </tr>
                <tr>
                    <td>제조사</td>
                    <td><input type="text" name="maker" id="in1" value="<%=maker%>"></td>
                </tr>
                <tr>
                    <td>분류</td>
                    <td>
                        <select name="cate">
                            <option value="IT" <%=cate.equals("IT")?"selected":"" %>>IT 제품</option>
                            <option value="주방" <%=cate.equals("주방")?"selected":"" %>>주방 제품</option>
                            <option value="전자" <%=cate.equals("전자")?"selected":"" %>>전자 제품</option>
                            <option value="일반" <%=cate.equals("일반")?"selected":"" %>>일반 잡화</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>재고 수</td>
                    <td><input type="text" name="stock" id="in1" value="<%=stock%>"></td>
                </tr>
                <tr>
                    <td>상태</td>
                    <td>
                        <input type="radio" name="condition" value="신규" <%=condition.equals("신규")?"checked":"" %>> 신규 제품
                        <input type="radio" name="condition" value="중고" <%=condition.equals("중고")?"checked":"" %>> 중고 제품
                        <input type="radio" name="condition" value="재생" <%=condition.equals("재생")?"checked":"" %>> 재생 제품
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="button"  id="btn" value="수정" onclick="check()">
                        <input type="reset"  id="btn" value="취소">
                    </td>
                </tr>
            </table>
            <%
        }
            %>
        </form>
    </hr>
    </section>
    <%@ include file="footer.jsp"%>
</body>
</html>