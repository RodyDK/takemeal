<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="login-sec" class="right-side-bar">
	<a href="javascript:;" class="close">닫기</a>
	<p class="alert-msg"><span></span></p>

	<!-- 로그인 폼 -->
	<div class="sec login">
		<form id="_fmFrontLogin" name="_frontLogin" method="post" action="https://www.sta1.com/login" onsubmit="return validateFormElement(this)" class="layer" target="_iFrmForAction">
			<input type="hidden" id="keepLoginFlag" name="keepLoginFlag" value="Y">
			<div class="inp id"><input type="email" name="id" class="__required __noSpace" placeholder="아이디" fieldname="아이디" checkfuntionname="checkEmail" malxength="60"></div>
			<div class="inp pw"><input type="password" name="passwd" class="__required __noSpace" placeholder="비밀번호" fieldname="비밀번호" maxlength="20"></div>

			<div class="btn"><input type="submit" value="이메일 로그인"></div>
			<div class="link">
				<a href="javascript:;" class="join">회원가입</a>
				<a href="javascript:;" class="findpw">비밀번호 찾기</a>
			</div>
		</form>

		<div class="sns-login">
			<a href="javascript:;" onclick="loginSns('KT');" class="kakao">카카오톡</a>
			<a href="javascript:;" onclick="loginSns('FB');" class="facebook">페이스북</a>
			<a href="javascript:;" onclick="loginSns('NV');" class="naver">네이버</a>
		</div>
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
		<form id="_fmFrontJoin" name="_frontJoin" method="post" action="https://www.sta1.com/user/join" onsubmit="return checkFrontJoinForm(this)" class="layer" target="_iFrmForAction" enctype="multipart/form-data">
			<input type="hidden" name="redirectUrl" value="">
			<ul>
				<li>
					<label for="join_id">이메일</label>
					<input type="email" id="join_id" name="id" class="__required __noSpace" fieldname="이메일" malxength="60" checkfunctionname="checkEmail">
				</li>
				<li>
					<label for="join_nickName">닉네임</label>
					<input type="text" id="join_nickName" name="nickName" class="__required __noSpace" fieldname="닉네임" restrictutf8bytes="45">
				</li>
				<li>
					<label for="join_passwd">비밀번호</label>
					<input type="password" id="join_passwd" name="passwd" class="__required __noSpace" fieldname="비밀번호" maxlength="20" minlength="4">
				</li>
				<li>
					<label for="join_passwd_re">비밀번호 확인</label>
					<input type="password" id="join_passwd_re" name="passwd_re" class="__required __noSpace" fieldname="비밀번호 확인" equaltoel="passwd" maxlength="20" minlength="4">
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
		<form id="_fmFrontFindPasswd" name="_fmFrontFindPasswd" method="post" onsubmit="return validateFormElement(this)" class="layer" action="/findPasswd" target="_iFrmForAction">
			<div class="inp"><input type="email" name="email" class="__required __noSpace" placeholder="이메일" fieldname="가입하신 이메일 주소" checkfuntionname="checkEmail" maxlength="60"></div>
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