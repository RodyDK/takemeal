<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<%@ include file="../head.jsp" %>
<body>
<%@ include file="../header.jsp" %>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>


<div class="container">
	<div>
		<div class="recipe_wrap">
			<div class="recipe_write">
				<div class="title">
					<h1>주문하기</h1>
					<p>주문서를 작성하고 상품을 구매하세요</p>
				</div>
				<div class="order_product">
					<table>
						<colgroup>
							<col width="150px">
							<col width="">
							<col width="200px">
							<col width="80px">
							<col width="200px">
						</colgroup>
						<thead>
							<th>이미지</th>
							<th>상품정보</th>
							<th>판매가</th>
							<th>수량</th>
							<th>합계</th>
						</thead>
						<tbody>
							<td>
								<img src="http://image.homeplus.co.kr/UserFiles/Pressimages/85/800/114666185_0.jpg" style="width:100%">
							</td>
							<td>
								<strong>
									팽이버섯
								</strong>
								<span>
									알이 큰 팽이버섯
								</span>
							</td>
							<td>1,000원</td>
							<td>1</td>
							<td><b>1,000원</b></td>
						</tbody>
					</table>
				</div>

				<form name="recipe_write" action="recipeSave.do" method="POST" enctype="multipart/form-data">
				<div class="write_section">
					<h3>기본정보</h3>
					
					<ul>
						<li>
							<span>주문자</span>
							<div><input type="text" name="subject" style="width:200px"></div>
						</li>
						<li>
							<span>연락처</span>
							<div><input type="text" name="cell1" style="width:80px"> - <input type="text" name="cell2" style="width:80px"> - <input type="text" name="cell3" style="width:80px"></div>
						</li>
						<li>
							<span>주소</span>
							<div>
								<div style="margin-bottom:5px;">
									<input type="text" id="postcode" style="width:100px	">
									<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기">
								</div>
								<div style="margin-bottom:5px;">
								<input type="text" id="roadAddress" style="width:500px"> 기본주소
								</div>
								<div style="margin-bottom:5px;">
								<input type="text" style="width:500px"> 나머지주소
								</div>
							</div>
							<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
							<script>
							    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
							    function execDaumPostcode() {
							        new daum.Postcode({
							            oncomplete: function(data) {
							                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
							
							                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
							                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
							                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
							
							                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
							                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
							                    extraRoadAddr += data.bname;
							                }
							                // 건물명이 있고, 공동주택일 경우 추가한다.
							                if(data.buildingName !== '' && data.apartment === 'Y'){
							                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
							                }
							                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							                if(extraRoadAddr !== ''){
							                    extraRoadAddr = ' (' + extraRoadAddr + ')';
							                }
							                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
							                if(fullRoadAddr !== ''){
							                    fullRoadAddr += extraRoadAddr;
							                }
							
							                // 우편번호와 주소 정보를 해당 필드에 넣는다.
							                document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
							                document.getElementById('roadAddress').value = fullRoadAddr;
							
							            }
							        }).open();
							    }
							</script>
						</li>	
						

						<li>
							<span>배송메세지</span>
							<div>
								<textarea></textarea>
							</div>
						</li>
					</ul>
				</div>
				</form>
			</div>
				
			<div class="write_btn">
				<a href="#">
					결제하기
				</a>
			</div>
			
			<script>
				$(".write_btn a").on("click",function(){
					var form = document.recipe_write;

					var IMP = window.IMP;
					IMP.init('iamport');
					IMP.request_pay({
					    pg : 'kakaopay', // version 1.1.0부터 지원.
					    pay_method : 'card',
					    merchant_uid : 'merchant_' + new Date().getTime(),
					    name : '주문명:결제테스트',
					    amount : 1000,
					    buyer_email : 'iamport@siot.do',
					    buyer_name : '구매자이름',
					    buyer_tel : '010-1234-5678',
					    buyer_addr : '서울특별시 강남구 삼성동',
					    buyer_postcode : '123-456',
					    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
					}, function(rsp) {
					    if ( rsp.success ) {
					        var msg = '결제가 완료되었습니다.';
					        msg += '고유ID : ' + rsp.imp_uid;
					        msg += '상점 거래ID : ' + rsp.merchant_uid;
					        msg += '결제 금액 : ' + rsp.paid_amount;
					        msg += '카드 승인번호 : ' + rsp.apply_num;
					    } else {
					        var msg = '결제에 실패하였습니다.';
					        msg += '에러내용 : ' + rsp.error_msg;
					    }
					    alert(msg);
					});
				});

			</script>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>
