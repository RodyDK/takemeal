<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
</div>

<style>
	html.popup-on {
		overflow:hidden;
		height:100%;
	}
	.popup {
		display:none;
		position:fixed;
		top:0;
		left:0;
		right:0;
		bottom:0;
		background: rgba(0, 0, 0, 0.3);
		width:100%;
		height:100%;
		overflow-y:auto;
		overflow-x:hidden;
		z-index:100;
	}
	.popup.on {
		display:block;
	}
	
	.popup-view {
		position: absolute; 
		top: 0; 
		left: 10%; 
		background:#fff;
		width:80%;
		overflow:hidden;
		display:none;
	}
	.popup-view.active {
		display:block;
	}
	.popup-view h2{
		font-size:30px;
		font-weight:600;
		
	}
	.popup-view .popup-content{
		width:calc(70% - 60px);
		float:left;
		padding:30px;
	}
	
	.popup-view .popup-content .recipe-taginfo{
		margin-bottom:30px;
	}
	
	.popup-view .popup-content .recipe-taginfo ul {
		overflow:hidden;
	}
	.popup-view .popup-content .recipe-taginfo ul li{
		float:left;
		margin-right:5px;
		padding:5px 10px; 
		border:1px solid #e1e1e1;
		color:#3e3e3e;
		font-size:13px;
		border-radius:5px;
	}
	
	.popup-view .popup-content .recipe-detail{
		overflow:hidden;
	}
	
	.popup-view .popup-content .recipe-detail h2{
		margin:50px 0 30px;
	}
	.popup-view .popup-content .recipe-detail ul{
		width:80%;
		margin:0 auto;
		text-align:center;
		
	}
	.popup-view .popup-content .recipe-detail ul li{
		margin:50px 0;
		line-height:150%;
		
	}
	.popup-view .popup-content .recipe-detail ul li .img-cover{
		margin-bottom:15px;
	}
	
	.popup-view .popup-content .recipe-detail ul li .img-cover img{
		width:100%;
	}
	.popup-view .popup-info{
		width:30%;
		float:left;
		background:#282828;
		padding-top:20px;
	}
	.popup-view .popup-info .goods-info {
		margin:0 20px 10px;
		border-bottom:1px solid #fff;
		padding-bottom:10px;
	}
	.popup-view .popup-info .goods-subject {
		color:#fff;
		margin:0;
		font-size:20px;
	}
	.popup-view .popup-info .goods-option {
	    margin: 20px;
	    background: #f1f2f3;
	    border: 1px solid #dbdbdb;
	    padding: 10px;
	}
	.popup-view .popup-info .goods-option > dl > dt > strong {
		font-weight: normal;
	    color: #222;
	    font-size:12px;
    }
    
    .popup-view .popup-info .goods-option > dl {
    	overflow:hidden;
    }
	.popup-view .popup-info .goods-option > dl .cdtl_amount {
		display: block;
	    position: relative;
	    min-width: 48px;
	    padding: 0 30px;
	}
	.popup-view .popup-info .goods-option > dl .cdtl_amount .cdtl_b_minus {
	    overflow: hidden;
	    position: absolute;
	    top: 0;
	    left: 0;
	    width: 28px;
	    height: 28px;
	    border: 1px solid #e1e1e1;
	    background: #fff url(http://static.ssgcdn.com/ui/ssg/img/product/v2/sp_cdtl.png) no-repeat -100px -170px;
	    line-height: 999px;
	}
	.popup-view .popup-info .goods-option > dl .cdtl_amount .cdtl_b_plus {
	    overflow: hidden;
	    position: absolute;
	    top: 0;
	    right: 0;
	    width: 28px;
	    height: 28px;
	    border: 1px solid #e1e1e1;
	    background: #fff url(http://static.ssgcdn.com/ui/ssg/img/product/v2/sp_cdtl.png) no-repeat -130px -170px;
	    line-height: 999px;
	}
	.popup-view .popup-info .goods-option > dl .cdtl_inpbx {
	    display: inline-block;
	    width: 48px;
	    height: 28px;
	    border: 1px solid #e1e1e1;
	    border-width: 1px 0;
	    background: #fff;
	    vertical-align: top;
	}
	.popup-view .popup-info .goods-option > dl .cdtl_amount input {
	    display: block;
	    width: 48px;
	    height: 28px;
	    border: 0;
	    background: none;
	    line-height: 28px;
	    text-align: center;
    }
	.popup-view .popup-info .goods-option .goods-option-left {
	    float: left;
	    margin-top: 11px;
	}

	.popup-view .popup-info .goods-option .goods-option-right {
	    float: right;
	    margin-top: 14px;
	}
	.popup-view .popup-info .goods-option .goods-option-right em {
	    font-style: normal;
	    font-size: 16px;
    }
    
	.popup-view .popup-info .goods-option .goods-option-left .cdtl_amount {
		position:relative;
	}
	
	
	
	.popup-view .popup-info .goods-price {
		color:#ff7272;
		font-size:20px;
		font-weight:900;
		padding:0 20px;
	}
	.popup-view .popup-info .goods-description {
		color:#fff;
		margin:0;
	}
	
	.popup-view .popup-info .author {
		width:100%;
		display:block;
	}
	
	.popup-view .popup-info .author a {
		display:block;
	}
	
	.popup-view .popup-info .author .profile_thumb {
		margin:0 auto;
		width:100px;
		border-radius:50px;
		overflow:hidden;
		display:block;
	}
	.popup-view .popup-info .recipe-subject {
		font-size:20px;
		color:#fff;
		text-align:center;
	}
	
	.popup-view .popup-info .recipe-util {
		padding:0 30px;
		width:auto;
		color:#fff;
		font-size:14px;
	}
	.popup-view .popup-info .recipe-util li {
		overflow:hidden;
		line-height:30px;
	}
	.popup-view .popup-info .recipe-util li span {
		float:left;
		width:120px;
		color:#f9f9f9;
	}
	.popup-view .popup-info .recipe-util li p {
		float:left;
		width:calc(100% - 120px);
		text-align:right;
		font-weight:900;
	}
	
	.popup-view .popup-info .recipe-scrap a {
		width:150px;
		line-height:40px;
		height:40px;
		border-radius:20px;
		background:#fff;
		color:red;
		font-size:14px;
		text-align:center;
		display:block;
		margin:20px auto;
	}
	
	.popup-view .popup-info .recipe-sns {
		border: 1px solid #f9f9f9;
		border-radius:5px;
		margin:0 20px 20px;
	}
	.popup-view .popup-info .recipe-sns dl {
		overflow:hidden;
		-webkit-box-sizing: border-box;
     	-moz-box-sizing: border-box;
		box-sizing: border-box;
	}
	.popup-view .popup-info .recipe-sns dl dd {
		width:33.3333333%;
		float:left;
		margin:0;
		text-align:center;
		font-size:20px;
		color:#fff;
		padding:5px 0; 
		position:relative;
	}
	
	.popup-view .popup-info .recipe-sns dl dd:after {
		content:"";
		width:1px;
		height:10px;
		background:#fff;
		position:absolute;
		top:10px;
		left:0;
	}
	.popup-view .popup-info .recipe-sns dl dd:first-child:after{
		content:none;
	}
	
	.popup-view .popup-info .recipe-ingredient{
		overflow:hidden;
		padding:0 20px;
		width:325px;
	
	}
	
	.popup-view .popup-info .recipe-ingredient h2{
		font-size:24px; 
		color:#999;
		position:relative;
		margin-bottom:10px;
	}
	.popup-view .popup-info .recipe-ingredient h2 em{
		position:absolute;
		bottom:0;
		right:0;
		font-size:12px;
		font-style:normal;
		font-weight:normal;
		
	}
	.popup-view .popup-info .recipe-ingredient ul{
		width:100%;
	}
	.popup-view .popup-info .recipe-ingredient ul li{
		line-height:55px;
		padding:0 10px;
		overflow:hidden;
		background:#474747;
	}
	.popup-view .popup-info .recipe-ingredient ul li:nth-child(2n){
		background:#4e4e4e;
	}
	.popup-view .popup-info .recipe-ingredient ul li span{
		width:50%;
		display:block;
		border:0;
		float:left;
		margin:0;
		padding:0;
		color:#999;
		font-weight:normal;
		font-size:16px;
	}
	
	.popup-view .popup-info .recipe-ingredient ul li span.desc{
		font-weight:bold;
		color:#d1d1d1;
		text-align:right;
	}
	.popup-close {
		position: fixed;
	    top: 10px;
	    right: 30px;
	    font-size: 20px;
	    color: #fff;
	    width:40px;
	    height:40px;
	    text-align:center;
	    background:#000;
	}
	.popup-close i {
		line-height:40px;
	}
</style>
<link rel="stylesheet" href="/takeMeal/resources/css/flexslider.css" type="text/css" media="screen" />
<script defer src="/takeMeal/resources/js/jquery.flexslider.js"></script>
<div class="popup">
	<div class="popup-close">
		<i class="fa fa-times"></i>
	</div>
	<div class="popup-view" id="recipe">
		<div class="popup-content">
			<div class="recipeSlide">
		        <div id="slider" class="flexslider">
		          <ul class="slides">
		          </ul>
		        </div>
		        <div id="carousel" class="flexslider">
		          <ul class="slides">
		          </ul>
		        </div>
		    </div>
			<div class="recipe-taginfo">
				<h2>태그 정보</h2>
				<ul>
					<li>#가공품</li>
					<li>#수산 가공품</li>
					<li>#김밥/롤/주먹밥/초밥</li>
					<li>#실생활 요리</li>
					<li>#암 예방</li>
					<li>#빈혈 예방</li>
				</ul>
			</div>
			<div class="recipe-detail">
				<h2>레시피</h2>
				<ul class="lst_step">
				</ul>
			</div>	
		</div>
		<div class="popup-info">
			<div class="popup-info-top">
				<span class="author">
					<a href="recipeChef.do?userid=">
						<span class="profile_thumb">
							<img src="">
						</span>
						<strong >
						
						</strong>
					</a>			
				</span>
				<h2 class="recipe-subject">
				
				</h2>
				<ul class="recipe-util">
					<li>
						<span>
							<i class="fa fa-clock-o"></i> 조리시간
						</span>
						<p class="recipe-time"></p>
					</li>
					<li>
						<span>
							<i class="fa fa-heart"></i> 스크랩
						</span>
						<p class="recipe-follow"></p>
					</li>
				</ul>
				<div class="recipe-scrap">
					<a href="#">
						<i class="fa fa-heart"></i> 좋아요
					</a>
				</div>
			</div>
			<div class="recipe-sns">
				<dl>
					<dd><i class="fa fa-google-plus-square" onclick="sns('google','12321','http://takemeal.co.kr','1','1')"></i></dd>
					<dd><i class="fa fa-twitter" onclick="sns('twitter','12321','http://takemeal.co.kr','1','1')"></i></dd>
					<dd><i class="fa fa-link" onclick="sns('line','','','','')"></i></dd>
				</dl>
			</div>
			<div class="recipe-ingredient">
				<h2>재료리스트  <em><span>10</span>인 기준</em></h2>
				<ul>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="popup-view" id="shop">
		<div class="popup-content">
			<div class="recipeSlide">
		        <div id="shop_slider" class="flexslider">
		          <ul class="slides">
		            <li>
					   <img src="http://item.ssgcdn.com/05/38/12/item/1000018123805_i1_450.jpg" draggable="false">
					</li>
					<li>
					   <img src="//item.ssgcdn.com/05/38/12/item/1000018123805_i2_450.jpg" draggable="false">
					</li>		          </ul>
		        </div>
		        <div id="shop_carousel" class="flexslider">
		          <ul class="slides">
					<li>
					   <img src="http://item.ssgcdn.com/05/38/12/item/1000018123805_i1_450.jpg" draggable="false">
					</li>
					<li>
					   <img src="//item.ssgcdn.com/05/38/12/item/1000018123805_i2_450.jpg" draggable="false">
					</li>	
		          </ul>
		        </div>
		    </div>
			<div class="recipe-detail">
				<img alt="" src="http://image.homeplus.co.kr/UserFiles/Image/GoodDesc3/20180403152710.jpg"><img width="800" height="3515" alt="" src="http://image.homeplus.co.kr/UserFiles/Image/GoodDesc3/201804161545553.jpg"><img alt="" width="800" height="2597" src="http://image.homeplus.co.kr/UserFiles/Image/GoodDesc3/201804031527666.jpg"><img alt="" width="800" height="3554" src="http://image.homeplus.co.kr/UserFiles/Image/GoodDesc3/201804031527979.jpg">
			</div>	
		</div>
		<div class="popup-info">
			<div class="popup-info-top">
				<div class="goods-info">
					<h2 class="goods-subject"></h2>
					<span class="goods-description"></span>
				</div>
				<p class="goods-price"></p>
				
				<div class="goods-option">
					<dl>
						<dt><strong></strong></dt>
						<dd class="goods-option-left">
							<div class="cdtl_amount">
								<a href="javascript:void(0);" class="cdtl_b_minus" onclick="changeOrdQty(this, -1);">빼기</a>
								<span class="cdtl_inpbx"><input type="text" id="cdtl_item_amount1" title="수량입력" value="1" onchange="changeOrdQty(this, 0);"></span>
								<a href="javascript:void(0);" class="cdtl_b_plus" onclick="changeOrdQty(this, 1);">더하기</a>
							</div>
						</dd>
						<dd class="goods-option-right">
							<span class="price">
								<em class="total_price" data=""></em>
							</span>
						</dd>
					</dl>
				</div>
				<div class="recipe-scrap">
					<a href="shopOrder.do?goods_no=13">
						구매하기
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="login-sec" class="right-side-bar">
	<a href="javascript:;" class="close">닫기</a>
	<p class="alert-msg"><span></span></p>


	<!-- 로그인 폼 -->
	<div class="sec login">
		<form id="_fmFrontLogin" name="_frontLogin" method="post" action="login.do" class="layer">
			<input type="hidden" id="keepLoginFlag" name="keepLoginFlag" value="Y">
			<div class="inp id"><input type="text" name="userid" class="__required __noSpace" placeholder="아이디" fieldname="아이디" malxength="60"></div>
			<div class="inp pw"><input type="password" name="password" class="__required __noSpace" placeholder="비밀번호" fieldname="비밀번호" maxlength="20"></div>

			<div class="btn"><input type="submit" value="로그인"></div>
			<div class="link">
				<a href="javascript:;" class="join">회원가입</a>
				<a href="javascript:;" class="findpw">비밀번호 찾기</a>
			</div>
		</form>
	</div>
	<!-- /로그인 폼 -->

	<!-- 약관 동의 -->
	<div class="sec agree">
		<div class="textarea">
			<p class="tit">
				이용약관
				<label><input type="checkbox" name="agree-1"><span>동의</span></label>
			</p>
			<div class="text" id="service-text-2">
				<dl>
				챙겨먹어요 이용약관입니다.
				</dl>
			</div>
		</div>

		<div class="textarea">
			<p class="tit">
				개인정보처리방침
				<label><input type="checkbox" name="agree-2"><span>동의</span></label>
			</p>
			<div class="text" id="privacy-text-2">
				<dl>
				챙겨먹어요 개인정보처리방침입니다.
				</dl>
			</div>
		</div>

		<div class="btn">
			<a href="javascript:;">이전</a>
			<a href="javascript:;">다음</a>
		</div>
	</div>
	<!-- /약관 동의 -->

	<!-- 가입폼 -->
	<div class="sec join">
		<form id="_fmFrontJoin" name="_frontJoin" method="post" action="joinExec.do" onsubmit="return checkFrontJoinForm(this)">
			<input type="hidden" name="redirectUrl" value="">
			<ul>
				<li>
					<label for="join_id">이메일</label>
					<input type="text" id="join_id" name="userid" class="__required __noSpace" fieldname="이메일" malxength="60" checkfunctionname="checkEmail">
				</li>
				<li>
					<label for="join_nickName">닉네임</label>
					<input type="text" id="join_nickName" name="username" class="__required __noSpace" fieldname="닉네임" restrictutf8bytes="45">
				</li>
				<li>
					<label for="join_passwd">비밀번호</label>
					<input type="password" id="join_passwd" name="password" class="__required __noSpace" fieldname="비밀번호" maxlength="20" minlength="4">
				</li>
				<li>
					<label for="join_passwd_re">비밀번호 확인</label>
					<input type="password" id="join_passwd_re" name="password_re" class="__required __noSpace" fieldname="비밀번호 확인" equaltoel="passwd" maxlength="20" minlength="4">
				</li>
			</ul>

			<div class="btn">
				<input type="submit" value="가입완료">
			</div>
		</form>
	</div>
	<!-- /가입폼 -->

	<!-- 비밀번호 찾기 -->
	<div class="sec findpw">
		<form id="_fmFrontFindPasswd" name="_fmFrontFindPasswd" method="post" onsubmit="return validateFormElement(this)" class="layer" action="/findPasswd">
			<div class="inp"><input type="text" name="email" class="__required __noSpace" placeholder="이메일" fieldname="가입하신 이메일 주소" checkfuntionname="checkEmail" maxlength="60"></div>
			<div class="txt">
				가입하신 회원님의 이메일 주소를 입력해 주세요.<br>
				비밀번호 초기화 메일을 발송해 드립니다.
			</div>
			<div class="btn">
				<a href="javascript:;" class="btn-login">이전</a>
				<input type="submit" value="보내기">
			</div>
		</form>
	</div>
	<!-- /비밀번호 찾기 -->

	<!-- 새 비밀번호 -->
	<div class="sec newPassword">
		<form id="_fmFrontChangePassword" name="_fmFrontChangePassword" method="post" onsubmit="return validateFormElement(this)" class="layer" action="https://www.sta1.com/updatePasswd">
			<input name="findPasswdValue" type="hidden" value="">
			<div class="inp"><input type="password" name="updatePasswd" class="__required __noSpace" placeholder="새 비밀번호 입력" fieldname="비밀번호" maxlength="20" minlength="4"></div>
			<div class="inp"><input type="password" name="passwd_re" class="__required __noSpace" placeholder="새 비밀번호 확인" fieldname="비밀번호 확인" equaltoel="updatePasswd" maxlength="20" minlength="4"></div>
			<div class="btn">
				<input type="submit" value="확인">
			</div>
		</form>
	</div>
	<!-- /새 비밀번호 -->
</div>

<script>

var rightLayerAlert = {
	init : function(text){
		$(".alert-msg span").html(text);
		$(".alert-msg").fadeIn();
	},

	hide : function(){
		$(".alert-msg").hide();
	}
};

function popupClose(){
	$("html").removeClass("popup-on");
	$(".popup").removeClass("on");
}

$(".popup-close").on("click",function(){
	popupClose();
});

function uploadChange(file) {
  var el = file.parentNode.parentNode.getElementsByTagName("*");
  for (var i = 0; i < el.length; i++) {
    var node = el[i];
    if (node.className == "file-text") {
      node.innerHTML = file.value;
      break;
    }
  }
}

var recipe_tag = [{
	"1001":["간식/야식"],
	"1002":["술안주"],
	"1003":["해장요리"],
	"1004":["손님 접대 요리"],
	"1005":["나들이 요리"],
	"1006":["파티/명절요리"],
	"1007":["실생활 요리"],	
	"2001":["한식 요리"],
	"2002":["중식 요리"],
	"2003":["일식 요리"],
	"2004":["동남아/인도 요리"],
	"2005":["멕시칸 요리"],
	"2006":["양식 요리"],
	"2007":["퓨전요리"],	
	"3001":["돼지고기"],
	"3002":["쇠고기"],
	"3003":["닭고기"],
	"3004":["햄/소시지"],
	"3005":["채소류 요리"],
	"3006":["생선 수산물"],
	"3007":["콩/두부 요리"],
	"3008":["과일 요리"],	
	"3009":["달걀/유제품 요리"],	
	"3010":["면요리"],	
	"3011":["만두요리"],	
	"3012":["김치요리"],	
	"3013":["가공식품 요리"]
}];


console.log(recipe_tag);

function faqlistAccordion(obj,no){
	
	var html = "";
	
	
	
	if(!$(obj).hasClass("on")){
		$(".faq table tr td.accordion").hide().removeClass("active");
		$(".faq table tr").removeClass("on");
		
		
		if($("#faq_content_"+no).html().length==0){
			$.ajax({
				method: "POST",
			    cache: false,
			    url: "faqView.do",
			    data: {
					no:no
			    },
			    success: function(result) {
			    	console.log(result);
					if(result.code=="SUCCESS"){
						var faqValue = result.data;
						$(obj).addClass("on");
			        	$("#faq_content_"+no).addClass("active").html(faqValue.contents).show();
	
			        	
			        }else if(result.code=="FAIL"){
			        	alert(result.message);
			        }
			    },
			    error: function (result) {
			    	console.log(result);
			    }
			});
		}else{
			$(obj).addClass("on");
			$("#faq_content_"+no).addClass("active").show();
		}
	}else if($(obj).hasClass("on")){
		$(obj).removeClass("on");
		$("#faq_content_"+no).hide().removeClass("active");
	}

}

function comma(num){
    var len, point, str; 
       
    num = num + ""; 
    point = num.length % 3 ;
    len = num.length; 
   
    str = num.substring(0, point); 
    while (point < len) { 
        if (str != "") str += ","; 
        str += num.substring(point, point + 3); 
        point += 3; 
    } 
     
    return str;
 
}



function popupOpen(type,no){
	
	var html = "";
	
	
	$("html").addClass("popup-on");
	$(".popup").addClass("on");
	$("#"+type).addClass("active");
	
	if(type=="shop"){
		$.ajax({
            method: "POST",
            cache: false,
            url: "shopView.do",
            data: {
            		no:no
            },
            success: function(result) {
                if(result.code=="SUCCESS"){
                	var shopValue = result.data;
                	
                	$("#"+type+" .goods-subject").text(shopValue.name);
                	$("#"+type+" .goods-description").text(shopValue.description);
                	$("#"+type+" .goods-price").text(comma(shopValue.price)+"원");
                	
                	$("#"+type+" .goods-option > dl > dt > strong").text(shopValue.name);
					
                	$("#"+type+" .total_price").attr("data",shopValue.price);
                	$("#"+type+" .total_price").text(comma(shopValue.price)+"원");
                	
                	
                	$("#"+type+".popup-info").height($("#"+type+".popup-content").height());
                	
                	
                }else if(result.code=="FAIL"){
                	alert(result.message);
                }
            },
            complete : function(){
            	scrollFix(type);
            	
				$('#shop_carousel').flexslider({
				  animation: "slide",
				  controlNav: false,
				  animationLoop: true,
				  slideshow: false,
				  itemWidth: 100,
				  itemMargin: 10,
				  asNavFor: '#shop_slider'
				});
				
				$('#shop_slider').flexslider({
				  animation: "slide",
				  controlNav: false,
				  animationLoop: true,
				  slideshow: false,
				  sync: "#shop_carousel",
				  start: function(slider){
				    $('body').removeClass('loading');
				  }
				});
            },
            error: function (result) {
            	console.log(result);
            }
        });
	}
	
	if(type=="recipe"){
		$.ajax({
            method: "POST",
            cache: false,
            url: "recipeView.do",
            data: {
            		no:no
            },
            success: function(result) {
                if(result.code=="SUCCESS"){
                	var recipeValue = result.data;
                	
  
                
                	var recipeHtml = "";
                	var recipeSliderHtml = "";
                	var recipeFoodHtml = "";
                	var recipeTagHtml = "";
                	var recipeFood = JSON.parse(recipeValue.recipe_food);
                	var recipeAmount = JSON.parse(recipeValue.recipe_amount);
                	var recipeTag = JSON.parse(recipeValue.tag);
              
                	
                	
                	$("#recipe .profile_thumb img").attr("src","/takeMeal/resources/upfile/chef/"+recipeValue.userid+".jpg");
                	$("#recipe .recipe-subject").text(recipeValue.subject);
                	$("#recipe .recipe-time").text(recipeValue.time+"분");
                	$("#recipe .recipe-follow").text(recipeValue.follow);
                	$("#recipe .recipe-ingredient h2 em span").html(recipeValue.people);
                	
                	$.each(recipeFood, function(key,val){
                		recipeFoodHtml += "<li>";
                		recipeFoodHtml += "<span class='title'>"+val+"</span>";
                		recipeFoodHtml += "<span class='desc'>"+recipeAmount[key]+"</span>";
                		recipeFoodHtml += "<li>";
                	});
                	$("#recipe .recipe-ingredient ul").html(recipeFoodHtml);
                	
                	if(recipeValue.thumbnail1){
                		recipeHtml+='<li><div class="img-cover"><img src="/takeMeal/resources/upfile/recipe/'+recipeValue.thumbnail1+'"></div><p>'+recipeValue.desc1+'</p></li>';
                		recipeSliderHtml+='<li><img src="/takeMeal/resources/upfile/recipe/'+recipeValue.thumbnail1+'"></li>';
                	}
                	if(recipeValue.thumbnail2){
                		recipeHtml+='<li><div class="img-cover"><img src="/takeMeal/resources/upfile/recipe/'+recipeValue.thumbnail2+'"></div><p>'+recipeValue.desc1+'</p></li>';
                		recipeSliderHtml+='<li><img src="/takeMeal/resources/upfile/recipe/'+recipeValue.thumbnail2+'"></li>';
                	}
                	if(recipeValue.thumbnail3){
                		recipeHtml+='<li><div class="img-cover"><img src="/takeMeal/resources/upfile/recipe/'+recipeValue.thumbnail3+'"></div><p>'+recipeValue.desc1+'</p></li>';
                		recipeSliderHtml+='<li><img src="/takeMeal/resources/upfile/recipe/'+recipeValue.thumbnail3+'"></li>';
                	}
                	if(recipeValue.thumbnail4){
                		recipeHtml+='<li><div class="img-cover"><img src="/takeMeal/resources/upfile/recipe/'+recipeValue.thumbnail4+'"></div><p>'+recipeValue.desc1+'</p></li>';
                		recipeSliderHtml+='<li><img src="/takeMeal/resources/upfile/recipe/'+recipeValue.thumbnail4+'"></li>';
                	}
                	
                	$("#recipe .lst_step").html(recipeHtml);
                	$("#recipe #slider ul.slides").html(recipeSliderHtml);
                	$("#recipe #carousel ul.slides").html(recipeSliderHtml);
                	if(recipeTag){
	                	$.each(recipeTag,function(key,val){
	                		recipeTagHtml+='<li>#'+recipe_tag[0][val]+'</li>';
	                	})
                	}
                	$(".recipe-taginfo ul").html(recipeTagHtml);
                	$("#"+type+".popup-info").height($("#"+type+".popup-content").height());
                	
                	
                }else if(result.code=="FAIL"){
                	alert(result.message);
                }
            },
            error: function (result) {
            	console.log(result);
            },
            complete: function(){
            	scrollFix(type);
            	$('#carousel').removeData("flexslider");
            	$('#slider').removeData("flexslider");
				$('#carousel').flexslider({
				  animation: "slide",
				  controlNav: false,
				  animationLoop: true,
				  slideshow: false,
				  itemWidth: 100,
				  itemMargin: 10,
				  asNavFor: '#slider'
				});
				
				$('#slider').flexslider({
				  animation: "slide",
				  controlNav: false,
				  animationLoop: true,
				  slideshow: false,
				  sync: "#carousel",
				  start: function(slider){
				    $('body').removeClass('loading');
				  }
				});
            }
        });
	}
}



function sns(type,title,url,imageUrl,description){

    var encodeTitle = encodeURIComponent(title),
    encodeUrl   = encodeURIComponent(url),
    encodeImage = encodeURIComponent(imageUrl); // 공유할 이미지
 

    if(type=="google"){
        window.open("https://plus.google.com/share?t="+encodeTitle+"&url="+encodeUrl, "google+", "width=500, height=550, resizable=no");
    }
    if(type=="twitter"){
    	window.open("http://www.twitter.com/intent/tweet?text="+encodeTitle+"&url="+encodeUrl, 'twitter', "width=500, height=450, resizable=no");
    }
    if(type=="line"){
    	var IE=(document.all)?true:false;
    	if (IE) {
    	if(confirm("이 글의 트랙백 주소를 클립보드에 복사하시겠습니까?"))
    	window.clipboardData.setData("Text", trb);
    	} else {
    	temp = prompt("이 글의 트랙백 주소입니다. Ctrl+C를 눌러 클립보드로 복사하세요", "http://takemeal.co.kr");
    	}
    }

 
}


$("a.btn-login").on("click", function(){
	$("#login-sec").addClass("active");

	$("#login-sec").removeClass("agree").removeClass("findpw-form").addClass("login-form");
	$("html").attr("class", "right-on login");
});

// 회원가입
$("a.join").off("click").on("click", function(){
	join();
});

// 비밀번호 찾기
$("a.findpw").off("click").on("click", function(){
	findPw();
});


function hide() {
	$("html").removeClass("right-on login");
}


function checkFrontJoinForm(f) {

	var bCheckId = true;
	// var bCheckNickName = true;
	$.ajax({
		type : "POST"
		, async : false
		, cache : false
		, data : {"userid" : f.userid.value}
		, url : "checkID.do"
	}).done(function (result) {
		console.log(result.code);
		if (result.code == true) {
			rightLayerAlert.init("이미 사용 중인 이메일입니다.");
			bCheckId = false;
		}
	});
	if (bCheckId) {
		if (confirm("입력하신 정보로 챙겨먹어요에 가입하시겠습니까?")) {
			return true;
		}
	}

	return false;
}

$(".right-side-bar a.close").on("click", function(){
	hide();
	setTimeout(function(){
		$("#login-sec")
			.removeClass("active")
			.removeClass("login-form")
			.removeClass("setting")
			.removeClass("agree")
			.removeClass("join-form")
			.removeClass("findpw-form")
			.removeClass("setting")
			.removeClass("modifypw")
			.removeClass("secede")
			.removeClass("newPassword");
	}, 300);
});

function changeOrdQty(aEl, changeQty) {
	var nowQty = Number($(".cdtl_inpbx input").val());
	if(changeQty >= 0){
		nowQty = nowQty+1;
	}else{
		nowQty = nowQty-1;
	}
	
	if(nowQty<1){
		return false;
	}else if(nowQty>10){
		alert("최대 주문수량 초과!");
		return false;
	}
	$(".cdtl_inpbx input").val(nowQty);
	$("#shop .total_price").text(comma($("#shop .total_price").attr("data")*nowQty)+"원");
	


}



function findPw(){
	rightLayerAlert.hide();
	$("#_fmFrontFindPasswd input[name=email]").val("");
	$("#login-sec").removeClass("login-form").addClass("findpw-form");
	$("html").attr("class", "right-on login findpw");
}

function joinFrm(){
	rightLayerAlert.hide();
	$("#_fmFrontJoin input[type=email], #_fmFrontJoin input[type=text], #_fmFrontJoin input[type=password]").val("");
	$("#login-sec").removeClass("agree").addClass("join-form");
	$("html").attr("class", "right-on login join");
}
function join(){


	//rightLayerAlert.hide();
	$("#login-sec").removeClass("login-form").addClass("agree");
	$("html").attr("class", "right-on login");

	$("#_fmFrontJoin input[name=redirectUrl]").val(location.pathname);
	$(".agree .btn a:eq(1)").removeClass("active");
	$(".agree input[name=agree-1], input[name=agree-2]").prop("checked", false)
	.off("change").on("change", function(){
		if($("input[name=agree-1]").prop("checked") && $("input[name=agree-2]").prop("checked")){
			$(".agree .btn a:eq(1)").addClass("active");
		} else {
			$(".agree .btn a:eq(1)").removeClass("active");
		}
	});
	$(".agree .btn a:eq(0)").off("click").on("click", function(){
		that.login();
	});
	$(".agree .btn a:eq(1)").off("click").on("click", function(){
		if($("input[name=agree-1]").prop("checked") && $("input[name=agree-2]").prop("checked")){
			joinFrm();
		} else {
			rightLayerAlert.init("이용약관, 개인정보처리방침은<br>필수 동의 사항입니다.");
		}
	});
}


//재료리스트 scroll fix : 150324
function scrollFix(type){
  var htmlLength = $('#'+type+' .popup-content').outerHeight(true);
  var ingreLenght = $('#'+type+' .popup-info .recipe-ingredient').outerHeight(true);
  var btm_offset = $('#'+type+' .popup-info .popup-info-top').outerHeight(true) + $('#'+type+' .popup-info .recipe-sns').outerHeight(true);
  var marginComp = (1048 / 2) - 290;
  var max_scroll = htmlLength - ingreLenght;
  var $target = $(".popup.on");
  $('#'+type+' .popup-info').height(htmlLength);

  
  //if (!isModal) {
  //  btm_offset += 113; // inpage에서 로딩시 헤더 높이 만큼 compensation
  //  marginComp += 8.5;
  //}
  $(window).resize(function(){
		$('#'+type+' .popup-info').height(htmlLength);
  })
  $target.scroll(function () {
    var scroll = $(this).scrollTop();

    if (scroll < btm_offset) {
      $('#'+type+' .popup-info .recipe-ingredient').css({
        'position': 'relative',
        'top': '0',
        'left': '0',
        'margin-left': '0'
      });
    } else if (scroll >= max_scroll) {
      $('#'+type+' .popup-info .recipe-ingredient').css({
        'position': 'fixed',
        'bottom': '0',
        'top': 'auto',
        'left': '50%',
        'margin-left': marginComp
      });
    } else {
      $('#'+type+' .popup-info .recipe-ingredient').css({
        'position': 'fixed',
        'top': '0',
        'left': '50%',
        'margin-left': marginComp
      });
    }
  });
}



function customAlert(message, url) {
	if(url != null || url != ''){
		alert(message);
		location.href=url;
	}else{
		alert(message);
	}
}
</script>
<iframe id="_iFrmForAction" name="_iFrmForAction" src="" width="0" height="0" style="display:none"></iframe>
<c:if test="${!empty sessionScope.loginUser }">
	<script>
	$(document).ready(function(){
		$.ajax({
			method: "POST",
		    cache: false,
		    url: "recipeLike.do",
		    data: {
				userid:"${sessionScope.loginUser.userid}"
		    },
		    success: function(result) {
					if(result){
					$.each(result,function(key,value){
						$(".recipe_box_"+value.RECIPE_NO+" .like").addClass("on");
					});
				}
		    },
		    error: function (result) {
		    	console.log(result);
		    }
		});	

		
		$.ajax({
			method: "POST",
		    cache: false,
		    url: "chefFollow.do",
		    data: {
				userid:"${sessionScope.loginUser.userid}"
		    },
		    success: function(result) {
					if(result){
					$.each(result,function(key,value){
						$(".chef_box_"+value.CHEF_NO+" .follow").addClass("on");
					});
				}
		    },
		    error: function (result) {
		    	console.log(result);
		    }
		});
		
		$(".chef_box_normal li div.follow").on("click",function(){
			var obj = $(this);
			$.ajax({
				method: "POST",
			    cache: false,
			    url: "chefFollowSave.do",
			    data: {
			    	userid:"${sessionScope.loginUser.userid}",
					chef_no:$(this).attr("rel")
			    },
			    success: function(result) {
					if(result.code=="UNFOLLOW"){
						$(obj).removeClass("on");
					}else if(result.code=="FOLLOW"){
						$(obj).addClass("on");
					}
			    },
			    error: function (result) {
			    	console.log(result);
			    }
			});	
		})
		
		$(".recipe_box_normal li div.like").on("click",function(){
			var obj = $(this);
			var follow = $(this).find("span");
			$.ajax({
				method: "POST",
			    cache: false,
			    url: "recipeLikeSave.do",
			    data: {
			    	userid:"${sessionScope.loginUser.userid}",
					recipe_no:$(this).attr("rel")
			    },
			    success: function(result) {
			    	console.log(result.code);
					if(result.code=="UNLIKE"){
						$(obj).removeClass("on");
						follow.text(Number(follow.text())-1);
						
					}else if(result.code=="LIKE"){
						$(obj).addClass("on");
						follow.text(Number(follow.text())+1);
					}
			    },
			    error: function (result) {
			    	console.log(result);
			    }
			});	
		})
	});
	</script>
</c:if>