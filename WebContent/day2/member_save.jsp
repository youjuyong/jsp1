<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP1 프로젝트[7]</title>
<style>

	ul.mylist li {
    padding: 5px 0px 5px 5px;
    margin-bottom: 5px;
    border-bottom: 1px solid #efefef;
    font-size: 12px;
}

</style>
</head>
<body>
<!-- 이파일에서는 사용자 정보를 전달받아서 화면에 출력.그리고 그 이후에는 데이터베이스에 데이터를 저장합니다. -->
<h3>환영합니다. WELCOME</h3>

<%
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String email = request.getParameter("email");
	int age = Integer.parseInt(request.getParameter("age"));
	String addr = request.getParameter("addr");

	String gender= request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");

%>
<ul class = "mylist">
	<li>이름 : <%= name %> </li>
	<li>패스워드 : <%= password%></li>
	<li>이메일 : <%= email %></li>
	<li>나이 : <%= age%></li>
	<li>주소 : <%= addr%></li>
	<li>성별 : <%= gender %></li>
	
	<li>취미 : <% for(String s: hobby) out.print(s + " "); %> </li>

<!--  파라미터에 location 도 전달해봅시다. -->
	
</ul>
</body>
</html>