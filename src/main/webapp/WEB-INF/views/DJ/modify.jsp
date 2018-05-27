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
			self.location="/board/listAll";
		});
		
	
		
		$(".btn.primary").on("click", function() {
			formObj.submit();
		});
		
		
	});
</script>

</head>
<body>

<form role = "form" method="post">

	<div class="box-body">
		<div class="form-group">
		<label for="exampleInputEmail1">BNO</label>
		<input type="text" name="bno" class="form-control" value="${boardVo.bno }" readonly="readonly">
		
		</div>
		
		<div class="form-group">
		<label for="exampleInputEmail1">TITLE</label>
		<input type="text" name="title" class="form-control" value="${boardVo.title }" >
		
		</div>
		
		<div class="form-group">
		<label for="exampleInputEmail1">CONTENT</label>
		<textarea rows="3" class="form-control" name="content">${boardVo.content }</textarea>
		
		</div>
		
		
		<div class="form-group">
		<label for="exampleInputEmail1">Writer</label>
		<input type="text" name="writer" class="form-control" value="${boardVo.writer }" readonly="readonly">
		
		</div>
		
	</div>

</form>


<div class="box-footer">
<button type="submit" class="btn btn-primary">SAVE</button>
<button type="submit" class="btn btn-primary">CANCLE</button>
</div>

</body>
</html>