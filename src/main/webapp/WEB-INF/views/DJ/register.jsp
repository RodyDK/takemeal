<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="/takemeal/resources/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="/takemeal/resources/bootstrap/css/bootstrap.min.css">

<script type="text/javascript" src="/takemeal/resources/js/jquery-3.3.1.min.js"></script>
<%@ include file="/WEB-INF/views/head.jsp"%>

</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp"%>
<form role="form" method="post">
	<div class="box-body">
		<div class="form-group">
		<label for="exampleInputEmail1">제목</label>
		<input type="text" name="title" class="form-control" placeholder="Enter Title">
		</div>
	
	
		<div class="form-group">
		<label for="exampleInputPassword1">내용</label>
		<textarea class="form-control" name="content" rows="3" placeholder="Enter...">
		</textarea>
		</div>
		
	<!-- 	<div class="form-group">
		<label for="exampleInputEmail1">Writer</label>
		<input type="text" name="writer" class="form-control" placeholder="Enter Writer">
		</div>
		 -->
	</div>
	
		<div class="box-footer">
			<button type="submit" class="btn btn-primary">Submit</button>
		</div>

</form>

 <%@ include file="/WEB-INF/views/footer.jsp"%> 

</body>
</html>