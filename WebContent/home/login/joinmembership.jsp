<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-latest.min.js"></script>
 <link href="../home.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="wide-container-register">
		<div class="register-contents">
			<form id="join" name="joinForm" action="<%=request.getContextPath() %>/home/login/join_action.jsp" method="post">
				<div class="register-subject">회원가입</div>
				<div class="register-msg-box">국적(Please select your country)</div>
				<div class="register-country-dropdown" style="margin-bottom: 10px;">
					<div class="Dropdown-root">
						<div class="Dropdown-control">
							<div class="Dropdown-placeholder">대한민국 (Republic of Korea)</div>
						</div>
					</div>
				</div>
				<div class="title-id">
					<!-- react-text: 1222 -->
					아이디 <span class=title-id-desc style="display: none; float: right;" id="overlapcheck1" class="overlapcheck1">중복체크를 해주세요.</span>
					<!-- /react-text -->
					<div class="title-id-desc">
						<!-- react-text: 1224 -->
						  &nbsp;&nbsp;&nbsp;
						<!-- /react-text -->
					</div>
				</div>
				<div class="register-id-check">
					<input type="text" class="register-id-box register-box" required=""
						placeholder="영문자로 시작하는 5자이상의 영문자와 숫자가 조합된 아이디로 만들어주세요 ." value="" name="mId" id="id">
					<button type="button"
						class="register-button register-button-id-check" id="idCheck" >중복체크</button>
				</div>
				<div class="title-id">
					<!-- react-text: 1229 -->
					비밀번호  <span class=title-id-desc style="display: none; float: right;" id="passwdMatchMsg" >비밀번호를 형식에 맞게 작성해주세요 </span>
					<!-- /react-text -->
					<div class="title-id-desc"></div>
				</div>
				<div>
					<input type="password" class="register-box register-password-box"
						required="" value="" name="mPw" id="mPw" placeholder="8자 이상의 영문, 숫자, 특수문자의 조합으로 입력해주세요.">
					<div class="title-id">비밀번호 확인<span class="title-id-desc" id="repasswdMatchMsg" style="display: none; float: right;">비밀번호가 일치하지 않습니다</span></div>
					<input type="password" class="register-box register-password-box"
						required="" value="" name="mRepw" id="mRepw">
				</div>
				<div class="title-id">
					<!-- react-text: 1236 -->
					이메일 주소 <span class="title-id-desc" id="emailRegMsg" style="display: none; float: right;"  >입력한 이메일이 형식에 맞지 않습니다. </span>
					<!-- /react-text -->
					<div class="title-id-desc"></div>
				</div>
				<div class="register-id-check">
					<input type="text" class="register-id-box register-box" required=""
						value="" name="mEmail" style="width: 479px" id="email">
				</div>
				<div class="pt5"></div>
				<div class="title-id">통합 회원 확인<span class=title-id-desc style="display: none; float: right;" id="overlapcheck2">중복체크를 해주세요</span> </div>
				<div class="register-confirm-line" style="float:left;">
					<input type="text" class="register-box register-name-box"
						required="" placeholder="이름" value="" style="float:left;" name="mName" id="mName";>
					<input type="tel" class="register-box register-phone-box" required=""
						placeholder="010-1234-5678" value="" style="float:left;" name="mPhone"; id="mPhone";>
					<div class="register-button-red" style="float:left;" id="phonecheck">중복체크</div>
				</div>
				<div class="register-subject-small-require">필수사항<span class=title-id-desc style="display: none; float: right;" id="overlapcheck3">동의사항에 동의해주세요.</span></div>
				<div class="register-group-normal">
					<div class="register-group-text">만 14세 이상, 이용약관, 개인 정보 수집 및
						이용 동의에 모두 동의합니다.</div>
					<div class="register-checks">
						<input type="checkbox" id="ex_chk1" class="input-margin-bottom"
							value="on" onclick="clickaction();" name="ex_chk1"><label for="ex_chk1"></label>
						<div class="pt5"></div>
					</div>
				</div>
				<div class="register-group-normal">
					<div class="register-group-smalltext">만 14세 이상입니다.</div>
					<div class="register-checks">
						<label for="ex_chk2"></label>
						<div class="pt5"></div>
					</div>
				</div>
				<div class="register-group-long">
					<div class="register-group-smalltext">이용약관에 동의합니다.</div>
					<div class="register-checks">
						<label for="ex_chk3"></label>
						<div class="pt5"></div>
					</div>
					<div class="register-group-scroll">
						<div class="policy-content">
							<table class="table-select">
								<tr>
									<td class="selected">온라인 몰 이용약관</td>
									<td style="border-right: none; width: 140px;">스파이더 통합 멤버십
										이용약관</td>
								</tr>
							</table>
							<div class="policy-box">
								스파이더 웹 사이트 이용약관<br>
								<br> 회원 가입 전 반드시 이용약관을 읽어보시기 바랍니다.<br>
								<br> 제1조(목적)<br>
								<br> 이 약관은 글로벌브랜드그룹코리아 유한회사(이하 “GBGK”라 한다)가 운영하는 스파이더 웹사이트
								및 모바일 페이지 등(이하 “사이트”)에서 제공하는 인터넷 관련 서비스(이하 “서비스”)를 이용함에 있어 회사와
								이용자의 권리•의무 및 책임 사항을 규정함을 목적으로 합니다. <br>
								<br> 제2조(정의)<br>
								<br> 1. 본 약관에서 정하는 용어의 정의는 다음과 같습니다.<br> ① “웹 사이트”란
								회사가 컴퓨터, 이동통신 등의 각종 유무선 장치를 포함하는 정보통신설비를 이용하여 상품이나 서비스를 이용자에게
								제공할 수 있도록 설정한 가상공간을 말하며, 회사가 운영하고 있는 사이트의 현황은 아래와 같습니다. (2018.
								05 기준) <br>
								<br> - http://www.spyder.co.kr <br> -
								http://www.spyderexpert.co.kr/expert/<br> -
								http://www.spydercorefit.co.kr/<br> -
								http://www.spyderproathlete.co.kr/<br> -
								http://www.spyderchapionship.com/<br>
								<br> ② “이용자”란 ‘스파이더 웹 사이트’ 에 접속하여 이 약관에 따라 ‘스파이더 웹 사이트’이
								제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br> ③ ‘회원’이라 함은 ‘스파이더 웹 사이트’ 에
								회원등록을 한 자로서, 계속적으로 ‘스파이더 웹 사이트’이 제공하는 서비스를 이용할 수 있는 자를 말합니다.<br>
								④ ‘비회원’이라 함은 회원에 가입하지 않고 ‘스파이더 웹 사이트’가 제공하는 서비스를 이용하는 자를 말합니다.<br>
								⑤ "개인정보”란 생존하는 개인에 관한 정보로서 성명, 주민등록번호 등의 사항에 의하여 특정 개인을 식별할 수 있는
								정보(당해 정보만으로는 특정 개인을 인식할 수 없더라도 다른 정보와 용이하게 결합하여 식별할 수 있는 것을 포함)를
								말합니다.<br> ⑥ “아이디”란 회원의 식별과 회원의 서비스 이용을 위하여 회원이 설정하고 회사가
								승인하여 회사에 등록된 영문, 숫자 또는 영문과 숫자의 조합을 말합니다.<br> ⑦ “비밀번호”란 회원의
								동일성 확인을 위하여 회원 스스로가 설정하여 회사에 등록된 영문과 숫자의 조합을 말합니다.<br> ⑧
								“회원등급”이란 회사가 제공하는 서비스를 이용한 결과에 따라 일정한 기준에 의하여 회사가 회원에게 부여하는 등급을
								말합니다.<br> ⑨ “게시글”이란 이용자가 “서비스”를 이용함에 있어 “서비스상”에 게시한 글, 사진,
								동영상 및 각종 파일과 링크 등의 게재물을 말합니다.<br> ⑩ “상품평”이란 게시글 중 상품 구매 후
								해당 상품에 대한 종합적인 평가를 기록한 글, 이미지 등의 게재물을 말합니다. 회사는 회사 및 회사의 본사 기타
								계열회사가 운영하는 사이트 또는 제휴한 사이트, 홍보채널 등에서의 상품의 판촉, 홍보 등을 위해 상품평을 복제,
								배포, 전송, 전시할 수 있으며 본질적인 내용에 변경을 가하지 않는 범위 내에서 수정, 편집할 수 있습니다.<br>
								⑪ “ 마일리지” 란 회원이 상품을 구매할 때나, 회사가 제공하는 서비스를 이용할 때 회사가 제공하는 적립금을
								의미하며, 환금 불가능한 회사 전용의 재산적 가치가 없는 사이버 데이터를 말하며, 일정 금액에 달한 마일리지는
								온라인 몰 및 매장 (백화점 제외) 에서 사용할 수 있습니다.<br> ⑫ “서비스”란 제4조에 정한 바
								대로 회사가 사이트를 통하여 이용자를 위하여 유료 또는 무료로 제공하는 행위 또는 그 행위의 대상인 유•무형의 물건
								자체를 의미합니다.<br> 2. 이 약관에서 사용하는 용어의 정의는 제1항에서 정하는 것을 제외하고는
								관계법령 및 서비스 별 안내에서 정하는 바에 의합니다.<br>
								<br> 제3조 (약관 등의 명시와 설명 및 개정)<br>
								<br> 1. ‘스파이더 웹 사이트’ 는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지
								주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호,전자우편주소, 사업자등록번호, 통신판매업
								신고번호, 개인정보관리책임자등을이용자가 쉽게 알 수 있도록 ‘스파이더 웹 사이트’의 초기 서비스화면(전면)에
								게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다. <br> 2.
								‘스파이더 웹 사이트’ 는 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회,배송책임,환불조건
								등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을
								구하여야 합니다.<br> 3. ‘스파이더 웹 사이트’ 는 「전자상거래 등에서의 소비자보호에 관한 법률」,
								「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」,「전자서명법」,「정보통신망 이용촉진
								및 정보보호 등에 관한 법률」,「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서
								이 약관을 개정할 수 있습니다.<br> <br> 4. ‘스파이더 웹 사이트’이 약관을 개정할
								경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자
								전일까지공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을
								두고 공지합니다. 이 경우 ‘스파이더 온라인 쇼핑몰’은 개정전 내용과 개정 후 내용을 명확하게 비교하여 이용자가
								알기 쉽도록 표시합니다.<br>
								<br> 5.‘스파이더 웹 사이트’ 이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는
								계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의약관조항이 그대로 적용됩니다. 다만 이미 계약을
								체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간내에 ‘스파이더 웹
								사이트’ 에 송신하여 ‘스파이더 웹 사이트’의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.<br>
								<br> 6.이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래등에서의 소비자보호에
								관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령
								또는 상관례에 따릅니다.<br>
								<br> 제4조(서비스의 제공 및 변경)<br>
								<br> 1.‘스파이더 웹 사이트’ 는 다음과 같은 업무를 수행합니다.<br>
								<br> ① 쇼핑관련 정보 제공 서비스<br> ② 회원 커뮤니티 운영 서비스<br> ③
								사이트에서 상품 또는 용역에 대한 정보의 제공 및 구매 계약 체결<br> ④ 이용자가 사이트에서 구매
								신청한 상품 또는 용역의 배송<br> ⑤ 기타 사이트가 정하는 이용자에게 유용한 부가 서비스 <br>
								2. 스파이더 웹 사이트 ’은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에
								의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를
								명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다. <br> 3. ‘스파이더 웹
								사이트’ 가 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 변경 등의 사유로
								변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다. <br> 4.전항의 경우
								‘스파이더 웹 사이트’ 는 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, ‘스파이더 웹 사이트’이 고의 또는
								과실이 없음을 입증하는 경우에는 그러하지 아니합니다.<br> <br> 제5조(서비스의 중단)<br>
								<br> 1.‘스파이더 웹 사이트’ 는 컴퓨터 등 정보통신설비의 보수점검과 교체 및 고장, 통신의 두절
								등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.<br> 2.‘스파이더 웹
								사이트’ 는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여
								배상합니다. 단, ‘스파이더 웹 사이트’이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.<br>
								3.사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 ‘스파이더
								웹 사이트’ 는 8조에 정한 방법으로 이용자에게 통지하고 당초 ‘스파이더 웹 사이트’에서 제시한 조건에 따라
								소비자에게 보상합니다. 다만, ‘스파이더 웹 사이트’이 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지
								또는 적립금 등을 ‘스파이더 웹 사이트’에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.<br>
								제6조(회원가입)<br>
								<br> 1.이용자는 '스파이더 웹 사이트' 가 정한 가입 양식에 따라 회원 정보를 기입한 후 이 약관에
								동의한다는 의사표시를 함으로서 회원가입을 신청합니다.<br> 2.‘스파이더 웹 사이트’ 는 제1항과 같이
								회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다.<br> ① 만
								14세 미만의 자가 법정대리인(부모 등)의 동의 없이 이용신청을 하는 경우<br> ② 등록내용에 허위,
								기재누락, 오기가 있는 경우<br> ③ 다른 사람의 명의를 이용하여 신청하는 경우<br> ④
								회원으로 등록하는 것이 사이트의 기술상 또는 업무 수행상 현저히 지장이 있다고 판단하는 경우<br> ⑤ 이
								약관에 의하여 회원 자격을 상실한 적이 있는 것으로 관련 법령에 근거하여 회사가 확인한 경우. 단, 회사가 재가입을
								승낙한 경우를 제외<br> ⑥ 기타 신청자의 귀책 사유로 이용 승낙이 곤란한 경우<br> 3.
								회원가입계약의 성립 시기는 ‘스파이더 웹사이트’ 의 승낙이 회원에게 도달한 시점으로 합니다.<br> 4.
								회원은 개인정보관리화면을 통해 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다. 회원가입 신청 시 기재한
								등록사항의 변경이 있는 경우, 즉시 변경사항을 온라인에서 최신의 정보로 수정하여야 합니다. 단, 이름, 아이디 등
								기술적, 관리적으로 변경이 불가능한 정보는 수정할 수 없습니다. 회원 본인이 수정하지 않은 정보로 인하여 발생하는
								손해는 당해 회원이 부담하며, 회사는 이에 대하여 아무런 책임을 지지 않습니다.<br> 5. 회사는 회원의
								정보를 서비스를 제공하기 위한 목적 이외의 용도로 사용하거나 이용자의 동의 없이 제3자에게 제공하지 않습니다.<br>
								6. 회사는 회원의 개인정보를 보호하기 위한 정책을 수립하고 개인정보관리 책임자를 지정하여 이를 게시합니다.<br>
								7. 기타 회원의 개인정보 수집, 이용, 보유, 제공, 처리 등에 관한 사항은 관련 법령 및 개인정보 처리방침에
								따릅니다.<br> <br> 제7조(회원 탈퇴 및 자격 상실 등)<br>
								<br> 1. 회원은 회사에 언제든지 탈퇴(즉, 이용계약 해지)를 요청할 수 있으며 회사가 탈퇴요청
								접수일로부터 24시간 이내 회원 탈퇴 처리를 함으로써 본 이용계약은 해지됩니다. 단, 회원은 이용계약 해지 의사를
								통지하기 전에 현재 진행중인 모든 상품의 거래를 완료하거나 철회 또는 취소하여야 하며, 거래의 철회 또는 취소로
								인한 불이익은 회원 본인이 부담하여야 합니다.<br> 또한, 회원이 회사에 대한 채무를 전부 이행(마이너스
								마일리지 및 적립금의 상환, 구입한 재화 대금 지급 등) 하지 아니한 경우 회원이 당해 채무를 전부 이행할 때까지
								회사는 회원 탈퇴 처리를 유보함으로써 회원의 이용계약 해지를 제한할 수 있습니다.<br> 2. 회원탈퇴로
								인해 발생한 불이익에 대한 책임은 회원 본인이 져야 하며, 이용계약이 해지되면 회사는 회원에게 부가적으로 제공한
								각종 혜택을 회수할 수 있습니다.<br> 3. 회원의 의사로 이용계약을 해지한 후 사이트의 재가입을 희망할
								경우 회사의 자산을 보호하기 위한 목적(이용자가 회원 재가입, 임의 해지 등을 반복적으로 행함으로써 회사가 제공하는
								각종 쿠폰, 이벤트 혜택 등의 경제상의 이익을 불•편법으로 수취하거나 이 과정에서 명의도용 등의 행위 우려가 있는
								것으로 회사가 판단한 경우 등)에 따라 회사는 회원의 재가입을 제한할 수 있습니다.<br> 4. 회사는
								전자상거래등에서의소비자보호에관한법률 등 타 법률에 의해 보존해야 할 필요가 있는 경우에는 회원의 개인정보를 일정기간
								보유합니다.<br> 5. 회원이 다음 각 호의 사유에 해당하는 경우, 회사는 회원자격을 즉시 상실(이용계약
								및/또는 개별계약 해지 포함) 시키거나 사이트 이용을 제한할 수 있고, 제한 기간은 회사가 정할 수 있습니다.<br>
								① 회원/비회원 등록 신청 시에 허위 내용 및 다른 사람의 명의를 허락 없이 이용하여 등록한 경우<br>
								② 사이트에 제공되는 정보를 변경하는 등 사이트의 운영을 방해한 경우<br> ③ 다른 회원의
								아이디(ID)를 부정 사용하는 행위<br> ④ 범죄행위를 목적으로 하거나 기타 범죄행위와 관련된 행위<br>
								⑤ 선량한 풍속, 기타 사회질서를 해하는 행위<br> ⑥ 타인의 명예를 훼손하거나 모욕하는 행위<br>
								⑦ 타인의 지적재산권 등의 권리를 침해하는 행위<br> ⑧ 해킹행위 또는 컴퓨터 바이러스, 악성 프로그램의
								유포 등 정보통신설비 및 전산망의 안전을 위협하는 행위<br> ⑨ 타인의 의사에 반하여 광고성 정보 등
								일정한 내용을 지속적으로 전송하는 행위<br> ⑩ 서비스의 안전적인 운영에 지장을 주거나 줄 우려가 있는
								일체의 행위<br> ⑪ 사이트를 이용하여 법령과 이 약관이 금지하는 행위를 하는 경우<br> ⑫
								정보통신망이용촉진및정보보호에관한법률이 정한 1년간 계속적으로 이용실적(로그인 및 구매실적)이 없는 경우<br>
								⑬ 기타 관계법령 및 본 약관상의 제반 규정을 위반하는 경우<br> 6. 회사는 본 조 제5항에 해당되는
								경우 이용계약을 해지 할 수 있습니다.<br> 7. 회사가 이용계약을 해지하는 경우, 회사는 회원등록을
								말소하며 회원에게 전자우편, 전화, 팩스 등 회사가 선택한 방법(이하 “통지방법”)을 통하여 해지사유를 밝혀
								해지의사를 통지합니다. 이용계약은 회사의 해지의사를 회원에게 통지한 시점에 종료됩니다.<br> 8. 회사가
								이용계약을 해지하더라도, 이용계약 해지 이전에 회사와 회원 간에 이미 체결된 개별계약의 완결에 관해서는 이 약관이
								계속 적용될 수 있습니다. 단, 회사는 회원에게 부가적으로 제공한 각종 혜택을 회수할 수 있습니다.<br>
								<br> 제8조(회원에 대한 통지)<br>
								<br> 1.‘스파이더 웹 사이트’이 회원에 대한 통지를 하는 경우, 회원이 ‘스파이더 웹 사이트’과 미리
								약정하여 지정한 전자우편 주소로 할 수 있습니다.<br> 2.‘스파이더 웹 사이트’ 는 불특정다수 회원에
								대한 통지의 경우 1주일 이상 ‘스파이더 웹 사이트’ 에 게시함으로서 개별 통지에 갈음할 수 있습니다. 다만, 회원
								본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.<br> <br>
								제 9조(구매신청 및 개인정보 제공 동의 등)<br>
								<br> 1.‘스파이더 웹 사이트’이용자는 ‘스파이더 웹 사이트’상에서 다음 또는 이와 유사한 방법에
								의하여 구매를 신청하며, ‘스파이더 웹 사이트’는 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게
								제공하여야 합니다.<br> <br> ① 재화 등의 검색 및 선택<br> ②성명, 주소,
								전화번호, 전자우편주소(또는 이동전화번호) 등의 입력<br> ③ 약관내용, 청약철회권이 제한되는 서비스,
								배송료, 설치비 등의 비용부담과 관련한 내용에 대한 확인<br> ④ 이 약관에 동의하고 위 3호의 사항을
								확인하거나 거부하는 표시 (예, 마우스 클릭)<br> ⑤ 재화등의 구매신청 및 이에 관한 확인 또는
								‘스파이더 웹 사이트’의 확인에 대한 동의<br> ⑥결제방법의 선택<br> ⑦ 기타 ‘스파이더 웹
								사이트’가 별도로 정하는 절차<br> ⑧ ‘스파이더 웹 사이트’이 제3자에게 구매자 개인정보를 제공하거나
								위탁할 필요가 있는 경우<br> <br> 2. 1) 개인정보를 제공받는 자, 2)개인정보를
								제공받는 자의 개인정보 이용목적, 3) 제공하는 개인정보의 항목, 4) 개인정보를 제공받는 자의 개인정보 보유 및
								이용기간을 구매자에게 알려야 합니다. 다만, 서비스제공에 관한 계약이행을 위해 필요하고 구매자의 편의증진과 관련된
								경우에는 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」에서 정하고 있는 방법으로 개인정보 취급방침을 통해
								알림으로써 고지절차와 동의절차를 거치지 않아도 됩니다.<br> <br> 제10조 (계약의 성립)<br>
								<br> 1. ‘스파이더 웹 사이트’는 제9조와 같은 구매신청에 대하여 다음 각 호에 해당하면 승낙하지
								않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는
								법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.<br> ① 신청 내용에 허위, 기재누락,
								오기가 있는 경우<br> ② 기타 구매신청에 승낙하는 것이 ‘스파이더 웹 사이트’기술상 현저히 지장이
								있다고 판단하는 경우<br> 2. ‘스파이더 웹 사이트’의 승낙이 제12조제1항의 수신확인통지형태로
								이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.<br> 3. ‘스파이더 웹 사이트’의 승낙의
								의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소 등에 관한 정보 등을
								포함하여야 합니다.<br> <br> 제11조 (지급방법)<br>
								<br>
								<br> 1.‘스파이더 웹 사이트’에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각 호의 방법중
								가용한 방법으로 할 수 있습니다. 단, ‘스파이더 웹 사이트’ 는 이용자의 지급방법에 대하여 재화 등의 대금에
								어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.<br>
								<br> 1. 온라인 무통장 입금, 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체<br>
								2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제<br> 3. 전자화폐에 의한 결제<br>
								4. 마일리지 등 ‘스파이더 웹 사이트’이 지급한 포인트에 의한 결제<br> 5. ‘스파이더 웹 사이트’과
								계약을 맺었거나 ‘스파이더 웹 사이트’이 인정한 상품권에 의한 결제<br> 6. 기타 전자적 지급 방법에
								의한 대금 지급 등<br>
								<br> 제12조 (수신확인통지, 구매신청 변경 및 취소)<br>
								<br> 1. ‘스파이더 웹 사이트’ 는 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.<br>
								2. 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인 통지를 받은 후 즉시 구매신청 변경
								및 취소를 요청할 수 있고 ‘스파이더 웹 사이트’ 는 배송 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에
								따라 처리하여야 합니다. 다만 이미 대금을 지불한 경우 혹은 상품이 발송된 경우에는 제15조의 청약철회 등에 관한
								규정에 따릅니다.<br> <br> 제13조 (재화 등의 공급)<br>
								<br> 1.‘스파이더 웹 사이트’는 이용자와 재화 등의 공급시기에 관하여 별도의 약정이 없는 이상,
								이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작 포장 등 기타의 필요한 조치를
								취합니다. 다만, ‘스파이더 웹 사이트’가 이미 재화 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는
								일부를 받은 날부터 3영업일 이내에 조치를 취합니다. 다만, 소비자와 ‘스파이더 웹 사이트’간 재화 등의 공급
								시기에 관하여 별도의 약정이 있는 경우에는 그러하지 아니합니다. 이때 ‘스파이더 웹 사이트’ 는 이용자가 재화 등의
								공급절차 및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다.<br> 2.‘스파이더 웹 사이트’ 는
								이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 ‘스파이더
								웹 사이트’이 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만 ‘스파이더 웹
								사이트’이 고의과실이 없음을 입증한 경우에는 그러하지 아니합니다.<br> <br> 제14조
								(환급)<br> 1.‘스파이더 웹 사이트’ 는 이용자가 구매신청한 재화 등이 품절 등의 사유로 인도 또는
								제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을
								받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.<br> <br> 제15조
								(청약철회 등)<br>
								<br> 1. ‘스파이더 웹 사이트’와 재화등의 구매에 관한 계약을 체결한 이용자는 「전자상거래 등에서의
								소비자보호에 관한 법률」 제13조 제2항에 따른 계약내용에 관한 서면을 받은날(그 서면을 받은 때보다 재화 등의
								공급이 늦게 이루어진 경우에는 재화 등을 공급받거나 재화 등의 공급이 시작된 날을 말합니다)부터 7일 이내에는
								청약의 철회를 할 수 있습니다. 다만, 청약철회에 관하여 「전자상거래 등에서의 소비자 보호에 관한 법률」에 달리
								정함이 있는 경우에는 동 법 규정에 따릅니다.<br> 2. 이용자는 재화 등을 배송 받은 경우 다음 각
								호에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.<br> ① 이용자에게 책임 있는 사유로 이용자가
								구매한 재화 및 ‘스파이더 웹 사이트’가 제공한 재화 등이 멸실 또는 훼손된 경우 (다만, 재화 등의 내용을
								확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다)<br> ② 이용자의 사용 또는 일부
								소비에 의하여 이용자가 구매한 재화 및 ‘스파이더 웹 사이트’가 제공한 재화 등의 가치가 감소한 경우<br>
								③ 시간의 경과에 의하여 재판매가 곤란할 정도로 이용자가 구매한 재화 및 ‘스파이더 웹 사이트’가 제공한 재화 등의
								가치가 감소한 경우<br> ④ 같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그 원본인 재화 등의
								포장을 훼손한 경우<br> ⑤ 그 밖에 거래의 안전을 위하여 대통령령이 정하는 경우<br> 3.
								제2항 제2호 내지 제4호의 경우에 ‘스파이더 웹 사이트’가 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알
								수 있는 곳에 명기하거나 시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회 등이 제한되지 않습니다.<br>
								4. 이용자는 제 2항 및 제3 항의 규정에 불구하고 재화 등의 내용이 표시, 광고내용과 다르거나 계약내용과 다르게
								이행된 때에는 당해 재화 등을 공급받은 날부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일
								이내에 청약철회 등을 할 수 있습니다.<br> <br> 제16조 (청약철회 등의 효과)<br>
								<br> 1. ‘스파이더 웹 사이트’는 이용자로부터 재화 등을 반환받은 경우 3영업일 이내에 이미 지급받은
								재화 등의 대금을 환급합니다. 이 경우 ‘스파이더 웹 사이트’이 이용자에게 재화등의환급을 지연한때에는 그 지연기간에
								대하여 「전자상거래 등에서의 소비자보호에 관한 법률 시행령」제21조의 2에서 정하는 지연이자율을 곱하여 산정한
								지연이자를 지급합니다.<br> 2.‘스파이더 웹 사이트’는 위 대금을 환급함에 있어서 이용자가 신용카드
								또는 전자화폐 등의 결제수단으로 재화 등의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금
								재화 등의 대금의 청구를 정지 또는 취소하도록 요청합니다.<br> 3.청약철회 등의 경우 공급받은 재화
								등의 반환에 필요한 비용은 이용자가 부담합니다. ‘스파이더 웹 사이트’는 이용자에게 청약철회 등을 이유로 위약금
								또는 손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시, .광고 내용과 다르거나 계약내용과 다르게 이행되어
								청약철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 ‘스파이더 웹 사이트’이 부담합니다.<br>
								4.이미 재화 등이 일부 사용 또는 일부 소비된 경우에는 그 재화 등의 사용 또는 일부 소비에 의하여 소비자가 얻은
								이익 또는 그 재화 등의 공급에 소요된 비용에 상당하는 금액으로서 대통령 령이「전자상거래 등에서의 소비자보호에 관한
								법률 시행령」 제 24조에 정하는 범위의 금액의 지급을 이용자에게 청구할 수 있습니다.<br> 5.상품을
								구매하여 마일리지를 지급 받은 경우, 혹은 해당 마일리지를 이용하여 재화를 지급받은 경우 해당 상품의 취소시 지급
								받은 마일리지를 환급 혹은 재화를 반납하셔야 취소가 가능합니다.<br> 6.이용자가 재화 등을 제공받을 때
								발송비를 부담한 경우에 ‘스파이더 웹 사이트’는 청약철회 시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록
								명확하게 표시합니다.<br> <br> 제17조 (개인정보보호)<br>
								<br> 1.‘스파이더 웹 사이트’ 는 이용자의 개인정보 수집시 서비스제공을 위하여 필요한 범위에서
								최소한의 개인정보를 수집합니다.<br> 2.‘스파이더 웹 사이트’는 회원가입시 구매계약이행에 필요한 주소
								등의 정보를 이용자의 동의없이 미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을 위하여 구매계약 이전에
								본인확인이 필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지 아니합니다.<br>
								3.‘스파이더 웹 사이트’는 이용자의 개인정보를 수집 .이용하는 때에는 당해 이용자에게 그 목적을 고지하고 동의를
								받습니다.<br> 4.‘스파이더 웹 사이트’는 수집된 개인정보를 목적외 용도로 이용할 수 없으며, 새로운
								이용목적이 발생한 경우 또는 제3자에게 제공하는 경우에는 이용, 제공단계에서 당해 이용자에게 그 목적을 고지하고
								동의를 받습니다. 다만, 관련 법령에 달리 정함이 있는 경우에는 예외로 합니다.<br> 5.‘스파이더 웹
								사이트’가 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및
								전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및
								제공할 정보의 내용) 등 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제22조제2항이 규정한 사항을 미리
								명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.<br> 6.이용자는 언제든지
								‘스파이더 웹 사이트’가 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 “몰”은 이에
								대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 ‘스파이더 웹 사이트’는
								그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.<br> 7.‘스파이더 웹 사이트’는 개인정보
								보호를 위하여 이용자의 개인정보를 취급하는 자를 최소한 으로 제한하여야 하며 신용카드, 은행계좌 등을 포함한
								이용자의 개인정보의 분실, 도난, 유출, 동의 없는 제3자 제공, 변조 등으로 인한 이용자의 손해에 대하여 모든
								책임을 집니다.<br> <br> 8.‘스파이더 웹 사이트’ 또는 그로부터 개인정보를 제공받은
								제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.<br>
								9.‘스파이더 웹 사이트’ 는 개인정보의 수집 .이용 .제공에 관한 동의 란을 미리 선택한 것으로 설정해두지
								않습니다. 또한 개인정보의 수집 .이용 .제공에 관한 이용자의 동의거절 시 제한되는 서비스를 구체적으로 명시하고,
								필수 수집항목이 아닌 개인정보의 수집 .이용 .제공에 관한 이용자의 동의 거절을 이유로 회원가입 등 서비스 제공을
								제한하거나 거절하지 않습니다.<br> <br> 제18조 (“스파이더 웹 사이트 “의 의무)<br>
								<br> 1.‘스파이더 웹 사이트’는 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이
								약관이 정하는 바에 따라 지속적이고, 안정적으로 재화 및 용역을 제공하는데 최선을 다하여야 합니다.<br>
								2.‘스파이더 웹 사이트’는 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)
								보호를 위한 보안 시스템을 갖추어야 합니다.<br> 3.‘스파이더 웹 사이트’ 가 상품이나 용역에 대하여
								「표시 광고의 공정화에 관한 법률」 제3조 소정의 부당한 표시, 광고행위를 함으로써 이용자가 손해를 입은 때에는
								이를 배상할 책임을 집니다.<br> 4.‘스파이더 웹 사이트’는 이용자가 광고성 전자우편 수신에 동의하지
								않는 경우 영리 목적의 광고성 전자 우편을 발송하지 않으며, 이용자가 수신동의에 대한 내용을 변경한 경우 마지막으로
								변경한 날부터 30영업일 내에 설정 내용을 반영합니다.<br> 제19조 (회원의 ID 및 비밀번호에 대한
								의무)<br>
								<br> 1.제17조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.<br>
								2. 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.<br> 3.회원이 자신의 ID
								및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 ‘스파이더 웹 사이트’에 통보하고
								‘스파이더 웹 사이트’의 안내가 있는 경우에는 그에 따라야 합니다.<br> <br> 제20조
								(이용자의 의무)<br>
								<br> 1. 이용자는 다음 행위를 하여서는 안됩니다.<br> ① 신청 또는 변경 시 허위내용의
								등록<br> ② 사이트에 게시된 정보의 변경<br> ③ 사이트가 정한 정보 이외의 정보(컴퓨터
								프로그램 등) 등의 송신 또는 게시<br> ④ 사이트 기타 제3자의 저작권 등 지적재산권에 대한 침해<br>
								⑤ 사이트 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위<br> ⑥ 외설 또는 폭력적인
								메시지•화상•음성 기타 공서 양속에 반하는 정보를 사이트에 공개 또는 게시하는 행위<br> ⑦ 다른
								이용자의 아이디, 비밀번호를 도용하는 행위<br> ⑧ 기타 관계 법령에 위반하거나 회사의 업무를 방해하는
								등 기타 회사가 부적절하다고 판단하는 행위<br> 2. 회사는 본 조 제1항의 사항 등 사이트의 운영상
								부적절 하다고 판단한 정보가 사이트에 게시되거나 사이트와 링크된 곳에 게시된 경우, 회사는 이용자 기타 정보의
								게시를 행한 자의 승낙 및 사전 통지 없이 사이트에 게재된 당해 정보를 삭제하거나 사이트에 확장된 링크를 차단할 수
								있습니다. 단, 회사는 이러한 정보의 삭제•링크의 차단 등을 할 의무를 지지 않습니다.<br> <br>
								제21조 (연결 웹사이트와 피연결 웹사이트 간의 관계)<br>
								<br> 1. 상위 웹사이트와 하위 웹사이트가 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상
								등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 웹 사이트이라고 하고 후자를 피연결 웹사이트라고 합니다.<br>
								2. 연결 웹사이트는 피연결 웹사이트가 독자적으로 제공하는 재화 등에 의하여 이용자와 행하는 거래에 대해서 보증
								책임을 지지 않는다는 뜻을 연결 웹사이트의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에
								대한 보증 책임을 지지 않습니다.<br> 3. ‘스파이더 웹 사이트’가 작성한 저작물에 대한 저작권 혹은
								기타 지적 재산권은 ‘스파이더 웹 사이트’에 귀속합니다.<br> 4. 이용자는 ‘스파이더 웹 사이트’을
								이용함으로써 얻은 정보 중 ‘스파이더 웹 사이트’에게 지적 재산권이 귀속된 정보를 ‘스파이더 웹 사이트’의 사전
								승낙 없이 복제, 송신, 출판, 배포, 방송, 기타 방법에 의하여 영리 또는 비영리 목적으로 이용하거나 제 3자에게
								이용하게 하여서는 안됩니다.<br> 5. ‘스파이더 웹 사이트’는 약정에 따라 이용자에게 귀속된 저작권을
								사용하는 경우 당해 이용자에게 통보하여야 합니다.<br> 제22조 (분쟁 해결)<br>
								<br> 1.‘스파이더 웹 사이트’는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상
								처리하기 위하여 피해보상 처리 기구인 고객만족센터를 설치 운영합니다.<br> 2.‘스파이더 웹 사이트’는
								이용자로부터 제출되는 불만 사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만 신속한 처리가 곤란한 경우에는
								이용자에게 그 사유와 처리 일정을 즉시 통보합니다.<br> 3.‘스파이더 웹 사이트’과 이용자간에 발생한
								전자상거래 분쟁과 관련하여 이용자의 피해 구제 신청이 있는 경우에는 공정거래위원회 또는 시도지사가 의뢰하는
								분쟁조정기관의 조정에 따를 수 있습니다.<br> 제23조 (재판권 및 준거법)<br>
								<br> 1.‘스파이더 웹 사이트’와 이용자간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의
								주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방 법원의 전속 관할로 합니다. 다만 제소 당시 이용자의
								거소가 분명하지 않거나 외국 거주자의 경우에는 민사 소송법상의 관할 법원에 제기합니다.<br>
								2.‘스파이더 웹 사이트’와 이용약관에 제기된 전자상거래 소송에는 한국법을 적용합니다.<br> <br>
								부칙 제 1조 (약관의 효력)<br> 이 약관은 2018년 5월 7일부터 시행됩니다.
							</div>
							<a class="baseLink prev-link" href="/termsofuse2017">이전약관보기 :
								2017.12.15 ~ 2018.5.6</a><br>
							<a class="baseLink prev-link" href="/termsofuse2016">이전약관보기 :
								2016.10.1 ~ 2017.12.14</a>
						</div>
					</div>
				</div>
				<div class="register-group-long-last">
					<div class="register-group-smalltext">개인 정보 수집 및 이용에 동의합니다.</div>
					<div class="register-checks">
						<label for="ex_chk4"></label>
						<div class="pt5"></div>
					</div>
					<div class="register-group-scroll">
						<div class="policy-content">
							<div class="policy-box" style="padding-top: 10px;">
								글로벌브랜드그룹코리아 유한 회사(이하 “GBGK”라 한다)는 ‘정보통신망 이용 촉진 및 정보보호 등에 관한 법률'
								등 관련법규를 준수하기 위하여 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게
								처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다. ‘GBGK’는 개인정보처리방침을 개정하는 경우 웹사이트
								공지사항(또는 개별공지)을 통하여 공지할 것입니다.<br> ○ 본 방침은부터 2018년 1월 19일부터
								시행됩니다.<br>
								<br> &lt;총칙&gt;<br> 개인정보란 살아 있는 개인에 관한 정보로서 성명, 휴대폰번호,
								본인확인값(CI : Connecting Information - 서비스 연계를 위해 본인확인기관에서 부여하는
								개인식별정보, DI : Duplication Information - 중복가입 확인정보) 등을 통하여 개인을 알아볼
								수 있는 정보(해당 정보만으로 특정 개인을 알아볼 수 없더라도 다른 정보와 쉽게 결합하여 알아볼 수 있는 것을
								포함)를 말합니다.<br> ② '스파이더'는 소중한 고객의 개인정보를 안전하게 처리하기 위하여,
								『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 및 『개인정보보호법』 등 개인정보보호 관련 법령을 준수하고
								있습니다. ‘GBGK’는 개인정보처리방침을 통하여 고객께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고
								있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.<br> ③ ‘GBGK’는
								개인정보처리방침을 홈페이지 첫 화면에 공개함으로써 고객께서 언제나 용이하게 보실 수 있도록 조치하고 있습니다.<br>
								④ ‘GBGK’는 개인정보처리방침의 지속적인 개선을 위하여 개인정보처리방침을 개정하는데 필요한 절차를 정하고
								있으며, 개정 시 버전관리를 통하여 고객께서 개정사항을 쉽게 확인할 수 있도록 하고 있습니다.<br>
								<br> 1. 개인정보의 처리 목적<br> ‘GBGK’는 개인정보를 다음의 목적을 위해
								처리합니다. 처리한 개인정보는 다음의 목적이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할
								예정입니다.<br> 가. 홈페이지 회원가입 및 관리<br> 회원 가입의사 확인, 회원제 서비스
								제공에 따른 본인 식별·인증, 회원자격 유지·관리, 서비스 부정이용 방지, 만14세 미만 아동 개인정보 수집 시
								법정대리인 동의 여부 확인 등을 목적으로 개인정보를 처리합니다.<br> 나. 재화 또는 서비스 제공<br>
								물품배송, 서비스 제공, 맞춤 서비스 제공, 본인인증, 요금결제·정산 등을 목적으로 개인정보를 처리합니다.<br>
								다. 마케팅 및 광고에의 활용<br> 이벤트 및 광고성 정보 제공 및 참여기회 제공 , 접속빈도 파악 또는
								회원의 서비스 이용에 대한 통계 등을 목적으로 개인정보를 처리합니다.<br>
								<br> 2. 개인정보 파일 현황<br> 1. 개인정보 파일명 : 회원 가입 및 구매 정보<br>
								- 개인정보 항목 : <br> 이메일, 휴대전화번호, 자택주소, 비밀번호, 로그인ID, 성별, 생년월일,
								이름, 취미, 신용카드정보, 은행계좌정보, 서비스 이용 기록, 접속 로그<br> - 수집방법 : 홈페이지,
								경품행사, 배송요청<br> - 보유근거 : 개인정보보호법 제15조 (정보주체의 동의)<br> -
								보유기간 : 5년 <br> - 관련법령 : <br> 신용정보의 수집/처리 및 이용 등에 관한 기록
								: 3년(신용정보의 이용 및 보호에 관한 법률)<br> 소비자의 불만 또는 분쟁처리에 관한 기록 :
								3년(전자상거래등에서의 소비자보호에 관한 법률)<br> 대금결제 및 재화 등의 공급에 관한 기록 :
								5년(전자상거래등에서의 소비자보호에 관한 법률)<br> 계약 또는 청약철회 등에 관한 기록 :
								5년(전자상거래등에서의 소비자보호에 관한 법률)<br> 표시/광고에 관한 기록 : 6개월(전자상거래등에서의
								소비자보호에 관한 법률)<br> 본인확인에 관한 기록 : 6개월(정보통신망 이용촉진 및 정보보호 등에 관한
								법률)<br>
								<br> 3. 개인정보의 처리 및 보유 기간<br> 원칙적으로, 개인정보 수집 및 이용목적이
								달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우
								‘GBGK’ 는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.<br> ①
								‘GBGK’는 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집시에 동의 받은 개인정보
								보유,이용기간 내에서 개인정보를 처리,보유합니다. <br> ② 각각의 개인정보 처리 및 보유 기간은 다음과
								같습니다.<br> 개인정보는 수집.이용에 관한 동의일로부터까지 위 이용목적을 위하여 보유.이용됩니다.<br>
								-보유근거 : 개인정보보호법제15조 (정보주체의 동의)<br> - 관련법령 : <br> 신용정보의
								수집/처리 및 이용 등에 관한 기록 : 3년(신용정보의 이용 및 보호에 관한 법률)<br> 소비자의 불만
								또는 분쟁처리에 관한 기록 : 3년(전자상거래등에서의 소비자보호에 관한 법률)<br> 대금결제 및 재화
								등의 공급에 관한 기록 : 5년(전자상거래등에서의 소비자보호에 관한 법률)<br> 계약 또는 청약철회 등에
								관한 기록 : 5년(전자상거래등에서의 소비자보호에 관한 법률)<br> 표시/광고에 관한 기록 :
								6개월(전자상거래등에서의 소비자보호에 관한 법률)<br> 본인확인에 관한 기록 : 6개월(정보통신망
								이용촉진 및 정보보호 등에 관한 법률)<br>
								<br> 4. 개인정보의 제3자 제공에 관한 사항<br> 'GBGK' 정보주체의 동의, 법률의
								특별한 규정 등 개인정보 보호법 제17조 및 제18조에 해당하는 경우에만 개인정보를 제3자에게 제공합니다.
								원칙적으로 수집·보유하고 있는 개인정보는 이용자의 동의 없이는 제3자에게 제공하지 않으며, 다음의 경우에는
								개인정보를 제3자에게 제공 할 수 있습니다.<br> 1. 정보주체로부터 별도의 동의를 받은 경우<br>
								2. 법률에 특별한 규정이 있거나 법령상 의무를 준수하기 위하여 불가피한 경우<br> 3. 정보주체 또는
								그 법정대리인이 의사표시를 할 수 없는 상태에 있거나 주소불명 등으로 사전 동의를 받을 수 없는 경우로서 명백히
								정보 주체 또는 제3자의 급박한 생명, 신체, 재산의 이익을 위하여 필요하다고 인정되는 경우<br> 4.
								개인정보를 목적 외의 용도로 이용하거나 이를 제3자에게 제공하지 아니하면 다른 법률에서 정하는 소관 업무를 수행할
								수 없는 경우로서 보호위원회의 심의·의결을 거친 경우<br> 5. 조약, 그 밖의 국제협정의 이행을 위하여
								외국정부 또는 국제기구에 제공하기 위하여 필요한 경우<br> 6. 범죄의 수사와 공소의 제기 및 유지를
								위하여 필요한 경우<br> 7. 법원의 재판업무 수행을 위하여 필요한 경우<br> 8. 형(刑)
								및 감호, 보호처분의 집행을 위하여 필요한 경우<br> 개인정보를 제3자에게 제공하는 경우 다음의 항목을
								정보주체에게 알린 후 동의를 받겠습니다.<br> 제공받는 자의 성명(법인 또는 단체인 경우에는 그 명칭)과
								연락처<br> 제공받는 자의 개인정보 이용 목적, 제공하는 개인정보의 항목<br> 개인정보를
								제공받는 자의 개인정보 보유 및 이용 기간<br> 동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른
								불이익이 있는 경우에는 그 불이익의 내용<br> 5. 개인정보처리 위탁<br> ‘GBGK’는
								원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고있습니다.<br>
							</div>
							<table>
								<tbody>
									<tr>
										<td class="td-1">위탁 사무명</td>
										<td class="td-1">위탁받는 자(수탁자)</td>
										<td class="td-1">위탁하는 업무의 내용</td>
									</tr>
									<tr>
										<td class="td-2">결제 대행 서비스</td>
										<td class="td-2">KG이니시스</td>
										<td class="td-2">구매 및 요금 결제</td>
									</tr>
									<tr>
										<td class="td-2">휴대폰 본인/실명인증 서비스</td>
										<td class="td-2">
											<!-- react-text: 1298 -->코리아크레딧뷰로(주)<!-- /react-text -->
											<br>
										<!-- react-text: 1300 -->한국정보통신 진흥협회<!-- /react-text -->
										</td>
										<td class="td-2">본인인증(금융거래, 금융서비스)</td>
									</tr>
									<tr>
										<td class="td-2">POS 시스템 개발사</td>
										<td class="td-2">(주)소프트원</td>
										<td class="td-2">전산시스템의 구축 및 유지보수</td>
									</tr>
									<tr>
										<td class="td-2">서버관리</td>
										<td class="td-2">메가존, 카페24</td>
										<td class="td-2">서버관리 및 데이터베이스 백업</td>
									</tr>
									<tr>
										<td class="td-2">택배사</td>
										<td class="td-2">롯데택배, 일양택배</td>
										<td class="td-2">물품배송 또는 청구서 등 발송</td>
									</tr>
									<tr>
										<td class="td-2">주문 내역 발송</td>
										<td class="td-2">(주)비즈톡, 아이코드</td>
										<td class="td-2">주문내역 카카오톡 또는 문자 발송 업무</td>
									</tr>
									<tr>
										<td class="td-2">수선/AS상담</td>
										<td class="td-2">
											<!-- react-text: 1321 -->CS1꼼빠네로, 한국씨니어연합,<!-- /react-text -->
											<br>
										<!-- react-text: 1323 -->한국여성소비자연합<!-- /react-text -->
											<br>
										<!-- react-text: 1325 -->한국소비생활연구원, J&amp;B<!-- /react-text -->
										</td>
										<td class="td-2">
											<!-- react-text: 1327 -->고객 콜센터 대행, 고객상담업무<!-- /react-text -->
											<br>
										<!-- react-text: 1329 -->AS 처리, 외부심의<!-- /react-text -->
										</td>
									</tr>
								</tbody>
							</table>
							<div class="policy-box">
								‘GBGK’는 위탁계약 체결시 개인정보 보호법 제25조에 따라 위탁업무 수행목적 외 개인정보 처리금지,
								기술적․관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리․감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에
								명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다<br> 위탁업무의 내용이나 수탁자가
								변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.<br>
								<br> 6. 정보주체의 권리,의무 및 그 행사방법<br> 정보주체는 다음과 같은 권리를 행사 할
								수 있으며, 만14세 미만 아동의 법정대리인은 그 아동의 개인정보에 대한 열람, 정정·삭제, 처리정지를 요구할 수
								있습니다.<br> 1. 개인정보 열람요구<br> 2. 오류 등이 있을 경우 정정 요구<br>
								3. 삭제요구<br> 4. 처리정지 요구<br> 'GBGK'에 대해 개인정보 보호법 시행규칙 별지
								제8호 서식에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 ‘GBGK’는 이에 대해 지체
								없이 조치하겠습니다.<br> 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는
								‘GBGK’는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다. <br>
								또한, 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우
								개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.<br> 7. 처리하는
								개인정보의 항목<br> ‘GBGK’는 다음의 개인정보 항목을 처리하고 있습니다.<br> -
								필수항목 : 이메일, 휴대전화번호, 비밀번호, 로그인ID<br> - 선택항목 : 성별, 생년월일, 매장
								고객 번호<br>
								<br> 8. 개인정보의 파기<br> ‘GBGK’는 원칙적으로 개인정보 처리목적이 달성된 경우에는
								지체없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.<br> - 파기절차<br>
								이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련
								법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가
								아니고서는 다른 목적으로 이용되지 않습니다.<br> -파기기한<br> 이용자의 개인정보는
								개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당
								서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는
								날로부터 5일 이내에 그 개인정보를 파기합니다. <br> -파기방법<br> 전자적 파일 형태의
								정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다.<br> 종이에 출력된 개인정보는 분쇄기로
								분쇄하거나 소각을 통하여 파기합니다.<br>
								<br> 9. 개인정보의 안전성 확보 조치<br> ‘GBGK’는 개인정보보호법 제29조에 따라
								다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.<br> 1. 정기적인
								자체 감사 실시<br> 개인정보 취급 관련 안정성 확보를 위해 정기적(분기 1회)으로 자체 감사를 실시하고
								있습니다. <br> 2. 개인정보 취급 직원의 최소화 및 교육<br> 개인정보를 취급하는 직원을
								지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.<br> 3.
								내부관리계획의 수립 및 시행<br> 정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다.<br>
								4. 해킹 등에 대비한 기술적 대책<br> ‘GBGK’는 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출
								및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을
								설치하고 기술적/물리적으로 감시 및 차단하고 있습니다. <br> 5. 개인정보의 암호화<br>
								이용자의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고 있어, 본인만이 알 수 있으며 중요한 데이터는 파일 및
								전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다.<br>
								6. 접속기록의 보관 및 위변조 방지<br> 개인정보처리시스템에 접속한 기록을 최소 6개월 이상 보관,
								관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능 사용하고 있습니다.<br> 7.
								개인정보에 대한 접근 제한<br> 개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,변경,말소를
								통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단
								접근을 통제하고 있습니다.<br> 8. 문서보안을 위한 잠금장치 사용<br> 개인정보가 포함된
								서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다.<br> 9. 비인가자에 대한
								출입 통제<br> 개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를
								수립, 운영하고 있습니다. <br>
								<br> 10. 개인정보 보호책임자<br> ‘GBGK’ 는 개인정보 처리에 관한 업무를 총괄해서
								책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를
								지정하고 있습니다. <br> ▶ 개인정보 보호책임자<br> 성명 : 이상문<br> 직책
								: 개인정보관리자<br> 직급 : 차장<br> 연락처: 02-3441-5894,
								02-3441-5801, sammylee@globalbrandsgroup.com, 02-3442-6991<br>
								※ 개인정보 보호 담당부서로 연결됩니다.<br>
								<br> ▶ 개인정보 보호 담당부서 <br> 부서명 :마케팅<br> 담당자 :이상문<br>
								연락처: 02-3441-5894, sammylee@globalbrandsgroup.com, 02-3442-6991<br>
								정보주체께서는 ‘스파이더’의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리,
								피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. ‘GBGK’는 정보주체의 문의에
								대해 지체 없이 답변 및 처리해드릴 것입니다.<br>
								<br> 11. 개인정보 처리방침 변경<br> 이 개인정보처리방침은 시행일로부터 적용되며, 법령
								및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항의 시행 7일 전부터 공지사항을 통하여
								고지할 것입니다.<br>
							</div>
							<div class="previous-policy">
								<!-- react-text: 1332 -->
								이전개인정보처리방침 보기 :
								<!-- /react-text -->
								<br>
								<a class="baseLink prev-link" href="/privacypolicy2017"> -
									2017.12.15 ~ 2018.01.18</a><br>
								<a class="baseLink prev-link" href="/privacypolicy2016"> -
									2016.10.01 ~ 2017.12.14</a>
							</div>
						</div>
					</div>
				</div>
				<div class="pt20"></div>
				<button type="submit" class="login-register-button">회원가입</button>
				<input type="hidden" name="idCheckResult" id="idCheckResult" value="0">
				<input type="hidden" name="phoneCheckResult" id="phoneCheckResult" value="0">
				<input type="hidden" name="checkboxCheckResult" id="checkboxCheckResult" value="0">
			</form>
		</div>
	</div>
	<script type="text/javascript">
	
$("#id").focus();

$("#join").submit(function() {
	$(".title-id-desc").css("display","none");
	
	var submitResult=true;
	var idReg=/^[a-z]+[a-z0-9]{4,10}$/;
	if($("#id").val()=="") {
		submitResult=false;
	} else if(!idReg.test($("#id").val())) {
		submitResult=false;
	}
	if($("#idCheckResult").val()=="0") {
			$("#overlapcheck1").css("display","block");
			submitResult=false;
    }
	
	
	var passwdReg= /^(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9])(?=.*[0-9]).{8,16}$/;
	if($("#mPw").val()=="") {
		submitResult=false;
	} else if(!passwdReg.test($("#mPw").val())) {
		$("#passwdMatchMsg").css("display","block");
		submitResult=false;
	} 
	
	if($("#mRepw").val()=="") {
		submitResult=false;
	} else if($("#mPw").val()!=$("#mRepw").val()) {
		$("#repasswdMatchMsg").css("display","block");
		submitResult=false;
	}
	
	var emailReg=/^([a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+(\.[-a-zA-Z0-9]+)+)*$/g;
	if($("#email").val()=="") {
		submitResult=false;
	} else if(!emailReg.test($("#email").val())) {
		$("#emailRegMsg").css("display","block");
		submitResult=false;
	}

	var mPhoneReg= /\d{3}-\d{3,4}-\d{4}$/;
    if($("#mPhone").val()=="") {
		submitResult=false;
	} else if(!mPhoneReg.test($("#mPhone").val())) {
		submitResult=false;
	} else if($("#phoneCheckResult").val()=="0") {
		$("#overlapcheck2").css("display","block");	
		submitResult=false;
	}

    if($("#checkboxCheckResult").val()=="0") {
    	$("#overlapcheck3").css("display","block");
    	submitResult=false;   	
    }
	
	return submitResult;
});

$("#idCheck").click(function() {
	var idReg=/^[a-z]+[a-z0-9]{4,10}$/;
	if($("#id").val()=="") {
		alert("아이디 입력후 중복체크 버튼을 눌러주세요 .");
		return;
	} else if(!idReg.test($("#id").val())) {
		alert("영문자로 시작하는 5자이상의 영문자와 숫자가 조합된 아이디로 만들어주세요 .");
		return;
	}
	window.open("<%=request.getContextPath()%>/home/login/id_check.jsp?mId="+$("#id").val(),"아이디중복검사","width=400,height=100,left=450,top=250");
});

$("#id").keyup(function() {
	if($("#idCheckResult").val()=="1") {
		$("#idCheckResult").val("0");
	}
});
$("#phonecheck").click(function() {
	var phoneReg= /^\d{3}-\d{3,4}-\d{4}$/;
	if($("#mPhone").val()=="") {
		alert("전화번호 입력 후 중복체크 버튼을 눌러주세요 .");
		return;
	} else if(!phoneReg.test($("#mPhone").val())) {
		alert("000-0000-0000 형식으로 입력해 주세요 .");
		return;
	}
	
	window.open("<%=request.getContextPath()%>/home/login/phone_check.jsp?mPhone="+$("#mPhone").val(),"전화번호중복검사","width=400,height=150,left=450,top=250");
});

$("#mPhone").keyup(function() {
	if($("#phoneCheckResult").val()=="1") {
		$("#phoneCheckResult").val("0");
	}
});
function clickaction() {
	var check = $('[name=ex_chk1]').prop('checked');
	if(check==true){
		$("#checkboxCheckResult").val("1");
		
	}else{
		$("#checkboxCheckResult").val("0");
		
	}
	
	
}









</script>

</body>
</html>