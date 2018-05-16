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
				<li>
					<a href="">회원가입</a>
				</li>
				<li>
					<a href="">로그인</a>
				</li>
				<li>
					<a href="">자주찾는질문</a>
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
				<a href="./">인기레시피</a>
			</li>
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
		</ul>
	</nav>
</header>

<%-- <header>

<c:if test="${empty loginUser }">
<table id="loginFrm">
<form action="login.do" method="post">
<tr><th><input type="text" name="userid"></th>
<th rowspan="2"><input type="submit" value="로그인"></th></tr>
<tr><th><input type="password" name="userpwd"></th></tr>
<tr><th colspan="2"><a>아이디/암호분실시</a>
&nbsp <a>회원가입</a></th></tr>
</form>
</table>
</c:if>
<c:if test="${!empty loginUser }">
<table>
<tr><th>${loginUser.username } 님</th>
<th><a href="logout.do">로그아웃</a></th><tr>
<c:url var="minfo" value="myinfo.do">
	<c:param name="userid" value="${loginUser.userid }" />
</c:url>
<tr><th><a href="${minfo }">내정보보기</a></th>
<th><a>공지글쓰기</a></th><tr>
<tr><th><a>메일확인</a></th>
<th><a>쪽지확인</a></th><tr>
</table>
</c:if>
</header> --%>






