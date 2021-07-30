<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
	<title>손해보험협회</title>
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/lcms/common.css'/>" />
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/lcms/main.css'/>" />
  </head>
      <div id="index_wrap">
        <div class="inner">
          <div class="index_txt">
            <p><span class="big_txt">안전한 사회, 행복한 미래</span> 손해보험협회 대출모집인등록시스템</p>
          </div>
          <section class="content_box">
            <div class="function">
              <p class="function_title">등록/변경/말소/폐지/해지</p>
              <span class="function_txt">
				  대출모집인(개인, 법인, 법인소속개인)의<br>
				 신규 등록 / 변경 / 말소
                / 해지를 <br>신청할 수 있습니다.</span
              >
            </div>
            <div class="function">
              <p class="function_title">위반이력(사고자)등록</p>
              <span class="function_txt">대출모집인(개인,법인,법인소속개인)의<br> 신규등록/변경/말소/해지를 <br>신청할 수 있습니다. </span>
            </div>
            <div class="function">
              <p class="function_title">수수료 청구 / 등록증 발급</p>
              <span class="function_txt">등록을 위한 수수료 청구 및 영수증 발급,<br> 대출모집인 등록증을 발급 받을 수 있습니다. </span>
            </div>
            <div class="function">
              <p class="function_title">대출모집인 조회 및 통계</p>
              <span class="function_txt">대출모집인 상세정보 조회 및<br> 대출모집인 통계를 확인 할 수 있습니다. </span>
            </div>
            <div class="link form_down">
              <a href="" class="form_down">양식다운로드</a>
            </div>
            <div class="link">
				<a href="" class="exam">보험설계사 자격시험</a>
            </div>
          </section>

          <section class="login_box">
			  
			<div class="tabs">
				<input type="radio" id="member_1" name="member" checked ><label for="member_1">회원사 관리자</label>
				<input type="radio" id="member_2" name="member" ><label for="member_2">협회 관리자</label>
			</div>


            <!--tab_content-->
            

            <input type="text" class="login_input" placeholder="아이디를 입력하세요." id="id"/><label for="id">아이디</label>
            <input type="password" class="login_input"  placeholder="비밀번호를 입력하세요." id="pw"/><label for="pw">비밀번호</label>
			
			<div class="login_add_check">
				<input type="checkbox" id="id_save" /><label for="id_save">아이디저장</label>
				<a href="/join.do" title="회원가입으로 이동">회원가입</a>
			</div>

            <button type="button" class="login_btn">로그인</button>
            <button type="button" class="phone_certification_btn">카카오인증</button>
            <div class="login_memo">
            			  등록확인된 관리자만 이용가능합니다. 시스템 문의는 손해보험협회
             			  담당자에게 문의바랍니다.
            </div>
          </section>
        </div>
      </div>
      <!-- //main_wrap-->
</html>