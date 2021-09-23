<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP1 프로젝트[5]</title>
</head>
<body>
<!-- jsp 파일의 역할 : 사용자가 서버에게 전송할 데이터를 입력하도록 합니다. -->
<h3>Request Parameter 연습</h3>
<h5>::Request Method 를 GET으로 실행합니다..(method 기본값 get)</h5>
<form action="request_parameter.jsp">
	<input name = "name" placeholder="이름을 입력하세요">
	<input name = "age" placeholder="나이를 입력하세요">
	<input name = "Location" placeholder="지역을 입력해주세요">
	<input type ="submit" value = "전송(GET)"> <!-- form 태그 요소 3 -->
</form>
<hr>
<h5>::Request Method 를 POST로 실행합니다.) </h5>
<form action="request_parameter.jsp" method = "post">
	<input name = "name" placeholder="이름을 입력하세요">
	<input name = "age" placeholder="나이를 입력하세요">
	<input name = "Location" placeholder="지역을 입력해주세요">
	<input type ="submit" value = "전송(POST)"> <!-- form 태그 요소 3 -->
</form>

<!-- 
Request Method 
GET : 입력데이터를 Q -->
</body>
</html>