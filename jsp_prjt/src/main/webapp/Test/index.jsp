<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="human.dto.MemberDTO" %> 

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>포트폴리오 메인 페이지</title>

    <link rel="stylesheet" href="../resources2/css/index.css">

</head>

<body>

<form action="login.jsp">

    <div class="wrap">

        <div class="header">

            <div class="head_menu">

                <a href="#" id="m_text">MENU</a>

                <nav>

                    <ul class="submenu">

                        <li><a href="#">사이트 소개</a></li>

                        <li><a href="#">게시판</a></li>

                        <li><a href="#">나눔장터</a></li>

                        <li><a href="#">포토존</a></li>

                        <li><a href="#">나의메뉴</a></li>

                    </ul>

                </nav>

            </div>

            <div class="main_logo">

                <a href="index.jsp" id="logo_t">HUMAN & ANIMAL</a>

            </div>

            

            <div id="m_user">

                <img src="../resources2/css/img/user_icon.png" width="55px">

                

             <% session = request.getSession();

	         MemberDTO dto = (MemberDTO)session.getAttribute("member");

	         if(dto != null){//로그인한 경우 %>

	        

	      	   <!-- <a href="/human/memberLogout">로그아웃</a>  -->

	      	   <a href="logout_process.jsp" class="login_text">logout</a>

               <!-- <a href="/human/day05_member/update.jsp">회원정보변경</a> -->

	           <a href="update.jsp" class="login_text">Mypage</a>

	        

	      <% }else{//로그인하지 않은 경우 %>

	      	 

	           <!-- <a href="/human/day05_member/login.jsp">로그인</a>    

               <a href="/human/day05_member/join.jsp">회원가입</a> -->

               <a href="login.jsp" class="login_text">login</a>  

               <a href="join.jsp" class="login_text">join</a>

               

	      <% }%>

            </div>

        </div>

        <div class="container">

            <input type="search" id="search" name="search" placeholder="   검색어를 입력하세요.">

            <button type="button"><img src="../resources2/css/img/search_icon.png" width="20px"></button>

        </div>

        <footer>

            <p>

                <span>저자: 이나래<br>

                    <a href="#">공지사항 </a>|

                    <a href="#"> 비지니스 광고 </a>| 

                    <a href="#"> 이용약관 </a>| 

                    <a href="#"> 청소년 보호 정책 </a>|

                    <a href="#"> 고객센터 </a>

                </span><br/>

            </p>

        </footer>



    </div>

</form>

</body>

</html>