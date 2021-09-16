<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP1 프로젝트[3]</title>
</head>
<body>
	<!-- JSP 내장(implement) 객체 : 선언하지 않고 사용한다. 
		1) ost(JspWriter클래스타입)
		2) request : 메소드값으로 알아낼 수있는 정보들을 확인하기
	-->
	<h3>Request 객체의 정보</h3>
	<ul>
		<li>요청 URL : <%=request.getRequestURL() %></li>
		<li>요청 URI : <%=request.getRequestURI() %></li>
		<li>컨텍스트(context) : <%=request.getContextPath() %></li>
		<li>서버 IP : <%=request.getLocalAddr() %>,<%=request.getLocalName() %></li>
		<li>서버 port : <%=request.getLocalPort() %></li>
		<li>클라이언트 IP : <%=request.getRemoteAddr()  %></li>
		<% request.setCharacterEncoding("UTF-8"); %>
		<li>문자 인코딩 형식 : <%=request.getCharacterEncoding() %></li>
	</ul>
	<!-- 출력 IPv4 설정 : Run -> Run Configurations -> tomcat -> Arguments -> VM Arg 에 입력
                        -Djava.net.preferIPv4Stack=true -->
</body>
</html>