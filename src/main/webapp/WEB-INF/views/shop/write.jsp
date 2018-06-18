<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<%@ include file="../head.jsp" %>
<body>
<%@ include file="../header.jsp" %>

<div class="container">
	<div>
		<div class="recipe_wrap">
			<div class="recipe_write">
				<div class="title">
					<h1>쇼핑몰 등록</h1>
				</div>
				<div class="warning">
				</div>
				<form name="recipe_write" action="recipeSave.do" method="POST" enctype="multipart/form-data">
				<div class="write_section">
					<h3>기본정보</h3>
					
					<ul>
						<li>
							<span>상품명</span>
							<div><input type="text" name="subject"></div>
						</li>
						<li>
							<span>한줄설명</span>
							<div><input type="text" name="contents"></div>
						</li>
						<li>
							<span>상품 정보</span>
							<div>
								가격 <input type="text" class="small"> 인분, 조리시간 총 <input type="text" name="time" class="small"> 분 소요
							</div>
						</li>
					</ul>
				</div>
				<div class="write_section">
					<h3>레시피 정보</h3>
					<ul>
						<li>
							<span>STEP 01</span>
							<div>
								<textarea></textarea>
								<div class="input-file">
									<span class="file-text"></span>
									<span class="file-btn">찾아보기</span>
									<span class="file-select"><input type="file" name="thumbnail1" onchange="uploadChange(this);"></span>
								</div>
							</div>
						</li>
						<li>
							<span>STEP 02</span>
							<div>
								<textarea></textarea>
								<div class="input-file">
									<span class="file-text"></span>
									<span class="file-btn">찾아보기</span>
									<span class="file-select"><input type="file" name="thumbnail2" onchange="uploadChange(this);"></span>
								</div>
							</div>
						</li>
						<li>
							<span>STEP 03</span>
							<div>
								<textarea></textarea>
								<div class="input-file">
									<span class="file-text"></span>
									<span class="file-btn">찾아보기</span>
									<span class="file-select"><input type="file" name="thumbnail3" onchange="uploadChange(this);"></span>
								</div>
							</div>
						</li>
						<li>
							<span>STEP 04</span>
							<div>
								<textarea></textarea>
								<div class="input-file">
									<span class="file-text"></span>
									<span class="file-btn">찾아보기</span>
									<span class="file-select"><input type="file" name="thumbnail4" onchange="uploadChange(this);"></span>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="write_section">
					<h3>레시피 태그정보</h3>
					<ul>
						<li>
							<span>상황별 요리</span>
							<div class="tag_box" id="recipe_tag_01_html">

							</div>
						</li>
					</ul>
				</div>
				
				</form>
			</div>
				
			<div class="write_btn">
				<a href="#">
					등록하기
				</a>
			</div>
			
			<script>
				$(".write_btn a").on("click",function(){
					var form = document.recipe_write;
					form.submit();
				});

			</script>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>
