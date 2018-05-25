<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false" %>
<html>
<%@ include file="../head.jsp" %>
<body>
<%@ include file="../header.jsp" %>

<div class="container">
	<div>
		<div class="recipe_wrap">
			<div class="recipe_box_normal">
				<ul>		
				<c:choose>
				    <c:when test="${fn:length(recipeList) == 0}">
				        <li>
							조회결과가 없습니다.
				        </li>
				    </c:when>
				    <c:otherwise>
				        <c:forEach var="recipeList" items="${recipeList}" varStatus="status">
							<li>
								<a class="thumbnail" href="recipeView.do?no=${recipeList.no}">
									<img src="https://cloudfront.haemukja.com/vh.php?url=https://d1hk7gw6lgygff.cloudfront.net/uploads/direction/image_file/3658/mid_thumb____.png&convert=jpgmin&rt=600" alt="Mid thumb">
								</a>
								<span class="author">
									<a href="recipeChef.do?userid=${recipeList.userid}">
										<span class="profile_thumb">
											<img src="https://cloudfront.haemukja.com/vh.php?url=https://d1hk7gw6lgygff.cloudfront.net/uploads/user/image_file/10/thumb__BF_F8_C7_FC.jpg&amp;convert=jpgmin&amp;rt=600">
										</span>
										<strong>${recipeList.userid}</strong>
									</a>			
								</span>
								<h2 class="recipe_title">
									<a class="call_recipe" href="recipeView.do?no=${recipeList.no}">
										${recipeList.subject}
									</a>
								</h2>
								<div class="option">
									<div class="time">
										<a href="/recipes?cooking_time=30">${recipeList.time}분</a>
									</div>
									<div class="like">
										<a href="/recipes?cooking_time=30">${recipeList.follow}명</a>
									</div>
									<div class="share">
										<a href="javascript:;" class="call-share">공유</a>
									</div>
								</div>
								<!-- [D] 공유하기 레이어 -->
								<div class="share_on">
									<dl class="lst_sns">
										<dd><a href="javascript:;" class="btn_facebook fb-share" data-url="http://haemukja.com/recipes/73">페이스북</a></dd>
										<dd><a href="javascript:;" class="btn_kakao kakao-share" data-url="http://haemukja.com/recipes/73">카카오스토리</a></dd>
										<dd><a href="javascript:;" class="btn_twitter twt-share" data-url="http://haemukja.com/recipes/73">트위터</a></dd>
									</dl>
								</div>
								<!-- //공유하기 레이어 -->
							</li>
				        </c:forEach>
				    </c:otherwise> 
				</c:choose>				
				</ul>
			</div>
			<a href="recipeEdit.do">글쓰기</a>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>
