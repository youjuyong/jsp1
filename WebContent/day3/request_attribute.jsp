<%@page import="day1.MyUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MyUser vo = new MyUser("사나",23,"서울");
	int valuel = 23;
	String value2 = "Hello";
	
	request.setAttribute("attr1",vo);
	request.setAttribute("attr2",valuel);
	request.setAttribute("attr3",value2);
	
	pageContext.forward("request_result.jsp");
	


%>
</body>
</html>