<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<%@ include file="../head.jsp" %>
<body>
<%@ include file="../header.jsp" %>

<c:if test="${msg ne null}">
	<script>
		customAlert("${msg}","shopList.do");
	</script>
</c:if>
<c:if test="${shopView.no == '' || shopView.no eq null}">
	<script>
		customAlert("게시글이 업습니다.","recipeList.do");
	</script>
</c:if>




  
<div class="container">
	<div>
		<div class="recipe_wrap">
			<div class="recipe_box_normal">
				${shopView.subject} ${param.no} 
			</div>
			<a href="recipeEdit.do?no=${shopView.no}">수정</a>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>
