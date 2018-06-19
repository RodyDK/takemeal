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
			formObj.attr("action", "modifyPage");
			formObj.attr("method", "get");
			formObj.submit();
		});

		$(".removeBtn").on("click", function() {
			formObj.attr("action", "removePage.do");
			formObj.submit();
		});

		$(".goListBtn").on("click", function() {
			formObj.attr("action", "listPage.do");
			formObj.attr("method", "get");
			formObj.submit();
		});

	});
	
	
	
</script>

</head>
<body>

	<form role="form" action="modifyPage" method="post">
		<input type="hidden" name="bno" value="${BoardVo.bno }">
		<input type="hidden" name="page" value="${cri.page }">
		<input type="hidden" name="perPageNum" value="${cri.perPageNum }">
	</form>

	<div class="box-body">
		<div class="form-group">
			<label for="exampleInputEmail">Title</label> <input type="text"
				name="title" class="form-control" value="${BoardVo.title }"
				readonly="readonly">
		</div>

		<div class="form-group">
			<label for="exampleInputPassword1">Content</label>
			<textarea class="form-control" name="content" rows="3"
				readonly="readonly">
	${BoardVo.writer}
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



	

</body>
</html>