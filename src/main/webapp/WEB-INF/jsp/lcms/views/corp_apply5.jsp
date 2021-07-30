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
					<li>
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
					<li class="active">
						<a href="cor_enroll_5.html" >5. 신용/기재사항</a>
					</li>
				</ul>
			</div> <!-- 법인신청 탭 끝-->

			<h3>7. 사회적 신용에 관한 사항
				<div class="help_wrap"><input type="checkbox" id="help1" class="help"><label for="help1" class="btn_tip">!</label>
					<div class="tip_con">
						<p class="title">사회적 신용에 관한 사항</p>
						<p>1.
						</p>
						<p></p>
						2. </p>
						<p>
						<label for="help1">X</label></div></div>

			</h3>
			<div class="enroll_tbl">
				<form>
					<table >
						<caption> 개인대출모집인 등록 중 취급하고자 하는 금융상품에 관한 사항 등록 테이블입니다.  </caption>
						<colgroup>
							<col style="width:15%">
							<col style="width:85%">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="cor_social">사회적 신용</label><span class="required_color">*</span></th>
								<td colspan="3"><textarea id="cor_social" class="input_100p" style="height: 80px;" required></textarea></td>
							</tr>
						
							<tr>
								<th scope="row">첨부서류<span class="required_color">*</span></th>
								<td>
									<label for="cor_social_doc1" class="tbl_doc_txt m_t10" >법률에 적합함에 관한 확인서 및 증빙서류</label>
									<input type="text" id="cor_social_doc1" class="file_input" readonly >
									<div class="file_input_div">
										<input type="button" value="선택" class="file_btn" />
										<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_social_doc1');"/>
									</div>
									<button type="button" class="btn_tbl_black btn_tbl_w70">추가</button><button type="button" class="btn_tbl_black2 btn_tbl_w70">삭제</button>
								
								</td>	
							</tr>
							
						</tbody>
					</table>
				
				</form>
			</div><!--//enroll_tbl-->

			<h3>8. 위탁 금융상품직접판매업자 또는 금융상품판매대리 중개업자에 관한 사항 
				<div class="help_wrap"><input type="checkbox" id="help2" class="help"><label for="help2" class="btn_tip">!</label>
					<div class="tip_con">
						<p class="title">위탁 금융상품직접판매업자 또는 금융상품판매대리 중개업자에 관한 사항의 주의</p>
						<p>1.</p>
						<p></p>
						2. 
						</p>
						<p>
						2-1.</p>
						<label for="help2">X</label></div></div>
			</h3>
			<div class="enroll_tbl">
				<form>
					<table>
						<caption> 대출모집법인 등록 신청변경 중 위탁 금융상품직접판매업자 또는 금융상품판매대리 중개업자에 관한 사항 </caption>
						<colgroup>
							<col style="width:15%">
							<col style="width:35%">
							<col style="width:15%">
							<col style="width:35%">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="cor_commission_name">상호<span class="required_color">*</span></label></th>
								<td><input type="text" id="cor_commission_name" class="input_100p" required></td>
								<th scope="row"><label for="cor_commission_num">법인등록번호<span class="required_color">*</span></label></th>
								<td><input type="text" id="cor_commission_num" maxlength="6" class="input_id5" required><em>-</em><input type="text" id="applicant_id_num" maxlength="7" class="input_id7" required></td>
							</tr>
							<tr>
								<th scope="row"><label for="cor_commission_person_name">담당자명<span class="required_color">*</span></label></th>
								<td><input type="text" id="cor_commission_person_name" class="input_100p" required></td>
								<th scope="row"><label for="cor_commission_phone_num">담당자연락처<span class="required_color">*</span></label></th>
								<td><input type="text" id="cor_commission_phone_num" class="input_3" required><em>-</em><input type="text" id="" aria-label="전화번호 중간4자리" class="input_3" required><em>-</em><input type="text" id="" aria-label="전화번호 끝4자리" class="input_3" required> </td>
							</tr>
							<tr>
								<th scope="row"><label for="cor_commission_date">위탁예정기간</label><span class="required_color">*</span></th>
								<td colspan="3">
									<input type="text" id="cor_commission_date"  class="input_2 calendar " placeholder="YYYYMMDD" ><em>-</em><input type="text"  placeholder="YYYYMMDD" class="input_2 calendar" >
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="cor_commission_note">비고</label><span class="required_color">*</span></th>
								<td colspan="3">
									<textarea id="cor_commission_note"  class="input_100p" style="height:100px"></textarea>
								</td>
							</tr>
							<tr>
								<th scope="row">첨부서류<span class="required_color">*</span></th>
								<td colspan="3">
									<label for="cor_commission_doc1" class="tbl_doc_txt m_t10" >위탁 금융상품 직접판매업자 등의 확인서</label>
											<input type="text" id="cor_commission_doc1" class="file_input" readonly >
											<div class="file_input_div">
												<input type="button" value="선택" class="file_btn" />
												<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_commission_doc1');"/>
											</div>
											<button type="button" class="btn_tbl_black btn_tbl_w70">추가</button>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div><!--//enroll_tbl-->
			<h3>9. 그 밖의 기재사항 
				<div class="help_wrap"><input type="checkbox" id="help3" class="help"><label for="help3" class="btn_tip">!</label>
					<div class="tip_con">
						<p class="title">기재상의 주의</p>
						<p>1. 금융상품의 유형은 대출, 시설대여·연불판매, 할
						부금융, 어음할인, 매출채권 매입, 지급보증,
						기타 대출성 상품으로 구분하여 표시하되, 해당 금융상
						품에 대한 금융관련법령을 병기하여 줄 것
						(예: 대출(「여신전문금융업법」에 따른 여신전문금융회사의
						대출상품)</p>
						<p></p>
						2. 취급하고자 하는 금융상품의 유형이 복수인 경우에는 해
						당 금융상품의 유형을 구분하여 표시할 것
						3. 금융상품의 유형, 내용 등에 대해 상세히 기재할 것
						첨부서류</p>
						<p>
						2-1. 첨부서류 : 취급하고자 하는 금융상품의 유형 등에 대
						한 설명자료</p>
						<label for="help3">X</label></div></div>
			</h3>
				<div class="enroll_tbl">
					<form>
					<table >
						<caption> 대출모집법인 등록 중 그 밖의 기재사항 등록 테이블입니다.  </caption>
						<colgroup>
							<col style="width:15%">
							<col style="width:85%">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="cor_etc">기타 기재사항<span class="required_color">*</span></label></th>
								<td><textarea id="cor_etc" class="input_100p" style="height:100px" placeholder="100자 이내"></textarea></td>
							</tr>
							<tr>
								<th scope="row">첨부서류</th>
								<td>
									<label for="cor_etc_doc1" class="tbl_doc_txt" >대리권 수여에 관한 증빙서류(위임장 등)</label>
										<input type="text" id="cor_etc_doc1" class="file_input" readonly >
										<div class="file_input_div">
											<input type="button" value="선택" class="file_btn" />
											<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_etc_doc1');"/>
										</div>
										<button type="button" class="btn_tbl_black btn_tbl_w70">추가</button>
									<label for="cor_etc_doc2" class="tbl_doc_txt m_t10" >신청사실 타당성 심사에 필요한 서류</label>
										<input type="text" id="cor_etc_doc2" class="file_input" readonly >
										<div class="file_input_div">
											<input type="button" value="선택" class="file_btn" />
											<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_etc_doc2');"/>
										</div>
										<button type="button" class="btn_tbl_black2 btn_tbl_w70">삭제</button>
									
								</td>
							</tr>
						</tbody>
					</table>
					</form>
				</div><!--//enroll_tbl-->
			
						<p class="agree">
						<input type="checkbox" id="agree_enroll"><label for="agree_enroll"> 협회, 금융회사, 금융소비자에게 대출모집인의 정보를 제공하는 것에 공의하며, 「금융소비자 보호에 관한 법률」 제12조 및 동법 시행령 제8조에 따라 위와 같이 금융 상품판매대리·중개업 등록을 신청합니다. </label>
					</p>
					<div class="btn_wrap btn_right">
						<button type="button" class="btn_doc" style="margin-right: -4px"><span class="pdf">pdf</span>PDF저장</button>
						<button type="button" class="btn_doc"><span class="print">인쇄</span>인쇄하기</button>
					</div>	
					<div class="btn_wrap btn_center">
						<button type="button" class="btn_gray m_r10">임시저장</button>
						<button type="button" class="btn_blue m_r10"  onclick="openLayer('layerPop_enroll')">등록신청</button>
						<!--
						<button type="button" class="btn_blue m_r10"  onclick="openLayer('layerPop_modifiy')">변경신청</button>
						-->
						<button type="button" class="btn_black"  onclick="openLayer('layerPop_cancel')">등록취소</button>
					</div>

				</div><!--//content_wrap-->
		</section>
		
		<!---등록신청팝업시작-->
		<div id="layerPop_enroll" class="layer_confirm">
			<p class="popup_title">등록신청</p>
			<p class="popup_text">
				대출모집인 등록을</br>
				신청하시겠습니까?
			</p>
			<div class="btn_wrap btn_center">
				<button class="btn_blue">확인</button>
				<button class="btn_black close">닫기</button>
			</div>
			<a href="#" onclick="closeLayer('layerPop_enroll')" class="popClose">X</a>
		</div> <!-- 등록신청 팝업 끝-->

		<!---등록취소팝업시작-->
		<div id="layerPop_cancel" class="layer_confirm">
			<p class="popup_title">등록취소</p>
			<p class="popup_text">
				대출모집인 등록을</br>
				취소하시겠습니까?
			</p>
			<div class="btn_wrap btn_center">
				<button class="btn_blue">확인</button>
				<button class="btn_black close">닫기</button>
			</div>
			<a href="#" onclick="closeLayer('layerPop_cancel')" class="popClose">X</a>
		</div> <!-- 등록신청 팝업 끝-->

		<!---정보변경팝업시작-->
		<div id="layerPop_modifiy" class="layer_confirm">
			<p class="popup_title">정보변경</p>
			<p class="popup_text">
				등록신청 정보를 </br>
				변경하시겠습니까?
			</p>
			<div class="btn_wrap btn_center">
				<button class="btn_blue">확인</button>
				<button class="btn_black close">닫기</button>
			</div>
			<a href="#" onclick="closeLayer('layerPop_modifiy')" class="popClose">X</a>
		</div> <!-- 등록신청 팝업 끝-->
