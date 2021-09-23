<%@page import="util.MysqlConnectionUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day3 [1] - db test</title>
</head>
<body>
<h4>MySQL 연결 테스트</h4>
db연결은?
<%
	Connection connection = MysqlConnectionUtil.connect();
	out.print(connection);
%>
</body>
</html>