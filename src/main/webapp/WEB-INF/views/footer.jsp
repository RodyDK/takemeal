<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

function customAlert(message,url=null){
	if(url != null || url != ''){
		alert(message);
		location.href=url;
	}else{
		alert(message);
	}
}
</script>