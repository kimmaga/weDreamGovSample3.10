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
			<h2>개인대출모집인 등록신청/변경</h2>
	
			<div class="enroll_tbl">
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

<style>

</style>


			<h3>1. 신청인 정보
				<div class="help_wrap"><input type="checkbox" id="help1" class="help"><label for="help1" class="btn_tip">!</label>
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
						<label for="help1">X</label></div></div>

			</h3>
			<div class="enroll_tbl">
				<form>
				<table >
					<caption> 개인대출모집인 등록 중 신청인 정보 등록 테이블입니다.  </caption>
					<colgroup>
						<col style="width:15%">
						<col style="width:35%">
						<col style="width:15%">
						<col style="width:35%">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row"><label for="applicant_name">성명<span class="required_color">*</span></label></th>
							<td><input type="text" id="applicant_name" class="input_100p" required></td>
							<th scope="row"><label for="applicant_id_num">주민등록번호<span class="required_color">*</span></label></th>
							<td><input type="text" id="applicant_id_num" maxlength="6" class="input_id5" required><em>-</em><input type="text" id="applicant_id_num" maxlength="7" class="input_id7" required></td>
						</tr>
						<tr>
							<th scope="row"><label for="applicant_phone_num">연락처<span class="required_color">*</span></label></th>
							<td><input type="text" id="applicant_phone_num" class="input_3" required><em>-</em><input type="text" id="" aria-label="전화번호 중간4자리" class="input_3" required><em>-</em><input type="text" id="" aria-label="전화번호 끝4자리" class="input_3" required> </td>
							<th scope="row"><label for="applicant_addr">주소<span class="required_color">*</span></label></th>
							<td><input type="text" id="applicant_addr" class="input_addr" required><button type="button" class="btn_tbl_black" style="width: 74px;">주소검색</button><br>
								<input type="text" class="input_100p m_t2" required>
								<input type="text" class="input_100p m_t2" required placeholder="상세주소 입력">
							</td>
						</tr>
						<tr>
							<th scope="row">첨부서류<span class="required_color">*</span></th>
							<td colspan="3">
								<label for="applicant_add_doc" class="tbl_doc_txt m_t10" >주민등록증 또는 여권 또는 운전면허증 사본</label>
										<input type="text" id="applicant_add_doc" class="file_input" readonly >
										<div class="file_input_div">
											<input type="button" value="선택" class="file_btn" />
											<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'applicant_add_doc');"/>
										</div>
							</td>
						</tr>
					</tbody>
				</table>
				</form>
			</div><!--//enroll_tbl-->

			<h3>2. 취급하고자 하는 금융상품에 관한 사항 
				<div class="help_wrap"><input type="checkbox" id="help2" class="help"><label for="help2" class="btn_tip">!</label>
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
						<label for="help2">X</label></div></div>
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
							<th scope="row">금융상품 유형<span class="required_color">*</span></th>
							<td>
								<input type="checkbox" id="product1"><label for="product1">대출</label>
								<input type="checkbox" id="product2"><label for="product2">시설대여/연불판매</label>
								<input type="checkbox" id="product3"><label for="product3">할부금융</label>
								<input type="checkbox" id="product4"><label for="product4">어음할인</label>
								<input type="checkbox" id="product5"><label for="product5">매출채권 매입</label>
								<input type="checkbox" id="product6"><label for="product6">지급보증</label>
								<input type="checkbox" id="product7"><label for="product7">기타 대출성 상품</label>
							</td>
							
						</tr>
						<tr>
							<th scope="row"><label for="detail_con">구체적인 내용<span class="required_color">*</span></label></th>
							<td><textarea id="detail_con" class="input_100p" style="height: 100px;" required></textarea></td>	
						</tr>
						<tr>
							<th scope="row"><label for="product_etc_con">그 밖의 내용<span class="required_color">*</span></label></th>
							<td><textarea id="product_etc_con" class="input_100p" style="height: 100px;" required></textarea></td>	
						</tr>
						<tr>
							<th scope="row"><label for="product_add_doc">첨부서류<span class="required_color">*</span></label></th>
							<td>
								<input type="text" id="product_add_doc" class="file_input" readonly >
								<div class="file_input_div">
									<input type="button" value="선택" class="file_btn" />
									<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'add_doc');"/>
								</div></td>	
						</tr>
						
					</tbody>
				</table>
				</form>
			</div><!--//enroll_tbl-->
			<h3>3. 교육이수에 관한 사항 
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
						<caption> 개인대출모집인 등록 중교육이수에 관한 사항 등록 테이블입니다.  </caption>
						<colgroup>
							<col style="width:15%">
							<col style="width:85%">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="edu_memo">교육이수 내용<span class="required_color">*</span></label></th>
								<td><textarea id="edu_memo" class="input_100p" style="height:100px" placeholder="100자 이내"></textarea></td>
							</tr>
							<tr>
								<th scope="row"><label for="">첨부서류</label></th>
								<td>
									<label for="edu_doc1" class="tbl_doc_txt" >교육과정 이수 확인서(경력) 또는 인증서 (신규)</label>
										<input type="text" id="edu_doc1" class="file_input" readonly >
										<div class="file_input_div">
											<input type="button" value="선택" class="file_btn" />
											<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'edu_doc1');"/>
										</div>
									<label for="edu_doc2" class="tbl_doc_txt m_t10" >경력증명서 (경력)</label>
										<input type="text" id="edu_doc2" class="file_input" readonly >
										<div class="file_input_div">
											<input type="button" value="선택" class="file_btn" />
											<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'edu_doc2');"/>
										</div>
									<label for="edu_doc3" class="tbl_doc_txt m_t10" >교육이수 등 자격에 관한 사항에 대한 증빙서류(선택)</label>
										<input type="text" id="edu_doc3" class="file_input" readonly >
										<div class="file_input_div">
											<input type="button" value="선택" class="file_btn" />
											<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'edu_doc3');"/>
										</div>
								
								</td>
							</tr>
						</tbody>
					</table>
					</form>
				</div><!--//enroll_tbl-->
				<h3>4. 위탁 금융상품직접판매업자 또는 금융상품판매대리 중개업자에 관한 사항
					<div class="help_wrap"><input type="checkbox" id="help4" class="help"><label for="help4" class="btn_tip">!</label>
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
						<label for="help4">X</label></div></div>
				</h3>
					<div class="enroll_tbl">

						<form>
						<table >
							<caption> 개인대출모집인 등록 중 위탁 금융상품직접판매업자 또는 금융상품판매대리 중개업자에 관한 사항 등록 테이블입니다.  </caption>
							<colgroup>
								<col style="width:15%">
								<col style="width:35%">
								<col style="width:15%">
								<col style="width:35%">
							
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><label for="med_company_name">상호</label></th>
									<td><input type="text" id="med_company_name"  class="input_100p"  required></td>
									<th scope="row"><label for="med_company_num">사업자등록번호</label></th>
									<td><input type="text" id="med_company_num" maxlength="3" class="input_com3" required><em>-</em><input type="text" aria-label="사업자등록번호 중간2자리" maxlength="2" class="input_com2" required><em>-</em><input type="text"  aria-label="사업자등록번호 끝5자리" maxlength="5" class="input_com5" required></td>
								</tr>
								<tr>
									<th scope="row"><label for="med_company_person">담당자명</label></th>
									<td><input type="text" id="med_company_person" class="input_100p"  required></td>
									<th scope="row"><label for="med_company_phone">담당자연락처</label></th>
									<td><input type="text" class="input_3" maxlength="3" id="med_company_phone" required><em>-</em><input type="text" class="input_3" maxlength="4" aria-label="담당자연락처 중간4자리" required><em>-</em><input type="text" class="input_3" maxlength="4" aria-label="담당자연락처 끝4자리"  required></td>
								</tr>
								<tr>
									<th scope="row"><label for="med_company_date">위탁예정기간</label></th>
									<td colspan="3"><input type="text" id="med_company_date"  class="input_2 calendar " placeholder="YYYYMMDD" ><em>-</em><input type="text" id="med_company_date" placeholder="YYYYMMDD" class="input_2 calendar" ></td>
								</tr>
								<tr>
									<th scope="row"><label for="med_company_note">비고</label></th>
									<td colspan="3"><textarea id="med_company_note"  class="input_100p" style="height:100px"></textarea></td>
								</tr>
								<tr>
									<th scope="row">첨부서류</th>
									<td colspan="3">
										<label for="med_company_doc1" class="tbl_doc_txt" >위탁 금융상품직접판매업자 등의 확인서</label>
										<input type="text" id="med_company_doc1" class="file_input" readonly>
										<div class="file_input_div">
											<input type="button" value="선택" class="file_btn" />
											<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'med_company_doc1');"/>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						</form>
					</div><!--//enroll_tbl-->
					<h3>5. 그 밖의 기재사항
						<div class="help_wrap"><input type="checkbox" id="help5" class="help"><label for="help5" class="btn_tip">!</label>
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
								<label for="help5">X</label></div></div>
					</h3>
						<div class="enroll_tbl">
							<form>
							<table >
								<caption> 개인대출모집인 등록 중 그 밖의 기재사항 등록 테이블입니다.  </caption>
								<colgroup>
									<col style="width:15%">
									<col style="width:85%">
								
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><label for="etc_memo">기재사항</label></th>
										<td><textarea id="etc_memo"  class="input_100p" style="height:100px"></textarea></td>
									</tr>
									<tr>
										<th scope="row"><label for="">첨부서류</label></th>
										<td>
											<label for="etc_doc1" class="tbl_doc_txt" >결격사유 없음 증명가능한 확인서</label>
										<input type="text" id="etc_doc1" class="file_input" readonly>
										<div class="file_input_div">
											<input type="button" value="선택" class="file_btn" />
											<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'etc_doc1');"/>
										</div>
										<label for="etc_doc2" class="tbl_doc_txt m_t10" >대리권 수여에 관한 증빙서류(위임장 등)</label>
										<input type="text" id="etc_doc2" class="file_input" readonly>
										<div class="file_input_div">
											<input type="button" value="선택" class="file_btn" />
											<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'etc_doc2');"/>
										</div>
										<label for="etc_doc3" class="tbl_doc_txt m_t10" >신청사실 타당성 심사에 필요한 서류</label>
										<input type="text" id="etc_doc3" class="file_input" readonly >
										<div class="file_input_div">
											<input type="button" value="선택" class="file_btn" />
											<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'etc_doc3');"/>
										</div>
									</tr>
								</tbody>
							</table>
							</form>
						</div><!--//enroll_tbl-->
						<p class="agree">
						<input type="checkbox" id="agree_enroll"><label for="agree_enroll"> 내용에 동의하며, 금융소비자 보호에 관한 법률 제12조 및 동법 시행령 제8조에 따라 위와 같이 금융상품판매대리중개업 등록을 신청합니다. </label>
					</p>
					<div class="btn_wrap btn_right">
						<button type="button" class="btn_doc" style="margin-right: -4px"><span class="pdf">엑셀</span>PDF저장</button>
						<button type="button" class="btn_doc"><span class="print">인쇄</span>인쇄하기</button>
					</div>	
					<div class="btn_wrap btn_center">
						<button type="button" class="btn_gray m_r10">임시저장</button>
						<button type="button" class="btn_blue m_r10" id="btn">등록신청</button>
						<button type="button" class="btn_black">등록취소</button>
					</div>


		</section>

</html>
