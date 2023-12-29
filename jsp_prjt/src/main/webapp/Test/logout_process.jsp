<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>

<%
	session = request.getSession();
	session.invalidate();
	//메인 페이지로 이동
	response.sendRedirect("index.jsp");
%>