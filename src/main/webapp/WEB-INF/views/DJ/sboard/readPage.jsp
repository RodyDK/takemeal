<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

		var formObj = $("form[role= 'form']");

		console.log(formObj);

		$(".modifyBtn").on("click", function() {
			formObj.attr("action", "modifyPage.do");
			formObj.attr("method", "get");
			formObj.submit();
		});

		$(".removeBtn").on("click", function() {
			formObj.attr("action", "removePage.do");
			formObj.submit();
		});

		$(".goListBtn").on("click", function() {
			formObj.attr("action", "list.do");
			formObj.attr("method", "get");
			formObj.submit();
		});

	});
</script>

</head>
<body>

	<form role="form" action="modifyPage" method="post">
		<input type="hidden" name="bno" value="${BoardVo.bno }"> <input
			type="hidden" name="page" value="${cri.page }"> <input
			type="hidden" name="perPageNum" value="${cri.perPageNum }"> <input
			type="hidden" name="searchType" value="${cri.searchType }"> <input
			type="hidden" name="keyword" value="${cri.keyword }">
	</form>

	<div class="box-body">
		<div class="form-group">
			<label for="exampleInputEmail">Title</label> <input type="text"
				name="title" class="form-control" value="${BoardVo.title }"
				readonly="readonly">
		</div>

		<div class="form-group">
			<label for="exampleInputPassword1">Content</label>
			<textarea class="form-control" name="content" rows="10"
				readonly="readonly">
	${BoardVo.content}
	</textarea>
		</div>

		<div class="form-group">
			<label for="exampleEmail1">Writer</label> <input type="text"
				name="writer" class="form-control" value="${BoardVo.writer }"
				readonly="readonly">


		</div>

	</div>

	<div class="box-footer">
		<button type="submit" class="btn btn-warning modifyBtn">Modify</button>
		<button type="submit" class="btn btn-danger removeBtn">REMOVE</button>
		<button type="submit" class="btn btn-primary goListBtn">Go
			List</button>
	</div>


	<div class="row">
		<div class="col-md-12">
			<div class="box box-success">
				<div class="box-header">
					<h3 class="box-title">ADD New REPLY</h3>
				</div>

				<div class="box-body">
					<label for="newReplyWriter">Writer</label> <input
						class="form-control" type="text" placeholder="USER ID"
						id="newReplyWriter"> <label for="newReplyText">ReplyText</label>
					<input class="form-control" type="text" placeholder="REPLY TEXT"
						id="newReplyText">
				</div>
			</div>


		</div>
		
		<!-- .box-body -->
		<div class="box-footer">
		<button type="submit" class="btn btn-primary" id="replyAddBtn">ADD REPLY</button>
		</div>

	</div>


		<!-- The time line -->
		<ul class="timeline">
			<li class="time-label" id="repliDiv"><span class="bg-green">Replies List</span>
			
			<div class="text-center">
				<ul id="pagination" class="pagination pagination-sm no-margin ">
				
				</ul>
			</div>
			
		
		</ul>



</body>
</html>