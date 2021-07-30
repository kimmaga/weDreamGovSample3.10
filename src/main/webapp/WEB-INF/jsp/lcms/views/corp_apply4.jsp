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
					<li class="active">
						<a href="cor_enroll_4.html" >4. 인적/물적설비</a>
					</li>
					<li>
						<a href="cor_enroll_5.html" >5. 신용/기재사항</a>
					</li>
				</ul>
			</div> <!-- 법인신청 탭 끝-->

			<h3>5. 인력에 관한 사항
				<div class="help_wrap"><input type="checkbox" id="help1" class="help"><label for="help1" class="btn_tip">!</label>
					<div class="tip_con">
						<p class="title">인력에 관한 사항</p>
						<p>1. </p>
						<p></p>
						2. </p>
						<p>
						2-1. </p>
						<label for="help1">X</label></div></div>

			</h3>
			
			<h4><span class="txt_align">업무수행에 필요한 전문성을 갖춘 인력에 관한 사항 </span>
				<button type="button" class="btn_tbl_black float_r" onclick="openLayer('layerPop_manpower')">+ 추가</button>
			</h4>
			<div class="data_tbl">
				<form>
				<table>
					<caption> 업무수행에 필요한 전문성을 갖춘인력에 관한 사항 정보 등록 테이블입니다.  </caption>
					<colgroup>
						<col style="width:18%">
						<col style="width:35%">
						<col style="width:35%">
						<col style="width:12%">
						
					</colgroup>
					<thead>
						<tr>
							<th>성명</th><th>주민등록번호</th><th>담당업무</th><th>삭제</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="4"  class="btn_center">등록된 인원이 없습니다.</td>
						</tr>
						<tr>
							<td>김길동</td><td>123456-1234567</td><td>재무</td><td><button type="button" class="btn_tbl_black2">삭제</button></td>
						</tr>
						<tr>
							<td>김길동</td><td>123456-1234567</td><td>재무</td><td><button type="button" class="btn_tbl_black2">삭제</button></td>
						</tr>
					</tbody>
					
				</table>
				</form>
			</div><!--//enroll_tbl-->
			

			<h4><span class="txt_align">전산설비 운영 유지 및 관리를 전문적으로 수행할 수 있는 인력에 관한 사항</span>
				<button type="button" class="btn_tbl_black float_r" onclick="openLayer('layerPop_manpower2')">+ 추가</button>
			</h4>
			<div class="data_tbl">
				<form>
				<table>
					<caption> 전산설비 운영 유지 및 관리를 전문적으로 수행할 수 있는 인력에 관한 사항 정보 등록 테이블입니다.  </caption>
					<colgroup>
						<col style="width:18%">
						<col style="width:35%">
						<col style="width:35%">
						<col style="width:12%">
						
					</colgroup>
					<thead>
						<tr>
							<th>성명</th><th>주민등록번호</th><th>담당업무</th><th>삭제</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="4"  class="btn_center">등록된 인원이 없습니다.</td>
						</tr>
						<tr>
							<td>고길동</td><td>123456-1234567</td><td>전산</td><td><button type="button" class="btn_tbl_black2">삭제</button></td>
						</tr>
						<tr>
							<td>고길동</td><td>123456-1234567</td><td>전산</td><td><button type="button" class="btn_tbl_black2">삭제</button></td>
						</tr>
					</tbody>
					
				</table>
				</form>
			</div><!--//enroll_tbl-->


			<h3>6. 물적설비에 관한 사항
				<div class="help_wrap"><input type="checkbox" id="help2" class="help"><label for="help2" class="btn_tip">!</label>
					<div class="tip_con">
						<p class="title">물적설비에 관한 사항</p>
						<p>1.</p>
						<p>2</p>
						<p>
						3</p>
						<label for="help2">X</label></div></div>
			</h3>
			<div class="enroll_tbl">
				<form>
				<table >
					<caption> 대출모집법인 물적설비에 관한 사항 등록 테이블입니다.  </caption>
					<colgroup>
						<col style="width:15%">
						<col style="width:85%">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row"><label for="cor_material_1">컴퓨터 등 정보통신 수단<span class="required_color">*</span></label></th>
							<td>
								<textarea id="cor_material_1" class="input_100p m_b10" style="height:80px" placeholder="컴퓨터 등 정보통신 수단 설명 입력"></textarea>
								<input type="text" id="cor_material_1_file" class="file_input" readonly placeholder="첨부서류업로드">
								<div class="file_input_div">
									<input type="button" value="선택" class="file_btn" />
									<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_material_1_file');" />
								</div></td>	
						</tr>
						<tr>
							<th scope="row"><label for="cor_material_2">전자적 업무처리에 필요한 사항<span class="required_color">*</span></label></th>
							<td>
								<textarea id="cor_material_2" class="input_100p m_b10" style="height:80px" placeholder="전자적 업무처리에 필요한 사항 설명 입력"></textarea>
								<input type="text" id="cor_material_2_file" class="file_input" readonly placeholder="첨부서류업로드">
								<div class="file_input_div">
									<input type="button" value="선택" class="file_btn" />
									<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_material_2_file');" />
								</div></td>	
						</tr>
						<tr>
							<th scope="row"><label for="cor_material_3">고정사업장<br>(건출물대장에 기재된 건물)<span class="required_color">*</span></label></th>
							<td>
								<textarea id="cor_material_3" class="input_100p m_b10" style="height:80px" placeholder="고정사업장(건출물대장에 기재된 건물) 설명 입력"></textarea>
								<input type="text" id="cor_material_3_file" class="file_input" readonly placeholder="첨부서류업로드">
								<div class="file_input_div">
									<input type="button" value="선택" class="file_btn" />
									<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_material_3_file');" />
								</div></td>	
						</tr>
						<tr>
							<th scope="row"><label for="cor_material_4">사무장비 및 통신수단<span class="required_color">*</span></label></th>
							<td>
								<textarea id="cor_material_4" class="input_100p m_b10" style="height:80px" placeholder="사무장비 및 통신수단 설명 입력"></textarea>
								<input type="text" id="cor_material_4_file" class="file_input" readonly placeholder="첨부서류업로드">
								<div class="file_input_div">
									<input type="button" value="선택" class="file_btn" />
									<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_material_4_file');" />
								</div></td>	
						</tr>
						<tr>
							<th scope="row"><label for="cor_material_5">업무 관련 자료의 보관 <br>및 손실방지 설비<span class="required_color">*</span></label></th>
							<td>
								<textarea id="cor_material_5" class="input_100p m_b10" style="height:80px" placeholder="업무 관련 자료의 보관 및 손실방지 설비 설명 입력"></textarea>
								<input type="text" id="cor_material_5_file" class="file_input" readonly placeholder="첨부서류업로드">
								<div class="file_input_div">
									<input type="button" value="선택" class="file_btn" />
									<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_material_5_file');" />
								</div></td>	
						</tr>
						<tr>
							<th scope="row"><label for="cor_material_6">보안설비<span class="required_color">*</span></label></th>
							<td>
								<textarea id="cor_material_6" class="input_100p m_b10" style="height:80px" placeholder="보안설비 설명 입력"></textarea>
								<input type="text" id="cor_material_6_file" class="file_input" readonly placeholder="첨부서류업로드">
								<div class="file_input_div">
									<input type="button" value="선택" class="file_btn" />
									<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_material_6_file');" />
								</div></td>	
						</tr>
						
					</tbody>
				</table>
				</form>
			</div><!--//enroll_tbl-->
			
				
				</div><!--//content_wrap-->
		</section>
		
		<!---팝업시작-->
		<div id="layerPop_manpower" class="layer_enrollform">
			<p class="popup_title">업무수행에 필요한 전문성을 갖춘인력에 관한 사항 추가</p>
			<div class="enroll_tbl">
				<form>
					<table>
						<caption> 업무수행에 필요한 전문성을 갖춘인력에 관한 사항 정보 등록 테이블입니다.  </caption>
						<colgroup>
							<col style="width:15%">
							<col style="width:35%">
							<col style="width:15%">
							<col style="width:35%">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="manpower_name">성명<span class="required_color">*</span></label></th>
								<td><input type="text" id="manpower_name" class="input_100p" required></td>
								<th scope="row"><label for="manpower_id_num">주민등록번호<span class="required_color">*</span></label></th>
								<td><input type="text" id="manpower_id_num" maxlength="6" class="input_id5" required><em>-</em><input type="text" id="manpower_id_num" maxlength="7" class="input_id7" required></td>
							</tr>
							<tr>
								<th scope="row"><label for="manpower_career">주요경력<span class="required_color">*</span></label></th>
								<td colspan="3"><textarea id="manpower_career" class="input_100p" style="height: 80px;" required></textarea></td>	
							</tr>
							<tr>
								<th scope="row"><label for="manpower_task">담당업무<span class="required_color">*</span></label></th>
								<td colspan="3"><textarea id="manpower_task" class="input_100p" style="height: 80px;" required></textarea></td>	
							</tr>
							<tr>
								<th scope="row"><label for="manpower_edu">교육이수 내용<span class="required_color">*</span></label></th>
								<td colspan="3"><textarea id="manpower_edu" class="input_100p" style="height: 80px;" required></textarea></td>	
							</tr>
							<tr>
								<th scope="row">첨부서류<span class="required_color">*</span></th>
								<td colspan="3">
									<label for="manpower_doc1" class="tbl_doc_txt m_t10" >이력서</label>
											<input type="text" id="manpower_doc1" class="file_input" readonly >
											<div class="file_input_div">
												<input type="button" value="선택" class="file_btn" />
												<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'manpower_doc1');"/>
											</div>
											<label for="manpower_doc2" class="tbl_doc_txt m_t10" >근로계약서</label>
											<input type="text" id="manpower_doc2" class="file_input" readonly >
											<div class="file_input_div">
												<input type="button" value="선택" class="file_btn" />
												<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'manpower_doc2');"/>
											</div>
											<label for="manpower_doc3" class="tbl_doc_txt m_t10" >건강보험자격득실 확인서</label>
											<input type="text" id="manpower_doc3" class="file_input" readonly >
											<div class="file_input_div">
												<input type="button" value="선택" class="file_btn" />
												<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'manpower_doc3');"/>
											</div>
											<label for="manpower_doc4" class="tbl_doc_txt m_t10" >교육수료증 또는 인증서</label>
											<input type="text" id="manpower_doc4" class="file_input" readonly >
											<div class="file_input_div">
												<input type="button" value="선택" class="file_btn" />
												<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'manpower_doc4');"/>
											</div>
											<label for="manpower_doc5" class="tbl_doc_txt m_t10" >경력증명서(필요시)</label>
											<input type="text" id="manpower_doc5" class="file_input" readonly >
											<div class="file_input_div">
												<input type="button" value="선택" class="file_btn" />
												<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'manpower_doc5');"/>
											</div>
											<button type="button" class="btn_tbl_black btn_tbl_w70">추가</button>

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
			<a href="#" onclick="closeLayer('layerPop_manpower')" class="popClose">X</a>
		</div> <!-- 업무수행에 필요한 전문성 팝업 끝-->

		<!---팝업시작-->
		<div id="layerPop_manpower2" class="layer_enrollform">
			<p class="popup_title">업무수행에 필요한 전문성을 갖춘인력에 관한 사항 추가</p>
			<div class="enroll_tbl">
				<form>
					<table>
						<caption> 업무수행에 필요한 전문성을 갖춘인력에 관한 사항 정보 등록 테이블입니다.  </caption>
						<colgroup>
							<col style="width:15%">
							<col style="width:35%">
							<col style="width:15%">
							<col style="width:35%">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="manpower_name">성명<span class="required_color">*</span></label></th>
								<td><input type="text" id="manpower_name" class="input_100p" required></td>
								<th scope="row"><label for="manpower_id_num">주민등록번호<span class="required_color">*</span></label></th>
								<td><input type="text" id="manpower_id_num" maxlength="6" class="input_id5" required><em>-</em><input type="text" id="manpower_id_num" maxlength="7" class="input_id7" required></td>
							</tr>
							<tr>
								<th scope="row"><label for="manpower_career">주요경력<span class="required_color">*</span></label></th>
								<td colspan="3"><textarea id="manpower_career" class="input_100p" style="height: 80px;" required></textarea></td>	
							</tr>
							<tr>
								<th scope="row"><label for="manpower_task">담당업무<span class="required_color">*</span></label></th>
								<td colspan="3"><textarea id="manpower_task" class="input_100p" style="height: 80px;" required></textarea></td>	
							</tr>
							<tr>
								<th scope="row"><label for="manpower_edu">교육이수 내용<span class="required_color">*</span></label></th>
								<td colspan="3"><textarea id="manpower_edu" class="input_100p" style="height: 80px;" required></textarea></td>	
							</tr>
							<tr>
								<th scope="row">첨부서류<span class="required_color">*</span></th>
								<td colspan="3">
									<label for="manpower_doc1" class="tbl_doc_txt m_t10" >이력서</label>
											<input type="text" id="manpower_doc1" class="file_input" readonly >
											<div class="file_input_div">
												<input type="button" value="선택" class="file_btn" />
												<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'manpower_doc1');"/>
											</div>
											<label for="manpower_doc2" class="tbl_doc_txt m_t10" >근로계약서</label>
											<input type="text" id="manpower_doc2" class="file_input" readonly >
											<div class="file_input_div">
												<input type="button" value="선택" class="file_btn" />
												<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'manpower_doc2');"/>
											</div>
											<label for="manpower_doc3" class="tbl_doc_txt m_t10" >건강보험자격득실 확인서</label>
											<input type="text" id="manpower_doc3" class="file_input" readonly >
											<div class="file_input_div">
												<input type="button" value="선택" class="file_btn" />
												<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'manpower_doc3');"/>
											</div>
											
											<label for="manpower_doc5" class="tbl_doc_txt m_t10" >전산 자격증 또는 경력 증명서</label>
											<input type="text" id="manpower_doc5" class="file_input" readonly >
											<div class="file_input_div">
												<input type="button" value="선택" class="file_btn" />
												<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'manpower_doc5');"/>
											</div>
											<button type="button" class="btn_tbl_black btn_tbl_w70">추가</button><button type="button" class="btn_tbl_black2 btn_tbl_w70">삭제</button>

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
			<a href="#" onclick="closeLayer('layerPop_manpower2')" class="popClose">X</a>
		</div> <!-- 전산설비 팝업 끝-->
