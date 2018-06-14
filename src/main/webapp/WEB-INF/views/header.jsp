<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<header>
	<div class="top_header">
		<a href="./" class="logo">
			<img src="./resources/images/logo.png" title="logo">



		</a>
		<div class="util">
			<ul>
				<c:if test="${empty sessionScope.loginUser }">
					<li>
						<a href="#" class="btn-login">로그인</a>
					</li>
				</c:if>
				<c:if test="${!empty sessionScope.loginUser }">
					<c:if test="${sessionScope.loginUser.type == 3}">
						<li class="recipeWrite">
							<a href="recipeEdit.do">레시피등록</a>
						</li>
					</c:if>
					<li>
						<a href="mypage.do">마이페이지</a>
					</li>
					<li>
						<a href="logout.do">로그아웃</a>
					</li>
				</c:if>
				<li>
					<a href="faqList.do">자주찾는질문</a>
				</li>
				<li>
					<a href="">고객센터</a>
				</li>
			</ul>
		</div>
	</div>
	<nav>
		<ul>
			<li>
				<a href="./fridgeList.do">나의냉장고</a>
			</li>
			<li>
				<a href="./recipeList.do">레시피</a>
			</li>
			<li>
				<a href="./chefList.do">요리사</a>
			</li>
			<li>
				<a href="./shopList.do">쇼핑몰</a>
			</li>
			<li>
				<a href="./noticeList.do">공지사항</a>
			</li>
		</ul>
	</nav>
</header>







