	<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
	<title>손해보험협회</title>
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/lcms/common.css'/>">
		<section id="contents">
			<div class="contents_wrap">
			<h2>대출모집법인 등록 신청 /변경</h2>

			<div class="cor_tab">
				<ul>
					<li class="active">
						<a href="cor_enroll_1.html" >1. 신청인</a>
					</li>
					<li>
						<a href="cor_enroll_2.html" >2. 대표자 및 임원</a>
					</li>
					<li>
						<a href="cor_enroll_3.html" >3. 금융상품/업무수행</a>
					</li>
					<li>
						<a href="cor_enroll_4.html" >4. 인적/물적설비</a>
					</li>
					<li>
						<a href="cor_enroll_5.html" >5. 신용/기재사항</a>
					</li>
				</ul>
			</div> <!-- 법인신청 탭 끝-->
			
			<div class="page_memo">
				- 대출모집법인 신청 정보를 입력 도중 <span class="color_5">상단 탭을 눌러 이동시 자동 임시저장</span> 됩니다. <br>
				- 최종 저장은 마지막 단계 5. 신용/기재사항 탭에서 가능합니다. <br>
				- 입력항목 중<span class="required_color">*</span> 표시는 필수 입력항목입니다. 


			</div>
			<div class="enroll_tbl">
			<table>
				<caption> 대출모집법인 등록 작성인 정보 테이블입니다.  </caption>
				<colgroup>
					<col style="width:15%">
					<col style="width:35%">
					<col style="width:15%">
					<col style="width:35%">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row"><label for="writer_name">작성자명</label></th>
						<td><input type="text" id="writer_name" class="input_100p" disabled value="홍길동"></td>
						<th scope="row"><label for="writer_phone_num">작성자 전화번호</label></th>
						<td><input type="text" id="writer_phone_num" class="input_100p" disabled  value="010-1234-1234"></td>
					</tr>
					<tr>
						<th scope="row"><label for="writer_position">작성자 직위</label></th>
						<td><input type="text" id="writer_position" class="input_100p" disabled  value="과장"></td>
						<th scope="row"><label for="writer_email">작성자 이메일</label></th>
						<td><input type="text" id="writer_email" class="input_100p" disabled  value="info@emai.com"></td>
					</tr>
				
				</tbody>
			</table>
			</div>

			<h3>1. 신청인 정보
				<div class="help_wrap"><input type="checkbox" id="help1" class="help"><label for="help1" class="btn_tip">!</label>
					<div class="tip_con">
						<p class="title">신청인 정보</p>
						<p>1. </p>
						<p></p>
						2. </p>
						<p>
						2-1. </p>
						<label for="help1">X</label></div></div>

			</h3>
			<div class="enroll_tbl">
				<form>
				<table>
					<caption> 개인대출모집인 등록 중 신청인 정보 등록 테이블입니다.  </caption>
					<colgroup>
						<col style="width:15%">
						<col style="width:35%">
						<col style="width:15%">
						<col style="width:35%">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row"><label for="cor_applicant_name">상호<span class="required_color">*</span></label></th>
							<td><input type="text" id="cor_applicant_name" class="input_100p" required></td>
							<th scope="row"><label for="cor_applicant_ceo">대표이사<span class="required_color">*</span></label></th>
							<td><input type="text" id="cor_applicant_ceo" class="input_100p" required></td>
						</tr>
						<tr>
							<th scope="row"><label for="cor_applicant_num">법인등록번호<span class="required_color">*</span></label></th>
							<td><input type="text" id="cor_applicant_num" maxlength="6" class="input_id5" required><em>-</em><input type="text" aria-label="법인등록번호 뒤7자리"  maxlength="7" class="input_id7" required></td>
							<th scope="row"><label for="cor_applicant_date">설립년월일<span class="required_color">*</span></label></th>
							<td><input type="text" id="cor_applicant_date"  class="input_100p calendar " placeholder="YYYYMMDD" ></td>
						</tr>
						<tr>
							<th scope="row"><label for="cor_applicant_phone_num">연락처<span class="required_color">*</span></label></th>
							<td><input type="text" id="cor_applicant_phone_num" class="input_3" required><em>-</em><input type="text" id="" aria-label="전화번호 중간4자리" class="input_3" required><em>-</em><input type="text" id="" aria-label="전화번호 끝4자리" class="input_3" required> </td>
							<th scope="row"><label for="cor_applicant_addr">본점 주소<span class="required_color">*</span></label></th>
							<td><input type="text" id="cor_applicant_addr" class="input_addr" required><button type="button" class="btn_tbl_black" style="width: 74px;">주소검색</button><br>
								<input type="text" class="input_100p m_t2" required>
								<input type="text" class="input_100p m_t2" required placeholder="상세주소 입력">
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="cor_applicant_stockholder">최대주주명(지분율)</label></th>
							<td colspan="3"><input type="text" id="cor_applicant_stockholder" class="input_100p"></td>
						</tr>
						<tr>
							<th scope="row"><label for="cor_applicant_major_stockholder">주요주주명(지분율)</label></th>
							<td colspan="3"><input type="text" id="cor_applicant_major_stockholder" class="input_100p"></td>
						</tr>
						<tr>
							<th scope="row"><label for="cor_applicant_capital">자본금(백만원)<span class="required_color">*</span></label></th>
							<td><input type="text" id="cor_applicant_capital" class="input_100p" required onclick="openLayer('layerPop_modify_data')" value="1,000">
							   <!-- 변경 후 input class = "modify_color" 추가 --> </td>
							<th scope="row"><label for="cor_applicant_stock">의결권 있는 발행주식 총수<span class="required_color">*</span></label></th>
							<td><input type="text" id="cor_applicant_stock" class="input_100p" required></td>
						</tr>
						<tr>
							<th scope="row"><label for="cor_applicant_another_busi">영위하는 다른 업종</label></th>
							<td colspan="3"><input type="text" id="cor_applicant_another_busi" class="input_100p"></td>
						</tr>
						<tr>
							<th scope="row">첨부서류<span class="required_color">*</span></th>
							<td colspan="3">
								<label for="cor_applicant_doc1" class="tbl_doc_txt m_t10" >정관 또는 이에 준하는 서류</label>
									<input type="text" id="cor_applicant_doc1" class="file_input" readonly >
									<div class="file_input_div">
										<input type="button" value="선택" class="file_btn" />
										<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_applicant_doc1');"/>
									</div>
								<label for="cor_applicant_doc2" class="tbl_doc_txt m_t10" >법인 등기부등본</label>
									<input type="text" id="cor_applicant_doc2" class="file_input" readonly >
									<div class="file_input_div">
										<input type="button" value="선택" class="file_btn" />
										<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_applicant_doc2');"/>
									</div>
								<label for="cor_applicant_doc3" class="tbl_doc_txt m_t10" >의사록 등 설립 또는 등록신청의 의사결정 증명서류</label>
									<input type="text" id="cor_applicant_doc3" class="file_input" readonly >
									<div class="file_input_div">
										<input type="button" value="선택" class="file_btn" />
										<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_applicant_doc3');"/>
									</div>
								<label for="cor_applicant_doc4" class="tbl_doc_txt m_t10" >사업자등록증 사본</label>
									<input type="text" id="cor_applicant_doc4" class="file_input" readonly >
									<div class="file_input_div">
										<input type="button" value="선택" class="file_btn" />
										<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_applicant_doc4');"/>
									</div>
								<label for="cor_applicant_doc5" class="tbl_doc_txt m_t10" >기업신용정보 조회서</label>
									<input type="text" id="cor_applicant_doc5" class="file_input" readonly >
									<div class="file_input_div">
										<input type="button" value="선택" class="file_btn" />
										<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_applicant_doc5');"/>
									</div>
								<label for="cor_applicant_doc6" class="tbl_doc_txt m_t10" >사업장 부동산등기부등본 또는 임대차계약서</label>
									<input type="text" id="cor_applicant_doc6" class="file_input" readonly >
									<div class="file_input_div">
										<input type="button" value="선택" class="file_btn" />
										<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_applicant_doc6');"/>
									</div>
								<label for="cor_applicant_doc7" class="tbl_doc_txt m_t10" >주주명부</label>
									<input type="text" id="cor_applicant_doc7" class="file_input" readonly >
									<div class="file_input_div">
										<input type="button" value="선택" class="file_btn" />
										<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_applicant_doc7');"/>
									</div>
								<label for="cor_applicant_doc8" class="tbl_doc_txt m_t10" >법인 인감증명서</label>
									<input type="text" id="cor_applicant_doc8" class="file_input" readonly >
									<div class="file_input_div">
										<input type="button" value="선택" class="file_btn" />
										<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_applicant_doc8');"/>
									</div>
								<label for="cor_applicant_doc9" class="tbl_doc_txt m_t10" >위탁 확인서</label>
									<input type="text" id="cor_applicant_doc9" class="file_input" readonly >
									<div class="file_input_div">
										<input type="button" value="선택" class="file_btn" />
										<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_applicant_doc9');"/>
									</div>
								<label for="cor_applicant_doc10" class="tbl_doc_txt m_t10" >본점의 취치 및 명칭 기재 서류 (필요시)</label>
									<input type="text" id="cor_applicant_doc10" class="file_input" readonly >
									<div class="file_input_div">
										<input type="button" value="선택" class="file_btn" />
										<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_applicant_doc10');"/>
									</div>
									<button type="button" id="" class="btn_tbl_black2 btn_tbl_w70">삭제</button>
								<label for="cor_applicant_doc11" class="tbl_doc_txt m_t10" >다른 업종 증빙서류 - 허가증, 등록증(필요시)</label>
									<input type="text" id="cor_applicant_doc11" class="file_input" readonly >
									<div class="file_input_div">
										<input type="button" value="선택" class="file_btn" />
										<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_applicant_doc11');"/>
									</div>
									<button type="button" id="" class="btn_tbl_black btn_tbl_w70">추가</button><button type="button" id="" class="btn_tbl_black2 btn_tbl_w70">삭제</button>


							</td>
						</tr>
					</tbody>
				</table>
				</form>
			</div><!--//enroll_tbl-->
					<div class="btn_wrap btn_center">
						<button type="button" class="btn_blue m_r10" id="btn">저장 후 다음</button>
						<button type="button" class="btn_black">등록취소</button>
					</div>

				</div><!--//content_wrap-->
		</section>
		
	<!---변경팝업시작-->
	<div id="layerPop_modify_data" class="layer_modify">
		<p class="popup_title">자본금 변경</p>
		<div class="data_wrap">
			<div class="enroll_tbl">
			<table>
				<tr>
					<th>변경전</th><th class="modify_color">변경후</th>
				</tr>
				<Tr>
					<td><input type="text" class="input_100p" disabled value="1,000"></td><td><input type="text" class="input_100p"></td>
				</Tr>
			</table>
		</div>
	</div>
		<div class="btn_wrap btn_center">
			<button class="btn_blue">확인</button>
			<button class="btn_black ">닫기</button>
		</div>
		<a href="#" onclick="closeLayer('layerPop_modify_data')" class="popClose">X</a>
	</div> <!-- 변경 팝업 끝-->	