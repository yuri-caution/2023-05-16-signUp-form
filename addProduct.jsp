<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>jsp 실습</title>

    <script>
        function check(){
            if(document.frm2.code.value==""){
                alert("상품코드를 입력하세요.");
                document.frm2.code.focus();
                return false;
            }
            if(document.frm2.code.value.length < 8 || document.frm2.code.value.length > 20){
                alert("[상품코드]\n8~20자까지 입력하세요.");
                document.frm2.code.focus();
                return false;
            }
            if(document.frm2.name.value==""){
                alert("상품명을 입력하세요.");
                document.frm2.name.focus();
                return false;
            }
            if(document.frm2.name.value.length < 2 || document.frm2.name.value.length > 50){
                alert("[상품명]\n최소 2자에서 최대 50자까지 입력하세요.");
                document.frm2.code.focus();
                return false;
            }
            if(document.frm2.price.value==""){
                alert("가격을 입력하세요.");
                document.frm2.price.focus();
                return false;
            }
            if(isNaN(document.frm2.price.value)){
                alert("[가격]\n숫자만 입력하세요.")
                document.frm2.price.focus();
                return false;
            }
            if(document.frm2.price.value < 0){
                alert("[가격]\n음수를 입력할 수 없습니다.")
                document.frm2.price.focus();
                return false;
            }
            if(isNaN(document.frm2.stock.value)){
                alert("[재고]\n숫자만 입력하세요.")
                document.frm2.stock.focus();
                return false;
            }
            document.frm2.submit()
        }
        
    </script>
</head>
<body>
    <%@ include file="header.jsp"%>
    <%@ include file="nav.jsp"%>
    <section>
    <hr>
        <h1>상품 등록 화면</h1>    
        <form name="frm2" method="get" action="addProductProcess.jsp">
            <table border="1" id="tab1">
                <tr>
                    <td>상품코드</td>
                    <td><input type="text" name="code" id="in1"></td>
                </tr>
                <tr>
                    <td>상품명</td>
                    <td><input type="text" name="name" id="in1"></td>
                </tr>
                <tr>
                    <td>가 격</td>
                    <td><input type="text" name="price" id="in1"></td>
                </tr>
                <tr>
                    <td>상세정보</td>
                    <td><input type="text" name="desc" id="in1"></td>
                </tr>
                <tr>
                    <td>제조사</td>
                    <td><input type="text" name="maker" id="in1"></td>
                </tr>
                <tr>
                    <td>분류</td>
                    <td>
                        <select name="cate">
                            <option value="IT">IT 제품</option>
                            <option value="주방">주방 제품</option>
                            <option value="전자">전자 제품</option>
                            <option value="일반">일반 잡화</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>재고 수</td>
                    <td><input type="text" name="stock" id="in1"></td>
                </tr>
                <tr>
                    <td>상태</td>
                    <td>
                        <input type="radio" name="condition" value="신규" checked>신규 제품
                        <input type="radio" name="condition" value="중고">중고 제품
                        <input type="radio" name="condition" value="재생">재생 제품
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="button"  id="btn" value="등록" onclick="check()">
                        <input type="reset"  id="btn" value="취소">
                    </td>
                </tr>
            </table>
        </form>
    </hr>
    </section>
    <%@ include file="footer.jsp"%>
</body>
</html>