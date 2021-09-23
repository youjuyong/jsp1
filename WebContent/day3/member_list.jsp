<%@page import="day3.dto.Customer"%>
<%@page import="java.util.List"%>
<%@page import="day3.dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day3 [4]</title>
<style>
	ul{
		dixplay: flex;
		list-style:none;
		justify-content:space-between;
		paddong-inline-start:0px;
	
	}
	ul #name{
		padding : 5px 20px;
		margin : 5px 0px;
		background-color : tomato;
		color:white;
	}
	ul #email { width : 15vw}
	ul #hobby { width : 15vw}
	
	li {
	padding : 5px 20px;
	margin : 5px 0px;
	border: 1px solid gray;
	border-radius :3px;
	width: 10vw;
	
	}
</style>
</head>
<body>
<%
	CustomerDao dao = CustomerDao.getInstance();
	List<Customer> list = dao.selectAll();
	
%>
<h3> 고객리스트 WELCOME!!</h3>

<%
	for(Customer s : list){
%>
<ul>
	<li id = "name">이름 : <%= s.getName() %></li>
	
	<li id = "email">이메일 : <%= s.getEmail() %></li>
	<li><%= s.getAge() %>세</li>
	<li><%=s.getAddr() %></li>
	<li id = "hobby"><%=s.getHobby() %></li>
	</ul>
<%
	}
	%>

</body>
</html>