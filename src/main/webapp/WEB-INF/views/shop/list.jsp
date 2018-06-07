<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					<li>
						<div>
							<span class="goods">
								<a href="/profile/10">
									<span class="goods_thumb">
										<img src="http://image.homeplus.co.kr/UserFiles/Pressimages/15/800/120581615_0.jpg">
									</span>
									<strong>2,190원</strong>
									<span>1개당 2,190원</span>
								</a>			
							</span>
						</div>
						<div class="goods_name">
							해동_오징어(원양산)_마리
						</div>
					</li>

					<li>
						<div>
							<span class="goods">
								<a href="/profile/10">
									<span class="goods_thumb">
										<img src="http://image.homeplus.co.kr/UserFiles/Pressimages/95/800/000005495_0.jpg">
									</span>
									<strong>1,990원</strong>
									<span>1개당 1,990원</span>
								</a>			
							</span>
						</div>
						<div class="goods_name">
							양배추
						</div>
					</li>
					<li>
						<div>
							<span class="goods">
								<a href="/profile/10">
									<span class="goods_thumb">
										<img src="http://image.homeplus.co.kr/UserFiles/Pressimages/68/800/106974268_0.jpg">
									</span>
									<strong>5,990원</strong>
									<span>100G당 499.1원</span>
								</a>			
							</span>
						</div>
						<div class="goods_name">
							하림 생육 닭고기
						</div>
					</li>
					<li>
						<div>
							<span class="goods">
								<a href="/profile/10">
									<span class="goods_thumb">
										<img src="http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg">
									</span>
									<strong>1,000원</strong>
									<span>1개당 1,000원</span>
								</a>			
							</span>
						</div>
						<div class="goods_name">
							팽이버섯 1봉
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>
