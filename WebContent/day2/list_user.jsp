<%@page import="java.util.List"%>
<%@page import="day1.MyUser"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 프로젝트[2]</title>
</head>
<body>
 <%
//MyUser 객체 리스트를 생성하고 데이터 저장.
 List<MyUser> list = new ArrayList<>();
 /* List : 인터페이스 , <> Generic Type(리스트의 요소들 데이터 타입 설정) 
    ArrayList : List를 구현한 클래스
 */
 
 list.add(new MyUser("홍길동",23,"성남시"));
 list.add(new MyUser("도봉순",34,"서울시 서초구"));
 list.add(new MyUser("박세리",32,"서울시 강남구"));
 list.add(new MyUser("허재",29,"안양시"));
 list.add(new MyUser("김길순",41,"의왕시"));
 list.add(new MyUser("제임스",54,"과천시")); 
 
 %>
	<table style="width:70%;margin:auto">
		<tr>
		<th>번호</th><th>이름</th><th>나이</th><th>지역</th>
		</tr>
	
 <%
 	MyUser temp;
 	for(int i=0; i < list.size();i++){
 		temp=list.get(i);
 
 %>
 	<tr>
 		<td><%=i+1%></td>
 		<td><%=temp.getName()%></td>
 		<td><%=temp.getAge() %></td>
 		<td><%=temp.getLocation() %></td>
 	</tr>
 <%
	}
 %>
 	
 	</table>
</body>
</html>