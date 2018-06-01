<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ page session="false" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../head.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/takemeal/resources/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="/takemeal/resources/bootstrap/css/bootstrap.min.css">

<script type="text/javascript" src="/takemeal/resources/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
	var result = '${msg}';
	
	if(result == 'SUCCESS'){
		alert("처리가 완료되었씁니다.");
	}

</script>
<%@ include file="../header.jsp" %>
</head>
<body>


<table class="table table-bordered">
	<tr>
	<th style="width: 10px">BNO</th>
	<th>TITLE</th>
	<th>WRITER</th>
	<th>REGDATE</th>
	<th style="width: 40px">VIEWCNT</th>
	</tr>
	
<c:forEach items="${list}" var="boardVo">

	<tr>
	<td>${boardVo.bno }</td>
	<td><a href="">${boardVo.title }</a></td>
	<td>${boardVo.writer }</td>
	<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVo.regdate }" /> </td>
	<td><span class="badge bg-red">${boardVo.viewcnt }</span></td>
	</tr>
	
	</c:forEach>
	
	
	
</table>

</body>
</html>