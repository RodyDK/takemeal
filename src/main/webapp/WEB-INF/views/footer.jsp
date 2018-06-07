<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


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
	
	.recipe-view {
		position: absolute; 
		top: 0; 
		left: 50%; 
		transform: translate(-50%, 0);
		background:#fff;
		width:80%;
		overflow:hidden;
	}
	
	.recipe-view .recipe-content{
		width:70%;
		float:left;
	}
	.recipe-view .recipe-info{
		width:30%;
		float:left;
		background:#282828;
		padding-top:20px;
	}
	
	.recipe-view .recipe-info .author {
		width:100%;
		display:block;
	}
	
	.recipe-view .recipe-info .author a {
		display:block;
	}
	
	.recipe-view .recipe-info .author .profile_thumb {
		margin:0 auto;
		width:100px;
		border-radius:50px;
		overflow:hidden;
		display:block;
	}
	.recipe-view .recipe-info .recipe-subject {
		font-size:20px;
		color:#fff;
		text-align:center;
	}
	
	.recipe-view .recipe-info .recipe-util {
		padding:0 30px;
		width:auto;
		color:#fff;
		font-size:14px;
	}
	.recipe-view .recipe-info .recipe-util li {
		overflow:hidden;
		line-height:30px;
	}
	.recipe-view .recipe-info .recipe-util li span {
		float:left;
		width:120px;
		color:#f9f9f9;
	}
	.recipe-view .recipe-info .recipe-util li p {
		float:left;
		width:calc(100% - 120px);
		text-align:right;
		font-weight:900;
	}
	
	.recipe-view .recipe-info .recipe-scrap a {
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
	
	.recipe-view .recipe-info .recipe-sns {
		border: 1px solid #f9f9f9;
		border-radius:5px;
		margin:0 20px 20px;
	}
	.recipe-view .recipe-info .recipe-sns dl {
		overflow:hidden;
		-webkit-box-sizing: border-box;
     	-moz-box-sizing: border-box;
		box-sizing: border-box;
	}
	.recipe-view .recipe-info .recipe-sns dl dd {
		width:33.3333333%;
		float:left;
		margin:0;
		text-align:center;
		font-size:20px;
		color:#fff;
		padding:5px 0; 
		position:relative;
	}
	
	.recipe-view .recipe-info .recipe-sns dl dd:after {
		content:"";
		width:1px;
		height:10px;
		background:#fff;
		position:absolute;
		top:10px;
		left:0;
	}
	.recipe-view .recipe-info .recipe-sns dl dd:first-child:after{
		content:none;
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
<div class="popup">
	<div class="popup-close">
		<i class="fa fa-times"></i>
	</div>
	<div class="recipe-view">
		<div class="recipe-content">
			<img src="https://cloudfront.haemukja.com/vh.php?url=https://d1hk7gw6lgygff.cloudfront.net/uploads/direction/image_file/4806/pad_thumb_Mixed-Berry-Cream-Cheese-Blintzes9.jpg&amp;convert=jpgmin&amp;rt=600" alt="Pad thumb mixed berry cream cheese blintzes9" draggable="false">
				<ol class="lst_step">

					<li>
						<div class="img-cover">
							<img src="https://cloudfront.haemukja.com/vh.php?url=https://d1hk7gw6lgygff.cloudfront.net/uploads/direction/image_file/6669/org_resized_ChocMugcake-6.jpg&amp;convert=jpgmin&amp;rt=600" alt="Org resized chocmugcake 6">
						</div>
						<p>오늘의 레시피는 머그 케이크입니다. 사실 머그 케이크의 아이디어는 참 심플한데요. 모든 재료를 큰 머그에 넣고 몇 분 전자레인지에 돌리면 짠! 완성입니다. 그리고 케이크를 먹고 싶은데, 먹을 사람이 저 밖에 없을 때 머그 케이크를 만들기도 해요.</p>
					</li>

					<li>
						<div class="img-cover">
							<img src="https://cloudfront.haemukja.com/vh.php?url=https://d1hk7gw6lgygff.cloudfront.net/uploads/direction/image_file/6666/org_resized_ChocMugcake-3.jpg&amp;convert=jpgmin&amp;rt=600" alt="Org resized chocmugcake 3">
						</div>
						<p>혼자 먹기 딱 적당한 양이죠?<br>양도 그렇지만 준비나 치우는 과정이 참 단순하고, 무엇보다 이 모든 과정이 5분 밖에 걸리지 않는다는 놀라운 사실!<br>모든 재료를 정량으로 준비하면 케이크는 너무 딱딱하거나 질척거리지 않을 거예요.</p>
					</li>

					<li>
						<div class="img-cover">
							<img src="https://cloudfront.haemukja.com/vh.php?url=https://d1hk7gw6lgygff.cloudfront.net/uploads/direction/image_file/6668/org_resized_ChocMugcake-5.jpg&amp;convert=jpgmin&amp;rt=600" alt="Org resized chocmugcake 5">
						</div>
						<p>아주 심플한 머그 케이크에 필요한 재료는요,<br>-밀가루 4 테이블스푼<br>-설탕 2 테이블스푼<br>-무가당 코코아 파우더 2 테이블스푼<br>-소금 조금 <br>-우유 3 테이블스푼<br>-바닐라 농축액 1/4 티스푼<br>-뉴텔라 2 테이블스푼<br>-베이킹 파우더 1/4 티스푼<br>-달걀 1개<br>-에스프레소 파우더 1 티스푼<br>-코코넛 오일 2 테이블스푼<br><br>재료가 준비되면, <br>머그컵에 달걀을 넣고 저어주다가 우유와 오일을 넣고 섞어주세요.<br>나머지 모든 재료를 다 넣어 줍니다.(밀가루, 설탕, 코코아 파우더, 소금)<br>마지막으로 뉴텔라를 넣고 잘 저어주세요.<br>전자레인지에서 2분 정도 돌리는데, 1분 20초가 넘으면 상태를 계속 체크해주세요. 젓가락으로 찔렀을 때 묻어 나오지 않을 정도면 적당하게 익은 거예요.<br>슈거파우더나 초콜릿 시럽을 뿌려 먹어도 좋아요.</p>
					</li>

					<li>
						<div class="img-cover">
							<img src="">
						</div>
						<p></p>
					</li>
				</ol>
		</div>
		<div class="recipe-info">
			<span class="author">
				<a href="recipeChef.do?userid=">
					<span class="profile_thumb">
						<img src="https://cloudfront.haemukja.com/vh.php?url=https://d1hk7gw6lgygff.cloudfront.net/uploads/user/image_file/10/thumb__BF_F8_C7_FC.jpg&amp;convert=jpgmin&amp;rt=600">
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
					<i class="fa fa-heart"></i> 스크랩하기
				</a>
			</div>
			<div class="recipe-sns">
				<dl>
					<dd><i class="fa fa-facebook-f"></i></dd>
					<dd><i class="fa fa-twitter"></i></dd>
					<dd><i class="fa fa-link"></i></dd>
				</dl>
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
				<dl></dl>
			</div>
		</div>

		<div class="textarea">
			<p class="tit">
				개인정보처리방침
				<label><input type="checkbox" name="agree-2"><span>동의</span></label>
			</p>
			<div class="text" id="privacy-text-2">
				<dl></dl>
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
		<form id="_fmFrontJoin" name="_frontJoin" method="post" action="join.do">
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

function popupOpen(type,no){
	
	var html = "";
	
	
	$("html").addClass("popup-on");
	$(".popup").addClass("on");
	
	
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
                	
                	$(".recipe-subject").text(recipeValue.subject);
                	$(".recipe-time").text(recipeValue.time+"분");
                	$(".recipe-follow").text(recipeValue.follow);
                	
                	$(".recipe-info").height($(".recipe-content").height());
                }else if(result.code=="FAIL"){
                	alert(result.message);
                }
            },
            error: function (result) {
            	console.log(result);
            }
        });
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

function customAlert(message,url=null) {
	if(url != null || url != ''){
		alert(message);
		location.href=url;
	}else{
		alert(message);
	}
}
</script>