<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "human.dto.MemberDTO, human.dao.MemberDAO, java.sql.SQLException" %>
    
    
<%
//회원가입정보를 받아서 DB에 입력하고 입력된 결과를 화면에 출력하되
//정상적으로 회원 가입되었으면 '회원가입 성공'을 출력하고 그렇지 않으면 '회원가입 실패'를 출력하도록 구현하시오.
//post방식으로 넘어온 데이터의 한글깨짐 방지: request.setCharacterEncoding("UTF-8");
request.setCharacterEncoding("UTF-8");

String member_id = request.getParameter("member_id");
String member_pw = request.getParameter("member_pw");

MemberDTO dto = null;
MemberDAO dao = new MemberDAO();

try {
	dto = dao.login(member_id,  member_pw);
}catch (SQLException e) {
	e.printStackTrace();
}

//로그인 성공시 dto에 MremberDTO 객체가 저장이 됨
//로그인 실패시 dto에 초기값 그대로 null이 됨
if(dto != null) {//로그인 성공
	//회원정보를 세션객체에 속성으로 저장함: setAttribute()
	//HttpSession session = request.getSession();
	//JSP페이지가 Servlet으로 자동변환되면서 session객체를 생성해줌
	//_jspService() 메소드내에 session 생성구문
	//session = pageContext.getSession();
	session.setAttribute("member", dto);
	//메인페이지로 이동
	response.sendRedirect("index.jsp");
}else {//로그인 실패
	//로그인페이지로 이동: 로그인 페이지 재요청
	//response.sendRedirect("/human/day06_jsp/login.jsp");
	
	//로그인 페이지로 이동: foward로 페이지 이동
	//request 객체를 이용해서 로그인 실패시 안내 메시지를 로그인 페이지에 출력하고자 함
	String msg = "아이디나 비밀번호가 일치하지 않습니다.";
	request.setAttribute("msg", msg);
	
	//1.RequestDispatcher 객체를 이용한 방법
	//request.getRequestDispatcher("/day05_member/update.jsp").forward(request, response);
	
	//2. pageContext 객체를 이용한 방법(JSP에서만 가능)
	pageContext.forward("login.jsp");
	
}

%>

