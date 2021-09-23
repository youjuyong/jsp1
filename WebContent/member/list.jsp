<%@page import="java.util.List"%>
<%@page import="day3.dao.CustomerDao"%>
<%@page import="day3.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	CustomerDao dao = CustomerDao.getInstance();
	List<Customer> list = dao.selectAll();
	request.setAttribute("list", list);
	pageContext.forward("list_view.jsp");
%>

<!--  
	list.jsp 파일은 입력과 출력은 포함하지 않고
	데이터의 처리, db sql실행 메소드 호출등으로 프로그래밍 되어있어서
	.java형식으로도 작성될 수 있습니다.
 -->
 