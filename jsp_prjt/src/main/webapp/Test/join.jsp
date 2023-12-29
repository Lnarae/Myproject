<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1,user-scalable=no">
    <title>개인프로젝트 회원가입 페이지</title>
    <script type="text/javascript" src="../resources2/js/join.js"></script>
    <link rel="stylesheet" href="../resources2/css/join.css">
</head>
<body>
    <div class="wrap">
        <div class="container">
            <form action="join_process.jsp" id="frm_Join" name="frm_Join">
                <div class="join_box">
                    <p>이름</p>
                        <div><input type="text" name="name" id="name"></div>
                    <div id="gender"><p id="gender_t">성별</p>
                        <input id="gender_M" type="checkbox"><span>남자</span> 
                        <input id="gender_W" type="checkbox"><span>여자</span>  
                    </div>
                    <p id="birthday_box">생년월일</p>
                    <div>
                        <input type="text" placeholder="년(4자)" name="year" id="member_year">
                        <select name="birthManth" id="birthManth">
                            <option value="M01">1</option>
                            <option value="M02">2</option>
                            <option value="M03">3</option>
                            <option value="M04">4</option>
                            <option value="M05">5</option>
                            <option value="M06">6</option>
                            <option value="M07">7</option>
                            <option value="M08">8</option>
                            <option value="M09">9</option>
                            <option value="M10">10</option>
                            <option value="M11">11</option>
                            <option value="M12">12</option>
                        </select>
                        <select name="birthDay" id="birthDay">
                            <option value="D01">1</option>
                            <option value="D01">2</option>
                            <option value="D01">3</option>
                            <option value="D01">4</option>
                            <option value="D01">5</option>
                            <option value="D01">6</option>
                            <option value="D01">7</option>
                            <option value="D01">8</option>
                            <option value="D01">9</option>
                            <option value="D01">10</option>
                            <option value="D01">11</option>
                            <option value="D01">12</option>
                            <option value="D01">13</option>
                            <option value="D01">14</option>
                            <option value="D01">15</option>
                            <option value="D01">16</option>
                            <option value="D01">17</option>
                            <option value="D01">18</option>
                            <option value="D01">19</option>
                            <option value="D01">20</option>
                            <option value="D01">21</option>
                            <option value="D01">22</option>
                            <option value="D01">23</option>
                            <option value="D01">24</option>
                            <option value="D01">25</option>
                            <option value="D01">26</option>
                            <option value="D01">27</option>
                            <option value="D01">28</option>
                            <option value="D01">29</option>
                            <option value="D01">30</option>
                            <option value="D01">31</option>
                        </select>
                    </div>
                    <div id="handphone_box">
                        <p>휴대전화</p>
                        <input type="tel" name="phone" id="phone" placeholder="휴대폰번호입력">
                    </div>
                    <div id="join_id">
                        <p>아이디</p>
                        <input type="text" name="id" id="member_id">
                        <input type="button" name="id_btn" id="join_btn" value="유효성검사">
                    </div>
                    <div id="join_pw">
                        <p>비밀번호</p>
                        <input type="password" name="pw" id="member_pw">
                        <input type="password" name="re_pw" id="re_pw">
                        <span id="pwMatchMessage"></span>
                    </div>
                    <div id="join_email">
                        <p>이메일</p>
                        <input type="email" name="email" id="email">
                    </div>
                    <div class="submit-btn">
                        <input type="submit" id="btn" value="가입하기">
                        <input type="reset" id="btn" value="취소하기">
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>