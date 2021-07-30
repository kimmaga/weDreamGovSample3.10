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
					<li class="active">
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

			<h3>3. 취급하고자 하는 금융상품에 관한 사항 
				<div class="help_wrap"><input type="checkbox" id="help2" class="help"><label for="help2" class="btn_tip">!</label>
					<div class="tip_con">
						<p class="title">취급하고자 하는 금융상품에 관한 사항</p>
						<p>1. </p>
						<p></p>
						2. </p>
						<p>
						3</p>
						<label for="help2">X</label></div></div>
			</h3>
			<div class="enroll_tbl">
				<form>
				<table >
					<caption> 대출모집법인 등록 중 취급하고자 하는 금융상품에 관한 사항 등록 테이블입니다.  </caption>
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
							<th scope="row"><label for="cor_detail_con">구체적인 내용<span class="required_color">*</span></label></th>
							<td><textarea id="cor_detail_con" class="input_100p" style="height: 100px;" required></textarea></td>	
						</tr>
						<tr>
							<th scope="row"><label for="cor_product_etc_con">그 밖의 내용<span class="required_color">*</span></label></th>
							<td><textarea id="cor_product_etc_con" class="input_100p" style="height: 100px;" required></textarea></td>	
						</tr>
						<tr>
							<th scope="row"><label for="cor_product_add_doc">첨부서류<span class="required_color">*</span></label></th>
							<td>
								<label for="edu_doc1" class="tbl_doc_txt" >금융상품 소개자료</label>
								<input type="text" id="cor_product_add_doc" class="file_input" readonly >
								<div class="file_input_div">
									<input type="button" value="선택" class="file_btn" />
									<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_product_add_doc');"/>
								</div></td>	
						</tr>
						
					</tbody>
				</table>
				</form>
			</div><!--//enroll_tbl-->
			<h3>4. 업무수행기준에 관한 사항 
				<div class="help_wrap"><input type="checkbox" id="help3" class="help"><label for="help3" class="btn_tip">!</label>
					<div class="tip_con">
						<p class="title">업무수행기준에 관한 사항 </p>
						<p>1. </p>
						<p></p>
						2.</p>
						<p>
						3</p>
						<label for="help3">X</label></div></div>
			</h3>
				<div class="enroll_tbl">
					<form>
					<table >
						<caption> 대출모집법인 등록 업무수행기준에 관한 사항 등록 테이블입니다.  </caption>
						<colgroup>
							<col style="width:15%">
							<col style="width:85%">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="cor_task_stanandard">업무수행기준<span class="required_color">*</span></label></th>
								<td><textarea id="cor_task_stanandard" class="input_100p" style="height:80px" placeholder=""></textarea></td>
							</tr>
							<tr>
								<th scope="row"><label for="">첨부서류</label></th>
								<td>
									<label for="cor_task_standard_doc1" class="tbl_doc_txt" >업무수행기준 증빙서류</label>
										<input type="text" id="cor_task_standard_doc1" class="file_input" readonly >
										<div class="file_input_div">
											<input type="button" value="선택" class="file_btn" />
											<input type="file" id="upfile" name="upfile" class="file_input_hidden" onchange="javascripｔ:file_change(this.value, 'cor_task_standard_doc1');"/>
										</div>
										<button type="button" class="btn_tbl_black  btn_tbl_w70">추가</button><button type="button" class="btn_tbl_black2 btn_tbl_w70">삭제</button>
								
								
								</td>
							</tr>
						</tbody>
					</table>
					</form>
				</div><!--//enroll_tbl-->
			

				</div><!--//content_wrap-->
		</section>
		
		