<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/lcms/common.css'/>" />
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/lcms/member.css'/>" />
	<script src="<c:url value='/js/lcms/common.js'/>"></script>
		<section id="snb">
			<nav id="mainmenu">
				<ul id="mainmenu_list">
					<li>
						<a href="#">대시보드</a>
						<ul class="submenu_list"></ul>
					</li>
					<li>
						<a href="#">대출모집인 현황</a>
						<ul class="submenu_list">
							<a href="#" class="dep2">개인 대출모집인</a>
							<li><a href="/invi_status.do">등록 신청 현황</a></li>
							<li><a href="/invi_apply.do"">등록 신청하기</a></li>
							<li><a href="#">말소 신청하기</a></li>
							<a href="#" class="dep2">대출모집 법인</a>
							<li><a href="#">등록 신청현황</a></li>
							<li><a href="#">등록 신청하기</a></li>
							<li><a href="#">계약체결 등록하기</a></li>
							<li><a href="#">폐지 신청하기</a></li>
							<li><a href="#">계약해지 신청하기</a></li>
							<a href="#" class="dep2">법인 소속 개인 대출모집인</a>
							<li><a href="#">등록 신청 현황</a></li>
							<li><a href="#">등록 신청하기</a></li>
							<li><a href="#">말소 신청하기</a></li>
						</ul>
					</li>
					<li>
						<a href="#">심사 관리</a>
						<ul class="submenu_list">
							<a href="#" class="dep2">개인 대출모집인</a>
							<li><a href="#">등록 심사 현황</a></li>
							<li><a href="#">말소 심사 현황</a></li>
							<li><a href="#">변경 심사 현황</a></li>
							<a href="#" class="dep2">대출모집 법인</a>
							<li><a href="#">등록 심사 현황</a></li>
							<li><a href="#">폐지 심사 현황</a></li>
							<li><a href="#">변경 심사 현황</a></li>
							<li><a href="#">계약체결 심사 현황</a></li>
							<li><a href="#">계약해지 심사 현황</a></li>
							<a href="#" class="dep2">법인 소속 개인 대출모집인</a>
							<li><a href="#">등록 심사 현황</a></li>
							<li><a href="#">말소 심사 현황</a></li>
							<li><a href="#">변경 심사 현황</a></li>
						</ul>
					</li>
					<li>
						<a href="#">사고자/실태조사</a>
						<ul class="submenu_list">
							<a href="#" class="dep2">사고자</a>
							<li><a href="#">위반자 현황</a></li>
							<li><a href="#">위반사항 등록하기</a></li>
							<a href="#" class="dep2">사고자 심사</a>
							<li><a href="#">위반이력 등재 심사 현황</a></li>
							<a href="#" class="dep2">실태조사</a>
							<li><a href="#">실태조사 현황</a></li>
							<li><a href="#">실태조사 결과 등록</a></li>
						</ul>
					</li>
					<li>
						<a href="#">수수료/통계</a>
						<ul class="submenu_list">
							<a href="#" class="dep2">수수료</a>
							<li><a href="#">수수료 납부 현황</a></li>
							<a href="#" class="dep2">영수증</a>
							<li><a href="#">영수증 발급 내역</a></li>
							<a href="#" class="dep2">통계</a>
							<li><a href="#">대출모집인 통계 조회</a></li>
							<li><a href="#">기타 통계</a></li>
						</ul>
					</li>
				</ul>
			</nav>
			<a id="fold_icon" href="#"><img alt="왼쪽메뉴영역 닫기 펼치기 버튼" src="<c:url value='/images/lcms/close_icon.png'/>" /></a>
		</section>