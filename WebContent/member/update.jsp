<%@page import="day3.dto.Customer"%>
<%@page import="day3.dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String alert = request.getParameter("alert");
	//day4 고객정보 수정
	int idx = Integer.parseInt(request.getParameter("idx"));
	CustomerDao dao = CustomerDao.getInstance();
	Customer cus = dao.selectOne(idx);
	
	if(alert != null) request.setAttribute("alert","y");
	//out.print(cus);   //테스트 후 지우세요.
	request.setAttribute("cus", cus);
	pageContext.forward("update_view.jsp");
%>