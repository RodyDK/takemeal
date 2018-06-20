<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"href="/takemeal/resources/css/style.css">

<%@ include file="/WEB-INF/views/head.jsp"%>


<%-- <%@ include file="../../head.jsp" %> --%>
<body>
	<%@ include file="/WEB-INF/views/header.jsp"%>
	<%-- <%@ include file="../../header.jsp" %> --%>


	<link rel="stylesheet"	href="/takemeal/resources/bootstrap/css/bootstrap.css">
	<link rel="stylesheet"	href="/takemeal/resources/bootstrap/css/bootstrap.min.css">

	<script type="text/javascript"
		src="/takemeal/resources/js/jquery-3.3.1.min.js"></script>

	<script type="text/javascript">

			$("#memberList").ready(function() {
				  $.ajax({
						type:'post',
						url:'/takemeal/DJ/memberList',
						headers: { 
						      "Content-Type": "application/json",
						      "X-HTTP-Method-Override": "POST" },
						dataType:'text',
						data: JSON.stringify({
							no:no,
							userid:userid,
							username:username,
							blog:blog,
							phone:phone,
							reg_date:reg_date,
							type:type
							}),
						
						success:function(result){
							console.log("result: " + result);
							if(result == 'SUCCESS'){
								page=1;
								getPage("/takemeal/memberList");
							}
					}});
			});

	</script>
</head>
<body>

	<table class="table table-bordered" id="memberList">
		<tr>
			<th style="width: 10px">회원번호</th>
			<th style="width: 10px">아이디</th>
			<th>이 름</th>
			<th>블로그</th>
			<th>전화번호</th>
			<th>가입날짜</th>
			<th style="width: 40px">멤버타입</th>
		</tr>

			<tr>
				<td>{no}</td>
				<td>{userid}</td>
				<td>{username}</td>						
				<td>{blog}</td>
				<td>{phone}</td>
				<td>{reg_date}</td>
				<td><span class="badge bg-red">${type}</span></td>
			</tr>

	</table>
	
	<form id="jobForm">
		<input type="hidden" name="page" value=${cri.page } />
		<input	type="hidden" name="perPageNum" value=${cri.perPageNum } />
	</form>

	<div class="box-footer">

		<div class="text-center">
			<ul class="pagination">

				<c:if test="${pageMaker.prev}">
					<li><a
						href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
				</c:if>

				<c:forEach begin="${pageMaker.startPage }"
					end="${pageMaker.endPage }" var="idx">
					<li
						<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
						<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
					</li>
				</c:forEach>

				<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					<li><a href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
				</c:if>

			</ul>
		</div>

	</div>


	<%@ include file="/WEB-INF/views/footer.jsp"%>
	<%-- <%@ include file="../../footer.jsp" %> --%>
</body>
</html>