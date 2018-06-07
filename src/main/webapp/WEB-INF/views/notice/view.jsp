<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<%@ include file="../head.jsp" %>
<body>
<%@ include file="../header.jsp" %>

<c:if test="${msg ne null}">
	<script>
		customAlert("${msg}","noticeList.do");
	</script>
</c:if>
<c:if test="${noticeView.no == '' || noticeView.no eq null}">
	<script>
		customAlert("게시글이 업습니다.","noticeList.do");
	</script>
</c:if>


  
<div class="container">
	<div>
		<div class="recipe_wrap">
		
			<div class="title">
				<h1>공지사항</h1>
				<p>서비스 이용 시 중요사항을 전달해드립니다. </p>
			</div>
			<div class="recipe_box_normal">
				<div class="notice view">
					<div class="view_title">
						${noticeView.subject}
						<span>
							작성일 : ${noticeView.reg_date}&nbsp;|&nbsp;조회수 : ${noticeView.hit}
						</span>
					</div>
					<div class="view_content">
						${noticeView.contents}
					</div>
				</div>
				<div class="write_btn">
					<a href="#" onClick="javascript:history.go(-1);">
						목록으로
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>
