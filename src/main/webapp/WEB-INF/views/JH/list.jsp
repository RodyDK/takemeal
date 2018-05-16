<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<%@ include file="../head.jsp" %>
<body>
<%@ include file="../header.jsp" %>
<div class="container">
<div class="inner" style="overflow:hidden;">
      <h2>내가 가진 재료로 레시피 추천받기</h2>

      <p>냉장고를 부탁해! 냉장고에 숨어 있는 재료로 맛있는 요리를 만들어보세요.</p>
      <form action="/recipes" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="✓">
          <input type="hidden" name="sort" value="rlv">
          <fieldset class="field1">
            <input type="text" class="search-ingre" placeholder="재료명으로 검색해보세요." autocomplete="off">
            <button class="btn_search">검색</button>
            <h3>대분류</h3>
            <ul class="big_sort">
                  <li><a class="selected" data-id="1" href="javascript:;">곡류</a></li>
                  <li><a class="" data-id="2" href="javascript:;">면/만두류</a></li>
                  <li><a class="" data-id="3" href="javascript:;">빵류</a></li>
                  <li><a class="" data-id="4" href="javascript:;">과자류</a></li>
                  <li><a class="" data-id="5" href="javascript:;">떡류</a></li>
                  <li><a class="" data-id="6" href="javascript:;">감자/고구마류</a></li>
                  <li><a class="" data-id="7" href="javascript:;">묵/두부</a></li>
                  <li><a class="" data-id="8" href="javascript:;">콩/견과류</a></li>
                  <li><a class="" data-id="9" href="javascript:;">채소류</a></li>
                  <li><a class="" data-id="10" href="javascript:;">과일류</a></li>
                  <li><a class="" data-id="11" href="javascript:;">고기류</a></li>
                  <li><a class="" data-id="12" href="javascript:;">햄/소시지</a></li>
                  <li><a class="" data-id="13" href="javascript:;">계란류</a></li>
                  <li><a class="" data-id="14" href="javascript:;">어패류</a></li>
                  <li><a class="" data-id="15" href="javascript:;">해조류</a></li>
                  <li><a class="" data-id="16" href="javascript:;">유제품/치즈류</a></li>
                  <li><a class="" data-id="17" href="javascript:;">양념류</a></li>
                  <li><a class="" data-id="18" href="javascript:;">초콜렛/사탕</a></li>
                  <li><a class="" data-id="19" href="javascript:;">음료/주류</a></li>
            </ul>
            <h3>소분류</h3>
            <ul class="small_sort">
                      <li>
                        <a ingre_id="2" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>귀리</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="3" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>귀리가루</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="4323" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>누룽지</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="4317" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>머핀믹스</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="14" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>메밀가루</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="20" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>밀가루</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="144" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>백미</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="39" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>보리</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="49" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>보리밥</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="30" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>부침가루</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="4318" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>브라우니믹스</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="31" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>빵가루</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="4416" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/14-022a51233c2c6a5acf7b97e6051516a1.png" alt="14">
                            <strong>식빵믹스</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="150" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>쌀가루</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="169" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>쌀밥</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="178" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>쌀죽</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="62" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>옥수수가루</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="70" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>옥수수전분</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="73" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>옥수수통조림</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="118" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>율무</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="23" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>제과용밀가루</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="22" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>제빵용밀가루</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="174" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>즉석밥</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="55" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>찐옥수수</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="53" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>찰옥수수</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="183" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>참치죽</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="165" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>찹쌀</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="167" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>찹쌀가루</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="4324" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>찹쌀풀</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="26" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>치킨가루</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="134" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>쿠스쿠스</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="138" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>퀴노아</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="35" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>통밀</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="25" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>튀김가루</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="27" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>핫케익가루</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="175" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>햇반</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="154" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>현미</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="157" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>현미가루</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="173" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>현미밥</strong>
</a>                      </li>
                      <li>
                        <a ingre_id="158" href="javascript:;">
                            <em></em>
                            <img src="https://d1hk7gw6lgygff.cloudfront.net/assets/_img/ico/20-46a66c8fe172d4960bcbe9bd389bb4c5.png" alt="20">
                            <strong>흑미</strong>
</a>                      </li>
            </ul>
          </fieldset>
          <fieldset class="field2">
            <dl>
              <dt>
              <h3>내가 선택한 재료</h3>
              </dt>
              <dd>
                <ul class="selected-ingre">
                  <li class="no-content">재료를 선택해주세요.</li>
                </ul>
                <div class="btn">
                  <button type="submit">이 재료로 추천받기</button>
                </div>
              </dd>
            </dl>
          </fieldset>
</form>    </div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>
