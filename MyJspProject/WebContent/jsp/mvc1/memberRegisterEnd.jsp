<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
 <%
 	//1.한글인코딩 처리
 	request.setCharacterEncoding("utf-8");
 
 	//2.전송값 꺼내서 변수에 기록하기
	String userId = request.getParameter("userId");
 	String userPwd = request.getParameter("userPwd");
 	String userName = request.getParameter("userName");
 	int age = Integer.parseInt(request.getParameter("age"));
 	String gender =	request.getParameter("gender");
 	String email = request.getParameter("email");
 	String phone = request.getParameter("phone");
 	String address = request.getParameter("address");
 	String [] hobbies =request.getParameterValues("hobby");
 	String hobby = String.join(",",hobbies);
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register Member</title>
<style type="text/css">
	.male{
		color : blue;
		
	}
	.female{
	
		color : red;
	}

</style>
</head>
<body>
	<ul style="list-style: none; line-height: 150%;">
		<li>아이디 : <%=userId %> </li>
		<li>패스워드 : <%=userPwd %> </li>
		<li>이름 : <%=userName %> </li>
		<li>나이 : <%=age %> </li>
		<li>이메일 : <%=email %> </li>
		<li>성별 : 
			<span id = "gender" style="font-weight:bold;color:<%String genderColor=""; 
		if("M".equals(gender)){
			genderColor="blue";
		}else{
			genderColor="red";
		}%><%=genderColor%><%=gender%>"></span>
		
		
		</li>
		<li>휴대폰 : <%=phone %> </li>
		<li>주소 : <%=address %> </li>
		<li>취미 : <%=hobby %> </li>


</body>
</html>