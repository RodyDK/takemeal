<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<%@ include file="../head.jsp" %>
<body>
<%@ include file="../header.jsp" %>

<div class="container">
	<div>
		<div class="recipe_wrap">
			<div class="search">
				<div class="category">
				　
				</div>
				<div class="search_form">
					<input type="text" placeholder="음식명 으로 검색">
					<a href="#">
						<i class="fa fa-search"></i>
					</a>
				</div>
				<div class="sort">
				　
				</div>
			</div>
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
								<a href="#" class="thumbnail" onclick="javascript:popupOpen('recipe',${recipeList.no});">
									<img src="/takeMeal/resources/upfile/recipe/${recipeList.thumbnail}">
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
									<a href="#" onclick="javascript:popupOpen('recipe',${recipeList.no});">
										${recipeList.subject}
										<span>
										${recipeList.contents}
										</span>
									</a>
								</h2>
								<div class="option">
									<div class="time">
										<a href="/recipes?cooking_time=30">
										<i class="fa fa-clock-o"></i>
										${recipeList.time}분
										</a>
									</div>
									<div class="like">
										<a href="/recipes?cooking_time=30">
										<i class="fa fa-heart"></i>
										${recipeList.follow}명
										</a>
									</div>
									<div class="share">
										<a href="javascript:;" class="call-share">
											<i class="fa fa-share-alt"></i>
											공유
										</a>
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
			

			<div class="pagination">
				<div class="paging">
					<div class="element">

						<c:set var="page" value="${startPage}"/><!-- page maxpage를 넘었을 경우 제한 -->
						<c:if test="${page > totalPage}">
							<c:set var="page" value="${totalPage}"/>
						</c:if> 
						<!-- 페이지를 8개씩 나누기 위해 현재 페이지에 보여줄 max값 설정 --> 
						<fmt:formatNumber value="${page/5 - (page/5 % 1)}" type="pattern" pattern="0" var="full"/>
						<c:set var="full" value="${full * 5}"/>
						<!-- prev(전페이지), next(다음페이지) 개수 설정 -->
						<c:set var="scope" value="${page % 5}"/>
						<c:choose> 
							<c:when test="${scope == 0}">
								<c:set var="prev" value="5"/>
								<c:set var="next" value="1"/> 
							</c:when> 
							<c:when test="${scope < 6}">
								<c:set var="prev" value="${scope}"/>
								<c:set var="next" value="${6-scope}"/>
							</c:when>
						</c:choose>	
						<!-- prev 버튼 --> 
						<c:if test="${page > 5}">
							<fmt:formatNumber value="${(page-1)/5 - (((page-1)/5) % 1)}" type="pattern" pattern="0" var="prevb"/>
							<c:set value="${(prevb-1)*5 + 1}" var="prevb"/>
							<span id="prevBtn" class="prev button" value="${prevb}"></span>
						</c:if>
						<!-- 전 페이지 -->
						<c:if test="${page != 1}">
							<c:set var="j" value="${prev}"/>
							<c:forEach var="i" begin="1" end="${prev-1}">
								<c:set var="j" value="${j - 1}"/>
									<c:if test="${(page - j) > 0}">
										<span class="no">${page - j}</span>
									</c:if>
							</c:forEach> 
						</c:if>
						
						<!-- 현재 페이지 --> 
						<span class="no selected">${page}</span>
						
						<!-- 다음 페이지 -->
						<c:if test="${page != totalPage}">
							<c:forEach var="i" begin="1" end="${next-1}">
								<c:if test="${totalPage >= page+i}"> <span class="no">${page+i}</span></c:if>
							</c:forEach>
						</c:if>
						
						<!-- next 버튼 -->
						<c:if test="${totalPage >= page + next}">
						<fmt:formatNumber value="${(page-1)/5 - (((page-1)/5) % 1)}" type="pattern" pattern="0" var="nextb"/>
							<c:set value="${(nextb+1)*5 + 1}" var="nextb"/>
							<span id="nextBtn" class="next button" value="${nextb}"></span>
						</c:if>
					</div>
				</div>	
			</div>


				
			
		</div>
	</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>
