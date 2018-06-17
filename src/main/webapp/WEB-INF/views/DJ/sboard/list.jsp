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
	$(document).ready(function() {
		$('#searchBtn').on("click", function(event) {
			
			self.location = "list.do"
			+ "${pageMaker.makeQuery(1)}"
			+ "&searchType="
			+ $("select option:selected").val()
			+ "&keyword=" + encodeURIComponent($("#keywordInput").val());
			
		});
		$('#newBtn').on("click", function(evt) {
			self.location = "register.do";
		});
		
	});



</script>


<script type="text/javascript">
	$(".pagination li a").on("click", function(event) {

		event.preventDefault();
		var targetPage = $(this).attr("href");

		var jobForm = $("#jobForm");
		jobForm.find("[name='page']").val(targetPage);
		jobForm.attr("action", "/DJ/sboard/list.do").attr("method", "get");
		jobForm.submit();
		alert(jobForm);

	});
</script> 
 

</head>
<body>

	<%-- <div class="box-body">
		<select name="searchType">
			<option value="n"
				<c:out value="${cri.searchType == null?'selected':'' }"/>>
				---</option>
			<option value="t"
				<c:out value="${cri.searchType eq 't' ? 'selected':'' }"/>>
				Titile</option>
			<option value="c"
				<c:out value="${cri.searchType eq 'c' ? 'selected':'' }"/>>
				Content</option>
			<option value="t"
				<c:out value="${cri.searchType eq 'w' ? 'selected':'' }"/>>
				Writer</option>
			<option value="tc"
				<c:out value="${cri.searchType eq 'tc' ? 'selected':'' }"/>>
				Titile Or Content</option>
			<option value="cw"
				<c:out value="${cri.searchType eq 'cw' ? 'selected':'' }"/>>
				Content Or Witer</option>
			<option value="tcw"
				<c:out value="${cri.searchType eq 'tcw' ? 'selected':'' }"/>>
				Titile Or Content Or Writer</option>
		</select>
		
		<input type="text" name="keyword" id="keywordInput" value="${cri.keyword }">
		<button id="searchBtn">Search</button>
		<button id="newBtn">New Board</button>
		
	
	</div> --%>

	<div class="box-body">


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
								<td>${boardVo.bno}</td>
								<td><a
									href='/sboard/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&bno=${boardVo.bno}'>
										${boardVo.title} <strong>[ ${boardVo.replycnt} ]</strong>
								</a></td>
								<td>${boardVo.writer}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${boardVo.regdate}" /></td>
								<td><span class="badge bg-red">${boardVo.viewcnt }</span></td>
							</tr>

						</c:forEach>

					</table>
				</div>
				<!-- /.box-body -->



	</table>
	<button id="newBtn">New Board</button>

	<form id="jobForm">
		<input type="hidden" name="page" value=${cri.page }/>
		<input type="hidden" name="perPageNum"
			value=${cri.perPageNum }/>
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
								<li><a
									href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
							</c:if>

						</ul>
					</div>

				</div>
		

</body>
</html>