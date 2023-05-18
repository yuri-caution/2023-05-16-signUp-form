<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>jsp 실습</title>

    <script>
        function check(){
            if(document.frm.ID.value==""){
                alert("아이디를 입력해주세요.");
                document.frm.ID.focus();
                return false;
            }
            if(document.frm.ID.value.length < 4 || document.frm.ID.value.length > 12){
                alert("아이디는 4~12자리만 가능합니다.");
                document.frm.ID.focus();
                return false;
            }
            if(document.frm.name.value==""){
                alert("이름을 입력해주세요.");
                document.frm.name.focus();
                return false;
            }
            if(document.frm.PW.value==""){
                alert("비밀번호를 입력해주세요.");
                document.frm.PW.focus();
                return false;
            }
            if(document.frm.rePW.value==""){
                alert("비밀번호를 한 번 더 입력해주세요.");
                document.frm.rePW.focus();
                return false;
            }
            if(document.frm.PW.value != document.frm.rePW.value){
                alert("비밀번호가 일치하지 않습니다.")
                document.frm.rePW.focus();
                return false;
            }
            document.frm.submit()
        }
        
    </script>
</head>
<body>
    <%@ include file="header.jsp"%>
    <%@ include file="nav.jsp"%>
    <section>
    <hr>
        <h1>회원 가입 등록 화면</h1>    
        <form name="frm" method="get" action="addMemberProcess.jsp">
            <table border="1" id="tab1">
                <tr>
                    <td>아이디</td>
                    <td><input type="text" name="ID" id="in1" placeholder="숫자만 입력하세요"></td>
                </tr>
                <tr>
                    <td>성명</td>
                    <td><input type="text" name="name" id="in1"></td>
                </tr>
                <tr>
                    <td>비밀번호</td>
                    <td><input type="password" name="PW" id="in1"></td>
                </tr>
                <tr>
                    <td>비밀번호 확인</td>
                    <td><input type="password" name="rePW" id="in1"></td>
                </tr>
                <tr>
                    <td>성별</td>
                    <td>
                        <input type="radio" name="gender" value="남성" checked>남성
                        <input type="radio" name="gender" value="여성">여성
                    </td>
                </tr>
                <tr>
                    <td>생일</td>
                    <td>
                        <input type="text" name="birthY" id="in3" placeholder="2020">년
                        <input type="text" name="birthM" id="in3" placeholder="05">월
                        <input type="text" name="birthD" id="in3" placeholder="18">일
                    </td>
                </tr>
                <tr>
                    <td>이메일</td>
                    <td>
                        <input type="text" name="emailId" id="in1" placeholder="이메일">@
                        <input type="text" name="emailAd" id="in1" placeholder="gmail.com">
                    </td>
                </tr>
                <tr>
                    <td>연락처</td>
                    <td>
                        <input type="text" name="phone1" id="in3" placeholder="010">-
                        <input type="text" name="phone2" id="in3" placeholder="1234">-
                        <input type="text" name="phone3" id="in3" placeholder="1234">
                    </td>
                </tr>
                <tr>
                    <td>주소</td>
                    <td><input type="text" name="address" id="in2"></td>
                </tr>
                <tr>
                    <td>관심분야</td>
                    <td>
                        <input type="checkbox" name="interest" value="프로그램">프로그램
                        <input type="checkbox" name="interest" value="독서">독서
                        <input type="checkbox" name="interest" value="등산">등산
                        <input type="checkbox" name="interest" value="여행">여행
                        <input type="checkbox" name="interest" value="컴퓨터">컴퓨터
                        <input type="checkbox" name="interest" value="영화">영화
                        <input type="checkbox" name="interest" value="운동">운동
                        <input type="checkbox" name="interest" value="진학">진학
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