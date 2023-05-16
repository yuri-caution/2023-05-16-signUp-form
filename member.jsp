<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>jsp 실습</title>
    <style>
        body h1 {
            text-align: center;
        }

        #tab1 {
            width: 60%;
            margin: 0 auto;
        }

        #in1 {
            height: 30px;
            width: 60%;
            background-color: #eee;
        }
         
        #in2 {
            height: 30px;
            width: 90%;
            background-color: #eee;
        }
    </style>
    <script>
        function check(){
            if(document.frm.ID.value==""){
                alert("아이디를 입력해주세요.");
                document.frm.ID.focus();
                return false;
            }
            if(document.frm.ID.value.length < 4 || document.frm.ID.value.length > 12){
                alert("ID는 4~12자리만 가능합니다.");
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
            if(document.frm.phone.value==""){
                alert("전화번호를 입력해주세요.");
                document.frm.phone.focus();
                return false;
            }
            if(document.frm.address.value==""){
                alert("주소를 입력해주세요.");
                document.frm.address.focus();
                return false;
            }
            document.frm.submit()
        }
        
    </script>
</head>
<body>
    <h1>회원가입</h1>    
    <form name="frm" method="get" action="memberProcess.jsp">
        <table border="1" id="tab1">
            <tr>
                <td>아이디</td>
                <td><input type="text" name="ID" id="in1"></td>
            </tr>
            <tr>
                <td>이름</td>
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
                <tr>
                    <td>성별</td>
                    <td>
                        <input type="radio" name="gender" value="남성" checked>남성
                        <input type="radio" name="gender" value="여성">여성
                    </td>
                </tr>
                <tr>
                    <td>직업</td>
                    <td>
                        <select name="job">
                            <option value="무직">무직</option>
                            <option value="학생">학생</option>
                            <option value="전문직">전문직</option>
                            <option value="공무원">공무원</option>
                            <option value="자영업">자영업</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>취미</td>
                    <td>
                        <input type="checkbox" name="hobby" value="독서">독서
                        <input type="checkbox" name="hobby" value="영화감상">영화감상
                        <input type="checkbox" name="hobby" value="등산">등산
                        <input type="checkbox" name="hobby" value="여행">여행
                    </td>
                </tr>
                <td>전화번호</td>
                <td><input type="text" name="phone" id="in1"></td>
            </tr>
            <tr>
                <td>주소</td>
                <td><input type="text" name="address" id="in2"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="button" value="저장" onclick="check()">
                    <input type="reset" value="취소">
                </td>
            </tr>
        </table>
    </form>
    </section>
</body>
</html>