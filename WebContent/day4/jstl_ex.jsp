<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day4[1] JSTL과 EL</title>
</head>
<body>
<!-- jstl 태그를 사용하기 위해서 지시자로 설정이 필요합니다. -->
<!-- c로 시작하는(prefix="c") 태그는 core 태그라고 부릅니다. : 변수 사용, 흐름의 제어 -->
<h3> 자바 변수처럼 값을 저장합니다. </h3>
<c:set var="age" value="10"/>  <!-- 변수명 age, 값은 10 저장.  -->
age 출력 : ${age} ,단순 el 보다는  c:out 출력 태그 사용합니다.<c:out value="${age}"/>
<h3> 자바 if 역할을 태그입니다. </h3>
<c:if test="${age<20 }">  <!-- test는 검사할 조건식을 el 에 작성합니다. -->
	<span style="color:green;">청소년입니다.</span>
</c:if>
<h3> 자바 if ~ else 역할을 태그입니다. </h3>
<c:set var="age" value="30"/>  <!-- 변수값을 변경합니다. -->
<c:choose>
	<c:when test="${age<20}">    <!-- if -->
		<span style="color:green;">20세 미만 청소년입니다.</span>
	</c:when>
	<c:otherwise>		<!-- else -->
		<span style="color:blue;">20세 이상 성인입니다.</span>
	</c:otherwise>
</c:choose>
<h3>자바 반복 for 역할을 하는 태그입니다.</h3>
<c:forEach var="i" begin="1" end="${param.cnt}">  <!-- parameter를 가져옵니다.이름은 cnt -->
	<c:out value="${i }" /><br>
</c:forEach>   <!-- 실행방법 :  -->
<a href="jstl_ex.jsp?cnt=5">param.cnt 테스트</a>
</body>
</html>
