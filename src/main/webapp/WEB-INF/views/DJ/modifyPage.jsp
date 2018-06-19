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
	$(document)
			.ready(
					function() {

						var formObj = $("form[role= 'form']");

						console.log(formObj);

						$(".btn-primary")
								.on(
										"click",
										function() {
											self.location = "list?page=${cri.page}&perPageNum=${cri.perPageNum}"
													+ "&searchType=${cri.searchType}&keyword=${cri.keyword}";
										});

						$(".btn-warning").on("click", function() {
							formObj.submit();
						});

					});
</script>

</head>
<body>

	<form role="form" method="post" action="modifyPage">

		<input type="hidden" name="page" value="${cri.page }">
		 <input
			type="hidden" name="perPageNum" value="${cri.perPageNum }"> <input
			type="hidden" name="searchType" value="${cri.searchType }"> <input
			type="hidden" name="keyword" value="${cri.keyword }">
	

	<div class="box-body">
		<div class="form-group">
			<label for="exampleInputEmail1">BNO</label> <input type="text"
				name="bno" class="form-control" value="${BoardVo.bno }"
				readonly="readonly">

		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">TITLE</label> <input type="text"
				name="title" class="form-control" value="${BoardVo.title }">

		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">CONTENT</label>
			<textarea rows="15" class="form-control" name="content"	>${BoardVo.content }</textarea>

		</div>


		<div class="form-group">
			<label for="exampleInputEmail1">Writer</label> <input type="text"
				name="writer" class="form-control" value="${BoardVo.writer }"
				readonly="readonly">

		</div>

	</div>

</form>

	<div class="box-footer">
		<button type="submit" class="btn btn-warning">SAVE</button>
		<button type="submit" class="btn btn-primary">CANCLE</button>
	</div>

</body>
</html>