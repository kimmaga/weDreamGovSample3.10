<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/lcms/common.css'/>" />
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/lcms/member.css'/>" />

    <div id="wrap_join">
    <div id="form_wrap">
        <form id="member_join">
            <h2>회원가입</h2>
            <p class="join_text">손해보험협회 대출모집인 관리페이지에 오신것을 환영합니다</br>
            본 사이트는 각 회원사 대출모집인 관리자만 가입하실 수 있습니다</p>
            <div class="item_row">
                <label for="id">아이디</label>
                <input type="text" id="id" name="id" class="" title="아이디 입력" maxlength="20">
            </div>
            <div class="item_row">
                <label for="psw">비밀번호</label>
                <input type="password" id="psw" name="psw" class="" title="비밀번호 입력" placeholder="9자리 이상 영문 대소문자, 숫자, 특수문자 중 3가지 이상 조합" maxlength="32">
            </div>
            <div class="item_row">
                <label for="psw_confirm">비밀번호 확인</label>
                <input type="password" id="psw_confirm" name="psw_confirm" class="" title="비밀번호 재입력" placeholder="비밀번호 재입력" maxlength="32">
            </div>
            <div class="item_row">
                <label for="name">성명</label>
                <input type="text" id="name" name="name" class="" title="성명 입력" maxlength="32">
            </div>
            <div class="item_row">
            <label for="name">생년월일</label>
                <input type="text" id="yy" placeholder="년(4자)" aria-label="년(4자)" class="birth" title="연도 입력" maxlength="4">
                <select id="mm" aria-label="월" title="월 선택" class="birth">
                    <option value="">월</option>
                                       <option value="01">
                                        1
                                    </option>
                                       <option value="02">
                                        2
                                    </option>
                                       <option value="03">
                                        3
                                    </option>
                                       <option value="04">
                                        4
                                    </option>
                                       <option value="05">
                                        5
                                    </option>
                                       <option value="06">
                                        6
                                    </option>
                                       <option value="07">
                                        7
                                    </option>
                                       <option value="08">
                                        8
                                    </option>
                                       <option value="09">
                                        9
                                    </option>
                                       <option value="10">
                                        10
                                    </option>
                                       <option value="11">
                                        11
                                    </option>
                                       <option value="12">
                                        12
                                    </option>
                </select>
                <input type="text" id="dd" placeholder="일" aria-label="일" class="birth" title="일 입력" maxlength="2">
            </div>
            <div class="item_row">
                <label for="company">성명</label>
                <select id="company" aria-label="소속" title="소속 선택" class="size100">
                    <option value="" >보험사 선택</option>
                        <option value="01">메리츠화재</option>
                        <option value="02">한화손해보험</option>
                        <option value="03">롯데손해보험</option>
                        <option value="04">삼성화재해상</option>
                </select>
            </div>
            <div class="item_row">
                <label for="division">부서</label>
                <input type="text" id="division" name="division" class="" title="부서 입력" maxlength="32">
            </div>
            <div class="item_row">
                <label for="position">직급</label>
                <input type="text" id="position" name="position" class="" title="직급 입력" maxlength="32">
            </div>
            <div class="item_row">
            <label for="nation_num">전화번호</label>
                <input type="text" id="tel" name="tel" class="" title="전화번호 입력" placeholder="-제외하고 입력해주세요" maxlength="11">
                <button id="kakao_btn"><a href="#">카카오 인증</a></button>
            </div>
            <div class="item_row">
                <label for="email">이메일</label>
                <input type="text" id="email" name="email" class="" title="메일주소를 입력해주세요">
            </div>
            <div id="item_agree" class="item_row">
                <input type="checkbox" id="agree_join"><label for="agree_join">약관 및 개인정보 수집 동의</label>
                <textarea readonly>
					1. 수집 및 이용하는 개인정보 항목 및 수집방법
					회사는 개인정보를 수집함에 있어 이용자의 유형별로 서비스 제공에 필요한 최소한의 개인정보를 “필수항목”으로, 그 외 개인정보는 “선택항목”으로 구분하여 이에 대해 개별적으로 동의할 수 있는 절차를 마련합니다.
					
					(1) 수집 및 이용하는 개인정보 항목
					· 온라인 회원 회원가입 시
					- 필수사항: 성명, 아이디, 이메일주소, 비밀번호, 본인확인기관에서 제공하는 본인인증 결과값(I-PIN정보, CI), 휴대전화번호, 통신사
					- 선택사항: 생년월일, 성별, 마케팅 정보 수신 동의 여부(SMS, 이메일)
					
					· 네이버 간편 로그인 서비스 이용 시
					- 필수사항: 네이버 이용자 식별 ID, 이메일
					- 선택사항: 이름, 별명, 프로필사진, 성별, 생일, 연령대
					
					· 카카오(싱크) 간편 로그인 서비스 이용 시
					- 필수사항: 카카오 이용자 식별 ID, CI, 이름, 이메일, 휴대전화번호
					
					· 서비스 이용과정 또는 처리 과정에서 생성정보 수집 툴을 통해 자동으로 생성, 수집되어 수집, 저장, 조합, 분석 시
					- 필수사항: 이용자의 인터넷 도메인명 및 사이트를 방문할 때 거치 웹사이트의 주소, 서비스 이용 내역, 요금청구 및 결제기록, 이용정지 기록, 이용 해지 기록 등 이용내역 정보, 접속로그, 쿠키, 접속IP정보, 단말기 정보 브라우저 및 OS 정보
					- 선택사항: 서비스 개선, 관심분야 확인 및 맞춤서비스 제공
					
					(2) 개인정보 수집 방법
					1) 회사는 사이트 회원가입 및 서비스 이용 과정 또는 매장에서 이용자가 개인정보 수집에 동의를 하고 직접 정보를 입력하는 경우, 해당 개인정보를 수집합니다.
					2) 고객센터를 통한 상담 과정에서 웹페이지, 메일, 팩스, 전화 등을 통해 이용자의 개인정보가 수집될 수 있습니다.
					3) 온/오프라인 이벤트나 경품 행사 등에서 전자적 방식 또는 서면으로 개인정보가 수집될 수 있습니다.
					4) 회사와 제휴한 업체나 단체로부터 개인정보를 제공받을 수 있으며, 이러한 경우에는 개인정보 보호법에 따라 제휴사에서 이용자에게 개인정보 제공 동의 등을 받을 후 회사에 제공합니다.
					5) 접속로그, 쿠키, IP정보, 기기정보 등의 생성정보는 PC웹, 모바일웹 이용과정에서 로그 분석 수집툴을 통해 자동으로 생성되어 수집될 수 있습니다.
                </textarea>
            </div>
            <div id="join_btn_wrap" class="size100">
                <button class="btn_blue m_r10">가입하기</button>
                <button class="btn_gray m_r10" style="margin-right: 0;">취소</button>
            </div>
        </form>
        
    
    </div>
</div>
