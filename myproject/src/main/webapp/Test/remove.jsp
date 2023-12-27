<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="human.dto.MemberDTO" %>
<% session = request.getSession();
			 MemberDTO dto = (MemberDTO)session.getAttribute("member");%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../resources2/css/remove.css">
    <title>remove</title>
</head>
<body>
	 <form action="">
	    <div id="wrap">
        	   <div id="pass_box">
                <h1>HUMAN & ANIMAL</h1>
               	<div id="BOX">
	            	<p>회원탈퇴</p>
    	        	<div id="text_box">    
       	                <div id="text">* 회원 탈퇴를 위해서는 본인 확인이 필요합니다. *</div>
           	            <div id="text">* 비밀번호를 입력해주세요. *</div>
           	        </div>
               	    <div id="text_id">
                      	<label id="pass_t">UESR_ID</label>
                    </div>
        	        <div id="pass">
            	        <label id="pass_t">USER_PW</label>
                	    <span><input type="password" name="member_pw" id="member_pw"></span>
                    </div>
	                <div id="text_box">
    	            	<div id="text"> * 회원 탈퇴를 하면 더 이상 서비스를 이용하실 수 없습니다. * </div>
        	            <div id="text"> * 그래도 진행 하시겠습니까?. * </div>
            	        <input type="submit" name="pass_b" id="pass_b" value="확인">
                	</div>
	            </div>    
				</div>
			</div>
        </form>
	</body>
</html>