<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>

<%
	session = request.getSession();
	session.invalidate();
	//���� �������� �̵�
	response.sendRedirect("index.jsp");
%>