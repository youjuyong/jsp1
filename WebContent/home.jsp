
<%@page import="day1.MyUser"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
</head>
<body>
	<!-- html 파일과 JSP 파일의 다른점
	JSP파일 page 지시자 : java프로그래밍 -> 웹 어플리케이션 서버 -> 서버가 컴파일 -> html문서 응답
	 
	index.html -> 웹 서버 -> 서버에 배포되어 있는 존재하는 파일들을 요청에 대해 바로 응답  
	-->
	<!-- 이 소스파일에 자바 코드 작성가능 -->
	<%
		String message = "hello? 그동안잘지냈지ㅋㅋㅋ??";
		LocalDate now = LocalDate.now();
	%>
	
	<h4>I am JSP</h4>
	<ul>
		<li><%= now%></li>
		<li><%= message%></li> <!-- 바로 -->
	</ul>
	
	<%
		String[] name = {"박세리","김연경","허재"};
		for(int i=0; i<name.length; i++){
	%>
		<li><%= name[i] %><li>
		
	<%
		}
		
		MyUser my = new MyUser();
		my.setAge(23);
		my.setName("사나");
		my.setLocation("서울");
		out.print(my);
	%>
</body>
</html>