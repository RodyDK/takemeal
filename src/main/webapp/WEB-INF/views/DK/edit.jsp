<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<%@ include file="../head.jsp" %>
<body>
<%@ include file="../header.jsp" %>
<script>
var recipe_tag_01 = [
	{id:"1001",parent_id:"1",use:true,value:"간식/야식"},
	{id:"1002",parent_id:"1",use:true,value:"술안주"},
	{id:"1003",parent_id:"1",use:true,value:"해장요리"},
	{id:"1004",parent_id:"1",use:true,value:"손님 접대 요리"},
	{id:"1005",parent_id:"1",use:true,value:"나들이 요리"},
	{id:"1006",parent_id:"1",use:true,value:"파티/명절요리"},
	{id:"1007",parent_id:"1",use:true,value:"실생활 요리"},	
];
$(document).ready(function(){
	var recipe_tag_01_html = "";
	$.each(recipe_tag_01,function(key,val){
		if(val.use==true){
			recipe_tag_01_html += '<input type="checkbox" name="recipe_tag_01[]" value="'+val.id+'" style="display:none" id="recipe_tag_01_'+val.id+'">';
			recipe_tag_01_html += '<label for="recipe_tag_01_'+val.id+'">'+val.value+'</label>';					
		}
		$("#recipe_tag_01_html").html(recipe_tag_01_html);
	});
});
</script>


<div class="container">
	<div>
		<div class="recipe_wrap">
			<div class="recipe_write">
				<div class="title">
					<h1>레시피 등록</h1>
					<p>나만의 특별한 레시피를 공유하세요!</p>
				</div>
				<div class="warning">
					<ul>
						<li>
							<i class="fa fa-exclamation"></i> 등록된 글을 정확한 정보 공유를 위해 관리자 검수 후 사이트에 게재됩니다.
						</li>
						<li>
							<i class="fa fa-exclamation"></i> 양식에 맞게 작성해주셔야 빠른 검수가 가능합니다.
						</li>
					</ul>
				</div>
				<div class="write_section">
					<h3>기본정보</h3>
					<ul>
						<li>
							<span>음식명</span>
							<div><input type="text" name="subject" value="${recipeView.subject}"></div>
						</li>
						<li>
							<span>한줄설명</span>
							<div><input type="text" name="subject" value="${recipeView.subject}"></div>
						</li>
						<li>
							<span>레시피 정보</span>
							<div>
								조리분량 <input type="text" name="subject" value="${recipeView.subject}" class="small"> 인분, 조리시간 총 <input type="text" name="subject" value="${recipeView.subject}"  class="small"> 분 소요
								
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
									<span class="file-select"><input type="file" onchange="uploadChange(this);"></span>
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
			</div>
				
			<div class="write_btn">
				<a href="#">
					등록하기
				</a>
			</div>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>
