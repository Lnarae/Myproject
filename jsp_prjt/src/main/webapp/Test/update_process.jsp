<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "human.dto.MemberDTO, human.dao.MemberDAO, java.sql.SQLException" %>

    
<%
//회원가입정보를 받아서 DB에 입력하고 입력된 결과를 화면에 출력하되
//정상적으로 회원 가입되었으면 '회원가입 성공'을 출력하고 그렇지 않으면 '회원가입 실패'를 출력하도록 구현하시오.
//post방식으로 넘어온 데이터의 한글깨짐 방지: request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		int m_idx = Integer.parseInt(request.getParameter("m_idx"));
		String member_id = request.getParameter("member_id");
		String member_pw = request.getParameter("member_pw");
		String member_name = request.getParameter("member_name");
		String handphone = request.getParameter("handphone");
		String email = request.getParameter("email");
		
		
		MemberDTO dto = new MemberDTO();
		
		dto.setM_idx(m_idx);
		dto.setMember_id(member_id);
		dto.setMember_pw(member_pw);
		dto.setMember_name(member_name);
		dto.setHandphone(handphone);
		dto.setEmail(email);
		
		
		MemberDAO dao = new MemberDAO();
		MemberDTO newDto = null;
		
		try {
			newDto = dao.updateMember(dto);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//회원가입 성공시 메인페이지로 이동
		//회원가입 실패시 회원가입페이지로 이동
		//페이지 이동: 새로운 페이지로 이동 - response.sendRedirect(페이지URL)
		//- 서버에 새로운 페이지 요청을 하는 것과 같기 때문에 기존의 요청은 결과값이 없이 응답되고
		//- 바로 서버로 요청을 보냄
		//(기존의 request, response객체는 소멸하고 새로운 request, response객체 생성됨)
		if(newDto != null) {
			session.removeAttribute("member");
			session.setAttribute("member", newDto);
			
			String msg = "회원정보가 정상적으로 변경되었습니다.";
			response.sendRedirect("index.jsp");
		}else {
			String msg = "시스템 문제로 회원정보가 정상적으로 변경되지 못했습니다. 다음에 다시 변경해 주세요.";
			request.setAttribute("msg", msg);
			request.getRequestDispatcher("update.jsp").forward(request, response);
		}

%>
