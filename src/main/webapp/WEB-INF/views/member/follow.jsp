<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<%@ include file="../head.jsp" %>
<body>
<%@ include file="../header.jsp" %>

<div class="container">
	<div class="subnav">
		<ul>
			<li class="active"><a href="follow.do">팔로우</a></li>
			<li><a href="like.do">좋아요</a></li>
		</ul>
	</div>
	<div>
		<div class="recipe_wrap">
			<div class="search">
				<div class="category">
				　
				</div>
				<div class="search_form">
					<form name="search" action="chefList.do" method="get">
						<input type="text" name="username" placeholder="요리사 이름 으로 검색" value="${param.username}">
						<button>
							<i class="fa fa-search"></i>
						</button>
					</form>
				</div>
				<div class="sort">
				　
				</div>
			</div>
			<div class="chef_box_normal">
				<ul>
				<c:choose>
				    <c:when test="${fn:length(chefList) == 0}">
				        <li class="nodata">
							조회결과가 없습니다.
				        </li>
				    </c:when>
				    <c:otherwise>
				        <c:forEach var="chefList" items="${chefList}" varStatus="status">
						<li class="chef_box_${chefList.no}">
							<div style="padding:30px 0;">
								<span class="author">
									<a href="chefView.do?userid=${chefList.userid}">
										<span class="profile_thumb">
											<img src="/takeMeal/resources/upfile/chef/${chefList.userid}.jpg">
										</span>
										<strong>${chefList.username}</strong>
									</a>			
								</span>
								<div class="author-tag">
									<span>${chefList.info}</span>
								</div>
							</div>
							<div class="option">
								<div>
									<a href="chefView.do?userid=${chefList.userid}">
									<i class="fa fa-list-alt"></i>
									레시피
									</a>
								</div>
								<div>
									<a href="${chefList.blog}" target="_blank">
									<i class="fa fa-bold"></i>
									블로그
									</a>
								</div>
								<div class="follow" rel="${chefList.no}">
									<a href="#">
									<i class="fa fa-star"></i>
									팔로우
									</a>
								</div>
							</div>
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
				<li><a href="chefList.do?page=${pagination.startPage - 1}">&laquo;</a></li>
			</c:if>
			
			<c:forEach begin="${pagination.startPage }"
				end="${pagination.endPage }" var="idx">
				<li
					<c:out value="${pagination.setting.page == idx? 'class = active':''}"/>>
					<a href="chefList.do?page=${idx }">${idx }</a>
				</li>
			</c:forEach>
			
			<c:if test="${pagination.next && pagination.endPage > 0}">
				<li><a href="chefList.do?page=${pagination.endPage + 1 }">&raquo;</a></li>
			</c:if>
		</ul>

	</div>
			
			
			
		</div>
	</div>
	
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>
