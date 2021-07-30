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
					<li class="active">
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

		

			<h3>2. 대표자 및 임원
				<div class="help_wrap"><input type="checkbox" id="help1" class="help"><label for="help1" class="btn_tip">!</label>
					<div class="tip_con">
						<p class="title">대표자 및 임원</p>
						<p>1. )</p>
						<p></p>
						2. </p>
						
						<label for="help1">X</label></div></div>

						<button type="button" class="btn_tbl_black float_r" onclick="openLayer('layerPop')">+ 추가</button>
			</h3>
			

			<div class="data_tbl">
				<form>
				<table>
					<caption> 대표자 및 임원 등록 테이블입니다. </caption>
					<colgroup>
						<col style="width:12%">
						<col style="width:12%">
						<col style="width:12%">
						<col style="width:12%">
						<col style="width:17%">
						<col style="width:10%">
						<col style="width:17%">
						<col style="width:8%">
					</colgroup>
					<thead>
						<tr>
							<th>직위</th><th>성명</th><th>주민등록번호</th><th>소유주식수(비율)</th><th>주요경력</th><th>상근여부</th><th>담당업무</th><th>삭제</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td scope="row" colspan="8" class="btn_center" >등록된 대표자 및 임원이 없습니다.</td>
						</tr>
						<tr>
							<td>대표이사</td><td><a href="#" class="linkcolor">김길동</a></td><td>123456-1234567</td><td>20,000주<br>(50%)</td><td>금융사 3년</td><td>-</td><td>-</td><td><button type="button" class="btn_tbl_black2">삭제</button></td>
						</tr>
						<tr>
							<td>본부장</td><td><a href="#" class="linkcolor">김정</a></td><td>123456-1234567</td><td>20,000주<br>(50%)</td><td>금융사 3년</td><td>-</td><td>-</td><td><button type="button" class="btn_tbl_black2">삭제</button></td>
						</tr>
					</tbody>
					
				</table>
				</form>
			</div><!--//enroll_tbl-->


				</div><!--//content_wrap-->
		</section>
		
		
		<div id="layerPop" class="layer_enrollform">
			<p class="popup_title">대표자 및 임원 추가</p>
			<div class="enroll_tbl">
				<form>
				<table>
					<caption> 대표자 및 임원 추가 등록 테이블입니다.  </caption>
					<colgroup>
						<col style="width:15%">
						<col style="width:35%">
						<col style="width:15%">
						<col style="width:35%">
					</colgroup>
					<tbody>
						
						<tr>
							<th scope="row"><label for="cor_officer_position">직위<span class="required_color">*</span></label></th>
							<td><input type="text" id="cor_officer_position" class="input_100p" required></td>
							<th scope="row"><label for="cor_officer_name">성명<span class="required_color">*</span></label></th>
							<td><input type="text" id="cor_officer_name" class="input_100p" required></td>
						</tr>
						<tr>
							<th scope="row"><label for="cor_officer_id_num">주민등록번호<span class="required_color">*</span></label></th>
							<td><input type="text" id="cor_officer_id_num" maxlength="6" class="input_id5" required><em>-</em><input type="text" id="applicant_id_num" maxlength="7" class="input_id7" required></td>
							<th scope="row"><label for="cor_officer_fulltime">상근여부<span class="required_color">*</span></label></th>
							<td><input type="text" id="cor_officer_fulltime" class="input_100p" required></td>
						</tr>
						<tr>
							<th scope="row"><label for="cor_officer_stock">소유주식수(비율)<span class="required_color">*</span></label></th>
							<td><input type="text" id="cor_officer_stock" class="input_100p" required></td>
							<th scope="row"><label for=""></label></th>
							<td>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="cor_officer_career">주요경력<span class="required_color">*</span></label></th>
							<td colspan="3"><textarea id="cor_officer_career" class="input_100p" style="height: 80px;" required></textarea></td>	
						</tr>
						<tr>
							<th scope="row"><label for="cor_officer_task">담당업무<span class="required_color">*</span></label></th>
							<td colspan="3"><textarea id="cor_officer_task" class="input_100p" style="height: 80px;" required></textarea></td>	
						</tr>
						<tr>
							<th scope="row"><label for="cor_officer_edu">교육이수 내용<span class="required_color">*</span></label></th>
							<td colspan="3"><textarea id="cor_officer_edu" class="input_100p" style="height: 80px;" required></textarea></td>	
						</tr>
						<tr>
							<th scope="row">첨부서류<span class="required_color">*</span></th>
							<td colspan="3">
								<label for="cor_officer_doc1" class="tbl_doc_txt m_t10" >신분증 사본</label>
									<input type="text" id="cor_officer_doc1" class="file_input" readonly >
									<div class="file_input_div">
										<input type="button" value="선택" class="file_btn" />
										<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_officer_doc1');"/>
									</div>
								<label for="cor_officer_doc2" class="tbl_doc_txt m_t10" >경력증명서/이력서</label>
									<input type="text" id="cor_officer_doc2" class="file_input" readonly >
									<div class="file_input_div">
										<input type="button" value="선택" class="file_btn" />
										<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_officer_doc2');"/>
									</div>
								<label for="cor_officer_doc3" class="tbl_doc_txt m_t10" >교육수료증 또는 인증서</label>
									<input type="text" id="cor_officer_doc3" class="file_input" readonly >
									<div class="file_input_div">
										<input type="button" value="선택" class="file_btn" />
										<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_officer_doc3');"/>
									</div>
								<label for="cor_officer_doc4" class="tbl_doc_txt m_t10" >증명사진</label>
									<input type="text" id="cor_officer_doc4" class="file_input" readonly >
									<div class="file_input_div">
										<input type="button" value="선택" class="file_btn" />
										<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_officer_doc4');"/>
									</div>
								<label for="cor_officer_doc5" class="tbl_doc_txt m_t10" >위탁대출모집번인의 확인서</label>
									<input type="text" id="cor_officer_doc5" class="file_input" readonly >
									<div class="file_input_div">
										<input type="button" value="선택" class="file_btn" />
										<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_officer_doc5');"/>
									</div>
								<label for="cor_officer_doc6" class="tbl_doc_txt m_t10" >교육수료증 또는 인증서</label>
									<input type="text" id="cor_officer_doc6" class="file_input" readonly >
									<div class="file_input_div">
										<input type="button" value="선택" class="file_btn" />
										<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_officer_doc6');"/>
									</div>
								<label for="cor_officer_doc7" class="tbl_doc_txt m_t10" >결격사유없음 확인서</label>
									<input type="text" id="cor_officer_doc7" class="file_input" readonly >
									<div class="file_input_div">
										<input type="button" value="선택" class="file_btn" />
										<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_officer_doc7');"/>
									</div>
									<button type="button" class="btn_tbl_black  btn_tbl_w70">추가</button><button type="button" class="btn_tbl_black2 btn_tbl_w70">삭제</button>
							</td>
						</tr>
					</tbody>
				</table>
				</form>
			<div class="btn_wrap btn_center">
				<button class="btn_blue">확인</button>
				<button class="btn_black close">닫기</button>
			</div>
			</div><!--//enroll_tbl-->

			<a href="#" onclick="closeLayer('layerPop')" class="popClose">X</a>
		</div>	