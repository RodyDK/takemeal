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

var recipe_tag_02 = [
	{id:"2001",parent_id:"2",use:true,value:"한식 요리"},
	{id:"2002",parent_id:"2",use:true,value:"중식 요리"},
	{id:"2003",parent_id:"2",use:true,value:"일식 요리"},
	{id:"2004",parent_id:"2",use:true,value:"동남아/인도 요리"},
	{id:"2005",parent_id:"2",use:true,value:"멕시칸 요리"},
	{id:"2006",parent_id:"2",use:true,value:"양식 요리"},
	{id:"2007",parent_id:"2",use:true,value:"퓨전요리"},	
];

var recipe_tag_03 = [
	{id:"3001",parent_id:"3",use:true,value:"돼지고기"},
	{id:"3002",parent_id:"3",use:true,value:"쇠고기"},
	{id:"3003",parent_id:"3",use:true,value:"닭고기"},
	{id:"3004",parent_id:"3",use:true,value:"햄/소시지"},
	{id:"3005",parent_id:"3",use:true,value:"채소류 요리"},
	{id:"3006",parent_id:"3",use:true,value:"생선 수산물"},
	{id:"3007",parent_id:"3",use:true,value:"콩/두부 요리"},
	{id:"3008",parent_id:"3",use:true,value:"과일 요리"},	
	{id:"3009",parent_id:"3",use:true,value:"달걀/유제품 요리"},	
	{id:"3010",parent_id:"3",use:true,value:"면요리"},	
	{id:"3011",parent_id:"3",use:true,value:"만두요리"},	
	{id:"3012",parent_id:"3",use:true,value:"김치요리"},	
	{id:"3013",parent_id:"3",use:true,value:"가공식품 요리"},	
];

		
$(document).ready(function(){
	var recipe_tag_01_html = "";
	$.each(recipe_tag_01,function(key,val){
		if(val.use==true){
			recipe_tag_01_html += '<input type="checkbox" name="tag[]" value="'+val.id+'" style="display:none" id="recipe_tag_01_'+val.id+'">';
			recipe_tag_01_html += '<label for="recipe_tag_01_'+val.id+'">'+val.value+'</label>';					
		}
		$("#recipe_tag_01_html").html(recipe_tag_01_html);
	});
	
	var recipe_tag_02_html = "";
	$.each(recipe_tag_02,function(key,val){
		if(val.use==true){
			recipe_tag_02_html += '<input type="checkbox" name="tag[]" value="'+val.id+'" style="display:none" id="recipe_tag_02_'+val.id+'">';
			recipe_tag_02_html += '<label for="recipe_tag_02_'+val.id+'">'+val.value+'</label>';					
		}
		$("#recipe_tag_02_html").html(recipe_tag_02_html);
	});

	var recipe_tag_03_html = "";
	$.each(recipe_tag_03,function(key,val){
		if(val.use==true){
			recipe_tag_03_html += '<input type="checkbox" name="tag[]" value="'+val.id+'" style="display:none" id="recipe_tag_03_'+val.id+'">';
			recipe_tag_03_html += '<label for="recipe_tag_03_'+val.id+'">'+val.value+'</label>';					
		}
		$("#recipe_tag_03_html").html(recipe_tag_03_html);
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
				<form name="recipe_write" action="recipeSave.do" method="POST" enctype="multipart/form-data">
				<div class="write_section">
					<h3>기본정보</h3>
					
					<ul>
						<li>
							<span>음식명</span>
							<div><input type="text" name="subject"></div>
						</li>
						<li>
							<span>한줄설명</span>
							<div><input type="text" name="contents"></div>
						</li>
						<li>
							<span>레시피 정보</span>
							<div>
								조리분량 <input type="text" class="small" name="people"> 인분, 조리시간 총 <input type="text" name="time" class="small"> 분 소요
							</div>
						</li>
						<li>
							<span>재료정보</span>
							<div>
								<dl id="food_list">
									<dd style="padding:5px 0;">
										<input type="text" name="recipe_food[]" class="medium" placeholder="재료명 (예:삼겹살)"> <input type="text" name="recipe_amount[]" class="medium" placeholder="분량 (예:1인분)"><i class="fa fa-times-circle" style="font-size:16px; margin-left:10px;" onclick="deleteLine(this)"></i>
									</dd>
									<dd style="padding:5px 0;">
										<input type="text" name="recipe_food[]" class="medium" placeholder="재료명 (예:삼겹살)"> <input type="text" name="recipe_amount[]" class="medium" placeholder="분량 (예:1인분)"><i class="fa fa-times-circle" style="font-size:16px; margin-left:10px;" onclick="deleteLine(this)"></i>
									</dd>
									<dd style="padding:5px 0;">
										<input type="text" name="recipe_food[]" class="medium" placeholder="재료명 (예:삼겹살)"> <input type="text" name="recipe_amount[]" class="medium" placeholder="분량 (예:1인분)"><i class="fa fa-times-circle" style="font-size:16px; margin-left:10px;" onclick="deleteLine(this)"></i>
									</dd>
								</dl>
								<span onclick="addLine()">
									<i class="fa fa-plus-square" style="font-size:16px;"></i> 재료추가
								</span>
								<script>
									function deleteLine(obj){
										if($("#food_list dd").length > 1){
											$(obj).parents("dd").remove();
										}else{
											alert("재료정보 최소 1개 등록해주세요!");
										}
									}
									function addLine(obj){
										$("#food_list").append('<dd style="padding:5px 0;"><input type="text" name="recipe_food[]" class="medium" placeholder="재료명 (예:삼겹살)"> <input type="text" name="recipe_amount[]" class="medium" placeholder="분량 (예:1인분)"><i class="fa fa-times-circle" style="font-size:16px; margin-left:10px;" onclick="deleteLine(this)"></i></dd>');
									}
									
								</script>
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
								<textarea name="desc1"></textarea>
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
								<textarea name="desc2"></textarea>
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
								<textarea name="desc3"></textarea>
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
								<textarea name="desc4"></textarea>
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
						<li>
							<span>나라별 요리</span>
							<div class="tag_box" id="recipe_tag_02_html">

							</div>
						</li>
						<li>
							<span>재료별 요리</span>
							<div class="tag_box" id="recipe_tag_03_html">

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
