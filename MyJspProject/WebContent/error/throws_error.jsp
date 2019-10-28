<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="exceptionPage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>에러 발생 페이지!</title>
</head>
<body>
	<h2> JSP 에러 테스트 페이지</h2>
	<% String str = null; %>
	str 문자열 길이 : <%= str.length() %> 개
</body>
</html>