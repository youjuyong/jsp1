<%@page import="day3.dto.Customer"%>
<%@page import="day3.dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String alert = request.getParameter("alert");
	//day4 고객정보 삭제
	int idx = Integer.parseInt(request.getParameter("idx"));
	
	Customer cus = new Customer();
	cus.setIdx(idx);
	
	CustomerDao dao = CustomerDao.getInstance();
	dao.delete(cus);
	
	out.print("<script>");
	out.print("alert('고객 idx :"+idx+"삭제됐습니다');");
	out.print("location.href='list.jsp';");
	out.print("</script>");
	
	
	//response.sendRedirect("list.jsp");
%>