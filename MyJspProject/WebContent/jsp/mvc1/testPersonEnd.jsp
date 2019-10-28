<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
  	//1. 전달 파라미터 한글처리
  	request.setCharacterEncoding("utf-8");
  	//2. 전달된 파라미터 변수에 담기
  	String name = request.getParameter("name");
  	String color = request.getParameter("color");
  	String animal = request.getParameter("animal");
  	String [] foodArr = request.getParameterValues("food");
  
  
  %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="<%= request.getContextPath()%>/js/jquery-2.0.0.js">
</script>
<script type="text/javascript">

$(document).ready(function(){
	<%
		switch(color){
		case "빨강" : 
		
	%>
		$("#color").append("<img src='<%= request.getContextPath()%>/images/red.png'/>");
		
	<% break;
		case "파랑":
	%>
		$("#color").append("<img src='<%= request.getContextPath()%>/images/blue.png'/>");
	<%
		break;
		case "노랑":
	%>
	$("#color").append("<img src='<%= request.getContextPath()%>/images/yellow.png'/>");
	<%
		break;
	}
	%>
	
	<%
	switch(animal){
	case "강아지" : 
	
%>
	$("#animal").append("<img src='<%= request.getContextPath()%>/images/dog.png'/>");
	
<% break;
	case "고양이":
%>
	$("#animal").append("<img src='<%= request.getContextPath()%>/images/cat.png'/>");
<%
	break;
	case "금붕어":
%>
$("#animal").append("<img src='<%= request.getContextPath()%>/images/fish.png'/>");
<%
	break;
}
%>

<%
	for(int i=0;i<foodArr.length;i++)
	{
		switch(foodArr[i]){
		case "짜장면":
%>
	$("#food").append("<img src='<%= request.getContextPath()%>/images/jjm.png'/>");
<% break;
		case "짬뽕":
%>
$("#food").append("<img src='<%= request.getContextPath()%>/images/jjbong.png'/>");
});	
<% break;
case "탕수육": 
%>
$("#food").append("<img src='<%= request.getContextPath()%>/images/tangsy.png'/>");
	});	
	<% break;
case "양장피": 
%>
$("#food").append("<img src='<%= request.getContextPath()%>/images/yang.png'/>");
	});
<% break;
case	"팔보채": 
%>
$("#food").append("<img src='<%= request.getContextPath()%>/images/palbc.png'/>");
	});	
<% break;
};
};
 
%>

</script>

</head>
<body>

</body>
</html>