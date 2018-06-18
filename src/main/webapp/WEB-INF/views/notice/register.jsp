<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<%@ include file="../head.jsp"%>
<link rel="stylesheet"
	href="/takemeal/resources/bootstrap/css/bootstrap.css">
<link rel="stylesheet"
	href="/takemeal/resources/bootstrap/css/bootstrap.min.css">

<body>
	<%@ include file="../header.jsp"%>


	<form role="form" method="post">
		<div class="container">
			<div>
				<div class="recipe_wrap">
					<div class="recipe_box_normal">

						<input type="text" name="subject" value="${recipeView.subject}">

						<input type="text" name="subject" class="form-control"
							placeholder="Enter Title">


						<textarea class="form-control" name="contents" rows="10"
							placeholder="Enter...">
		</textarea>

					</div>
					<div class="box-footer">
						<button type="submit" class="btn btn-primary">등록!!</button>
					</div>
				</div>

			</div>
		</div>
	</form>
	<%@ include file="../footer.jsp"%>
</body>
</html>
