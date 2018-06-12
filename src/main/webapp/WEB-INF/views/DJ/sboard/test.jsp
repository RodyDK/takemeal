<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script	type="text/x-handlebars-template" src="/takemeal/resources/js/handlebars-v4.0.11.js"></script>

<script 
	src="/takemeal/resources/js/jquery-3.3.1.min.js"></script>
	

<script >
		$(function(){
	var source = "<h1><p>{{name}}</p><p>{{userid}}</p><p>{{addr}}</p></h1>";
	var template = Handlebars.compile(source);
	var data = {name:'홍길동', userid:'user00', addr:'한양'};
	
	$("#displayDiv").html( template(data)  );
		});
</script>	

</head>
<body>


			
	<div id="displayDiv">
	테스트
	</div>
	
	
</body>
</html>