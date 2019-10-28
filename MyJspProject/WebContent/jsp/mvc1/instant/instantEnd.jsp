<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <%
 	//1.한글인코딩 처리
 	request.setCharacterEncoding("utf-8");
 
 	//2.전송값 꺼내서 변수에 기록하기
	String main = request.getParameter("main");
 	String side = request.getParameter("side");
 	String drink = request.getParameter("drink");
 	int mainprice = 0;
	int sideprice = 0;
	int drinkprice = 0;

	switch (main) {
	case "한우버거":
		mainprice = 5000;
		break;
	case "밥버거":
		mainprice = 4500;
		break;
	case "치즈버거":
		mainprice = 4000;
		break;

	}

	switch (side) {
	case "감자튀김":
		sideprice = 1500;
		break;
	case "어니언링":
		sideprice = 1700;
		break;

	}

	switch (drink) {
	case "콜라":
		drinkprice = 1000;
		break;
	case "사이다":
		drinkprice = 1000;
		break;
	case "커피":
		drinkprice = 1500;
		break;
	case "밀크쉐이크":
		drinkprice = 2500;
		break;

	}
	int tot = mainprice + sideprice + drinkprice;
 	
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#main{
			font-size : 30px;
			color	: red;	
	
	}
	
	#side{
			font-size : 26px;
			color : yellow;
	}
	
	#drink{
			font-size : 22px;
			color : green;
		}
	#tot{
	
			font-size : 40px;
			color : blue;
	}
</style>
</head>
<body>
	내가 주문한 제품은<span id="main"><%= main %></span>,&nbsp;<span id="side"><%=side %></span>,&nbsp;<span id="drink"><%=drink %></span>입니다.<br>
	총가격은 <span id="tot"><%=tot %></span>입니다.
</body>
</html>