<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="/takemeal/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var formObj = ${"form[role='form']"};
		
		console.log(formObj);
		
		$(".btn.warning").on("click", function() {
			formObj.attr("action", "/board/modify");
			formObj.attr("method", "get");
			formObj.submit();
		});
		
		$(".btn.danger").on("click", function() {
			formObj.attr("action", "/board/remove");
			formObj.submit();
		});
		
		$(".btn.primary").on("click", function() {
			self.location = "/board/listAll";
		});
		
		
	});
</script>

</head>
<body>

<form role="form" method="post">
	<input type="hidden" name="bno" value="${boardVo.bno }">
</form>

<div class="box-body">
	<div class="form-group">
	<label for="exampleInputEmail">Title</label>
	<input type="text" name="title" class="form-control" value="${boardVo.title }" readonly="readonly">
	</div>
	
	<div class="form-group">
	<label for="exampleInputPassword1">Content</label>
	<textarea class="form-control" name="content" rows="3" readonly="readonly">
	${boardVo.writer}
	</textarea>
	</div>
	
	<div class="form-group">
	<label for="exampleEmail1">Writer</label>
	<input type="text" name="writer" class="form-control" value="${boardVo.writer }" readonly="readonly">
	
	
	</div>

</div>


<div class="box-footer">
	<button type="submit" class="btn btn-warning">Modify</button>
	<button type="submit" class="btn btn-danger">REMOVE</button>
	<button type="submit" class="btn btn-primary">LIST ALL</button>
</div>

</body>
</html>