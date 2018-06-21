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
					<form name="search" action="recipeList.do" method="get">
						<input type="text" name="subject" placeholder="음식명 으로 검색" value="${param.subject}">
						<button>
							<i class="fa fa-search"></i>
						</button>
					</form>
				</div>
				<div class="sort">
				　
				</div>
			</div>
			<div class="recipe_box_normal">
				<ul>		
				<c:choose>
				    <c:when test="${fn:length(recipeList) == 0}">
				        <li class="nodata">
							조회결과가 없습니다.
				        </li>
				    </c:when>
				    <c:otherwise>
				        <c:forEach var="recipeList" items="${recipeList}" varStatus="status">
							<li class="recipe_box_${recipeList.no}">
								<a href="#" class="thumbnail" onclick="javascript:popupOpen('recipe',${recipeList.no});">
									<img src="/takeMeal/resources/upfile/recipe/thumb/${recipeList.thumbnail1}">
								</a>
								<span class="author">
									<a href="recipeChef.do?userid=${recipeList.userid}">
										<span class="profile_thumb">
											<img src="/takeMeal/resources/upfile/chef/${recipeList.userid}.jpg">
										</span>
										<strong>${recipeList.username}</strong>
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
									<div class="like" rel="${recipeList.no}">
										<a href="#">
										<i class="fa fa-heart"></i>
										<span>${recipeList.follow}</span>명
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
			


<style>

.pagination {
    clear: both;
    overflow: hidden;
    margin: 0 auto;
    padding: 37px 0 39px;
    text-align: center;
}
.pagination li {
    display: inline-block;
    position: relative;
    min-width: 19px;
    margin-right: 1px;
    padding: 4px 3px;
    background: #fff;
    font-size: 12px;
    font-weight: 700;
    line-height: 19px;
    text-decoration: none;
    vertical-align: top;
}
.pagination li a{
	color: #282828;
}
.pagination li.active {
	background: #feb500;
}

.pagination li.active a {
	color:#fff;
}
</style>
	<div>
		<ul class="pagination">
			<c:if test="${pagination.prev }">
				<li><a href="recipeList.do?page=${pagination.startPage - 1}">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pagination.startPage }"
				end="${pagination.endPage }" var="idx">
				<li
					<c:out value="${pagination.setting.page == idx? 'class = active':''}"/>>
					<a href="recipeList.do?page=${idx }">${idx }</a>
				</li>
			</c:forEach>

			<c:if test="${pagination.next && pagination.endPage > 0}">
				<li><a href="recipeList.do?page=${pagination.endPage + 1 }">&raquo;</a></li>
			</c:if>
		</ul>

	</div>
				
			
		</div>
	</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>
