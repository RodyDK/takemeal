<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<%@ include file="head.jsp" %>
<body>
<% 
	int menuActive = 1;
%>
<%@ include file="header.jsp" %>


<div class="container">
	<div class="main_slider">
		<div class="main_slider_bg bg_01">
			<img src="./resources/images/bg_1.png">
		</div>
		<div class="main_slider_bg bg_02">
			<img src="./resources/images/bg_2.png">
		</div>
		<div class="over_bg">
			<img src="./resources/images/over_bg.png" style="width:2000px; position:absolute; top:0; left:50%; margin-left:-1000px">
		</div>
		<span>
			<img src="./resources/images/food1.png">
		</span>
		<p>
			만화가 김풍작가
			<strong>레몬 까르보나라 파스타</strong>
		</p>
	</div>
	<div style="background:#fff3d4; padding:10px 0 30px;">
		<div class="recipe_wrap">
			<div class="recipe_box_normal">

				<h3>
					맛깔스러운 조화<br>
					<em>신동엽X성시경은</em>
					<strong>오늘 뭐 먹지? </strong>
				</h3>
				<ul>
					<li>
						<a class="thumbnail" href="/recipes/73">
							<img src="https://cloudfront.haemukja.com/vh.php?url=https://d1hk7gw6lgygff.cloudfront.net/uploads/direction/image_file/3658/mid_thumb____.png&convert=jpgmin&rt=600" alt="Mid thumb">
						</a>
						<span class="author">
							<a href="/profile/10">
								<span class="profile_thumb">
									<img src="https://cloudfront.haemukja.com/vh.php?url=https://d1hk7gw6lgygff.cloudfront.net/uploads/user/image_file/10/thumb__BF_F8_C7_FC.jpg&amp;convert=jpgmin&amp;rt=600">
								</span>
								<strong>메이플대니얼</strong>
							</a>			
						</span>
						<h2 class="recipe_title">
							<a class="call_recipe" href="/recipes/73">
								입이 심심할 때는 식빵 러스크
							</a>
						</h2>
						<div class="option">
							<div class="time">
								<a href="/recipes?cooking_time=30">20분</a>
							</div>
							<div class="like">
								<a href="/recipes?cooking_time=30">290명</a>
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

					<li>
						<a class="thumbnail" href="/recipes/73">
							<img src="https://cloudfront.haemukja.com/vh.php?url=https://d1hk7gw6lgygff.cloudfront.net/uploads/direction/image_file/3637/mid_thumb___.png&amp;convert=jpgmin&amp;rt=600" alt="Mid thumb">
						</a>
						<span class="author">
							<a href="/profile/10">
								<span class="profile_thumb">
									<img src="https://cloudfront.haemukja.com/vh.php?url=https://d1hk7gw6lgygff.cloudfront.net/uploads/direction/image_file/3655/mid_thumb______.png&convert=jpgmin&rt=600">
								</span>
								<strong>메이플대니얼</strong>
							</a>			
						</span>
						<h2 class="recipe_title">
							<a class="call_recipe" href="/recipes/73">
								입이 심심할 때는  식빵 러스크
							</a>
						</h2>
						<div class="option">
							<div class="time">
								<a href="/recipes?cooking_time=30">20분</a>
							</div>
							<div class="like">
								<a href="/recipes?cooking_time=30">290명</a>
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
											<li>
						<a class="thumbnail" href="/recipes/73">
							<img src="https://cloudfront.haemukja.com/vh.php?url=https://d1hk7gw6lgygff.cloudfront.net/uploads/direction/image_file/8843/mid_thumb_DSC08111.JPG&convert=jpgmin&rt=600" alt="Mid thumb">
						</a>
						<span class="author">
							<a href="/profile/10">
								<span class="profile_thumb">
									<img src="https://cloudfront.haemukja.com/vh.php?url=https://d1hk7gw6lgygff.cloudfront.net/uploads/user/image_file/10/thumb__BF_F8_C7_FC.jpg&amp;convert=jpgmin&amp;rt=600">
								</span>
								<strong>메이플대니얼</strong>
							</a>			
						</span>
						<h2 class="recipe_title">
							<a class="call_recipe" href="/recipes/73">
								입이 심심할 때는 식빵 러스크
							</a>
						</h2>
						<div class="option">
							<div class="time">
								<a href="/recipes?cooking_time=30">20분</a>
							</div>
							<div class="like">
								<a href="/recipes?cooking_time=30">290명</a>
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
											<li>
						<a class="thumbnail" href="/recipes/73">
							<img src="https://cloudfront.haemukja.com/vh.php?url=https://d1hk7gw6lgygff.cloudfront.net/uploads/direction/image_file/8833/mid_thumb_DSC01908.jpg&convert=jpgmin&rt=600" alt="Mid thumb">
						</a>
						<span class="author">
							<a href="/profile/10">
								<span class="profile_thumb">
									<img src="https://cloudfront.haemukja.com/vh.php?url=https://d1hk7gw6lgygff.cloudfront.net/uploads/user/image_file/10/thumb__BF_F8_C7_FC.jpg&amp;convert=jpgmin&amp;rt=600">
								</span>
								<strong>메이플대니얼</strong>
							</a>			
						</span>
						<h2 class="recipe_title">
							<a class="call_recipe" href="/recipes/73">
								입이 심심할 때는 식빵 러스크
							</a>
						</h2>
						<div class="option">
							<div class="time">
								<a href="/recipes?cooking_time=30">20분</a>
							</div>
							<div class="like">
								<a href="/recipes?cooking_time=30">290명</a>
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
				</ul>
			</div>
		</div>
	</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
