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
<link rel="stylesheet"	href="/takemeal/resources/bootstrap/css/bootstrap.css">
<link rel="stylesheet"	href="/takemeal/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"href="/takemeal/resources/css/style.css">
<link rel="stylesheet" type="text/css"href="./resources/css/style.css">
<script src="https://code.jquery.com/jquery-2.2.4.min.js"   integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="   crossorigin="anonymous"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.5/handlebars.js'></script>
 <!-- Bootstrap 3.3.4 -->
    <link href="/takemeal/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
 <%@ include file="/WEB-INF/views/head.jsp" %>
 <%@ include file="/WEB-INF/views/header.jsp" %>
 
 

</head>
<body>


	<table class="table table-bordered" id="memberList">
		<colgroup>
			<col width="70" />
			<col width="70" />
			<col width="70" />
			<col width="" />
			<col width="" />
			<col width="200" />
			<col width="70" />
		</colgroup>
		
		<tr>
			<th style="width: 10px">회원번호</th>
			<th style="width: 10px">아이디</th>
			<th>이 름</th>
			<th>블로그</th>
			<th>전화번호</th>
			<th>가입날짜</th>
			<th style="width: 10px">멤버타입</th>
		</tr>
	<c:forEach items="${memberList}" var="Member">
			<tr>
				<td>${Member.no }</td>
				<td>${Member.userid }</td>
				<td>${Member.username }	</td>
				<td>${Member.blog }	</td>
				<td>${Member.phone }</td>
				<td>${Member.reg_date }</td>
				<td>${Member.type }	</td>
			</tr>
		</c:forEach>
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

				<%-- <c:forEach begin="${pageMaker.startPage }"
					end="${pageMaker.endPage }" var="idx"> --%>
					<li
						<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
						<a href="list${pageMaker.makeSearch(idx)}">${1}</a>
					</li>
				<%-- </c:forEach> --%>

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