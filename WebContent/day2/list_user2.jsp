<%@page import="day1.MyUser2"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	List<MyUser2> list = new ArrayList<>();

	list.add(new MyUser2(172,"유주용","독서"));
	list.add(new MyUser2(152,"엄마","드라마보기"));
	list.add(new MyUser2(134,"캬루","푸딩만들기"));
%>
	<table style="width:70%;margin:auto">
		<tr>
		<th></th><th>키</th><th>이름</th><th>취미</th>
		</tr>
<%
	MyUser2 temp;
	for(int i =0; i< list.size();i++){
		temp = list.get(i);
%>

	<tr>
		<td><%=i+1 %></td>
		<td><%=temp.getTall()%></td>
		<td><%=temp.getName()%></td>
		<td><%=temp.getHobby()%></td>
	</tr>
<%
 }
%>
</table>
	
</body>
</html>