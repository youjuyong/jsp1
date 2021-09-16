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
<!-- request parameter : request 객체에 저장되어 서버에게 전달되는 데이터.
	1) URL ? 에 쿼리 문자열로 전달하는 방법 
	2) method를 post 로 하여 전달하는 방법 -->
<!-- 요청 URL : http://localhost:8082/jsp1/day2/request_parameter.jsp?
								ㄴ **Request Mehod : GET -->
<h3>Request Parameter 연습</h3>
<hr>
<%
	//request 의 파라미터 가져오기 입니다. getParameter() 메소드 몇번 ? 10번
			//예고편 : DTO(VO) 타입 클래스를 이용해서 파라미터와 객체를 자동으로 매핑(프레임워크)
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String location = request.getParameter("location");
	
	if(age == null){
	out.print("<script>");
    out.print("alert('나이를 만드시 입력해야합니다.')");
    out.print("</script>");
	}else{
		MyUser my2 = new MyUser(name,Integer.parseInt(age),location);
		out.print(my2);
%>
<ul>
	<li>이름 : <%= name %> </li>
	<li>나이 : <%= age%></li>
	<li>지역 : <%= location %></li>
<!--  파라미터에 location 도 전달해봅시다. -->
	
</ul>
<!-- 파라미터 값으로 MyUser 객체를 생성해 봅시다. -->
<%
	}
	if(age == null) age="999";
	MyUser my2 = new MyUser(name,Integer.parseInt(age),location);
	out.print(my2);
%>

<ul>
	<li>이름 : <%= my2.getName() %> </li>
	<li>나이 : <%= my2.getAge()%></li>
	<li>지역 : <%= my2.getLocation() %></li>
<!--  파라미터에 location 도 전달해봅시다. -->	
</ul>
</body>
</html>