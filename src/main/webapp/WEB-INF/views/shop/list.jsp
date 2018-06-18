<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<%@ include file="../head.jsp" %>
<link rel="stylesheet" type="text/css" href="/takeMeal/resources/css/style.css">
<body>
<%@ include file="../header.jsp" %>

<div class="container">
	<div>
		<div class="recipe_wrap">
			<div class="search">
				<div class="category">
				　
				</div>
				<div class="search_form">
					<input type="text" placeholder="요리사 이름으로 검색">
					<a href="#">
						<i class="fa fa-search"></i>
					</a>
				</div>
				<div class="sort">
				　
				</div>
			</div>
			<div class="shop_box_normal">
				<ul>
				<c:choose>
				    <c:when test="${fn:length(shopList) == 0}">
				        <li>
							조회결과가 없습니다.
				        </li>
				    </c:when>
				<c:otherwise>
				<c:forEach var="shopList" items="${shopList}" varStatus="status">
					
					<li onclick="javascript:popupOpen('shop',${shopList.no});">
						<div>
							<span class="goods">
								<span class="goods_thumb">
								<img src=${shopList.thumbnail } style="width:100%">
								</span>
								<strong><fmt:formatNumber value="${shopList.price }" pattern="#,###" />원</strong>
								<span>${shopList.description }</span>
							</span>
						</div>
						<div class="goods_name">
							${shopList.name }
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
				<li><a href="shopList.do?page=${pagination.startPage - 1}">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pagination.startPage }"
				end="${pagination.endPage }" var="idx">
				<li
					<c:out value="${pagination.setting.page == idx? 'class = active':''}"/>>
					<a href="shopList.do?page=${idx }">${idx }</a>
				</li>
			</c:forEach>

			<c:if test="${pagination.next && pagination.endPage > 0}">
				<li><a href="shopList.do?page=${pagination.endPage + 1 }">&raquo;</a></li>
			</c:if>
		</ul>

	</div>
		
		
		
		
		</div>
	</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>
