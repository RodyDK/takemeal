<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="/takemeal/resources/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="/takemeal/resources/bootstrap/css/bootstrap.min.css">

<script type="text/javascript"
	src="/takemeal/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(".pagination li a").on("click", function(event) {

		event.preventDefault();
		var targetPage = $(this).attr("href");

		var jobForm = $("#jobForm");
		jobForm.find("[name='page']").val(targetPage);
		jobForm.attr("action", "/DJ/listPage.do").attr("method", "get");
		jobForm.submit();

	});
</script>


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

		<c:forEach items="${list}" var="BoardVo">

			<tr>
				<td>${BoardVo.bno }</td>
				<td><a href="readPage.do?bno=${BoardVo.bno }">${BoardVo.title }</a></td>
				<td>${BoardVo.writer }</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
						value="${BoardVo.regdate }" /></td>
				<td><span class="badge bg-red">${BoardVo.viewcnt }</span></td>
			</tr>
		</c:forEach>



	</table>

	<form id="jobForm">
		<input type="hidden" name="page" value=${PageMaker.cri.perPageNum}>
		<input type="hidden" name="perPageNum"
			value=${PageMaker.cri.perPageNum}>
	</form>

	<div class="text-center">
		<ul class="pagination">
			<c:if test="${pageMaker.prev }">
				<li><a href="listPage.do?page=${pageMaker.startPage - 1}">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li
					<c:out value="${pageMaker.cri.page == idx? 'class = active':''}"/>>
					<a href="listPage.do?page=${idx }">${idx }</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a href="listPage.do?page=${pageMaker.endPage + 1 }">&raquo;</a></li>
			</c:if>
		</ul>

	</div>

</body>
</html>