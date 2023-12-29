<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>포트폴리오 로그인 페이지</title>
    <link rel="stylesheet" href="../resources2/css/login.css">
</head>
<body>
    <div id="log_box">
        <h1>Login</h1>
        <form action="login_process.jsp" method="post">
                <div class="user">
                    <input type="text" name="member_id" id="member_id"                            
                        autocomplete="off" required>
                    <label id="user_id" for="id">USER_ID</label>
                </div>
                <div class="user">
                    <input type="password" name="member_pw" id="member_pw"                            
                        autocomplete="off" required>
                    <label id="user_pw" for="pw">USER_PW</label>
                </div>
                <div class="log_btn">
                    <button type="submit">LOGIN</button>
                </div>
                <div class="join_go">아직 회원이 아니신가요? <a href="join.jsp">회원가입</a></div>
        </form>  
    </div>
</body>
</html>
