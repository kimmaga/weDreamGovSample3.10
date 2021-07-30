<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
	<title>손해보험협회</title>
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/lcms/common.css'/>">
	<script>
		function file_change(file, filename_id){
			var str=file.lastIndexOf("\\")+1;	
			file = file.substring(str, file.length);
			document.getElementById(filename_id).value = file;
		}
	</script>
	<section id="contents">
		<div class="contents_wrap">
			<h2>개인대출모집인 등록신청 현황</h2>
			<div class="btn_wrap btn_right">
				<a href="/invi_apply.do"><button type="button" class="btn_blue">등록신청하기</button></a>
			</div>
			
			<div class="tbl_search">
				<div class="search_item">
					<label for="appication_date">신청일자</label><input type="text" id="" name="" class="date_input calendar"><em> - </em><input type="text" id="" name="" class="date_input calendar">
				</div>
				<div class="search_item">
					<label for="appication_company">신청회사</label>
					<select id="appication_company" name="" class="input_100p">
						<option>선택</option>
						<option>신동아</option>
						<option>KB</option>
						<option>메리츠</option>

					</select>
				</div>
				<div class="search_item">
					<label for="state">진행상태</label>
						<select id="state" name="" class="input_100p">
							<option>선택</option>
							<option>심사중</option>
							<option>자격미요건</option>
							<option>반려</option>
							<option>가등록 완료</option>
							<option>보완요청</option>
							<option>등록완료</option>
					</select>
				</div>
				<div class="search_item m_t10">
					<label for="deadline_date">마감일자</label><input type="text" id="deadline_date" name="" class="calendar date_input"><em> - </em><input type="text" id="" name="" class="calendar date_input">
				</div>
				<div class="search_item m_t10">
					<label for="appication_name">신청인</label><input type="text" id="appication_name" name="" class=" input_100p" placeholder="">
				</div>
				<div class="search_item m_t10">
					<label for="reason">보완사유</label>
						<select id="reason" name="" class="input_100p">
							<option>선택</option>
							<option>중복</option>
							<option>서류보완</option>
							<option>첨부파일미비</option>
						</select>
				</div>
				<div class="btn_wrap btn_center m_t10" style="display: inline-block">
					<button type="button" class="btn_gray_search"><span class="search">조회</span>조회 </button>
				</div>
			</div>
			<div class="tbl_info">
				<p class="total float_l">전체 <span class="total_num" >100</span>건</p> 
				<select class="tbl_line m_r10" >
					<option>10건 출력</option>
					<option>20건 출력</option>
					<option>30건 출력</option>
				</select>
				<button type="button" class="btn_doc " ><span class="excel">엑셀</span>엑셀다운로드</button>
			</div>

			<div class="data_tbl">
				<table>
					<caption> 대출모집법인 등록 신청 목록입니다. 번호 회원사, 신청인, 신청일자, 마감일자, 진행상태, 보완사유</caption>
					<colgroup>
						<col style="width:8%">
						<col style="width:15%">
						<col style="width:12%">
						<col style="width:13%">
						<col style="width:13%">			
						<col style="width:18%">
						<col style="*">
					</colgroup>
					<thead>
						<tr>
							<th>NO <button type="button" class="sortup">정렬</button></th><th>회원사<button type="button" class="sortdown">정렬</button></th><th>신청인<button type="button" class="sortup">정렬</button></th><th>신청일자<button type="button" class="sortup">정렬</button></th><th>마감일자<button type="button" class="sortup">정렬</button></th><th>진행상태<button type="button" class="sortup">정렬</button></th><th>보완사유</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>10</td><td>신동아</td><td><a href="#a" class="linkcolor">박길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td><span class="color_2">자격 미요건</span></td><td>-</td>
						</tr>
						<tr>
							<td>9</td><td>KB</td><td><a href="#a" class="linkcolor">홍길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td><span class="color_1">반려</span></td><td>중복</td>
						</tr>
						<tr>
							<td>8</td><td>신동아</td><td><a href="#a" class="linkcolor">이길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td><span class="color_3">가등록 완료</span></td><td>-</td>
						</tr>
						<tr>
							<td>7</td><td>메리츠</td><td><a href="#a" class="linkcolor">최길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td><span class="color_1">보완요청</span></td><td>서류보완</td>
						</tr>
						<tr>
							<td>6</td><td>DB</td><td><a href="#a" class="linkcolor">우길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td>등록완료</td><td>-</td>
						</tr>
						<tr>
							<td>5</td><td>메리츠</td><td><a href="#a" class="linkcolor">임길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td><span class="color_1">반려</span></td><td>첨부파일 미비</td>
						</tr>
						<tr>
							<td>4</td><td>DB</td><td><a href="#a" class="linkcolor">심길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td><span class="color_3">가등록 완료</span></td><td>-</td>
						</tr>
						<tr>
							<td>3</td><td>메리츠</td><td><a href="#a" class="linkcolor">최길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td>등록완료</td><td>-</td>
						</tr>
						<tr>
							<td>2</td><td>KB</td><td><a href="#a" class="linkcolor">안길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td>등록완료</td><td>-</td>
						</tr>
						<tr>
							<td>1</td><td>신동아</td><td><a href="#a" class="linkcolor">정길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td>등록완료</td><td>-</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="pagination">

				<a href="#" class="arr first" onclick=""><img src="<c:url value='images/lcms/arr_first.png'/>" alt="첫페이지보기버튼"></a>
				<a href="#" class="arr prev" onclick=""><img  src="<c:url value='images/lcms/arr_prev.png'/>" alt="이전페이지보기버튼"></a>
				
				<span class="group">
					<a href="#" class="active" onclick="" title="현재 페이지"><strong>1</strong></a>
					<a href="#" onclick="">2</a>
					<a href="#" onclick="">3</a>
					<a href="#" onclick="">4</a>
					<a href="#" onclick="">5</a>
					<a href="#" onclick="goPage('6'); return false;">6</a>
				</span>
				<a href="#" class="arr next" onclick=""><img src="<c:url value='images/lcms/arr_next.png'/>" alt="다음페이지보기버튼"></a>
				<a href="#" class="arr last" onclick=""><img src="<c:url value='images/lcms/arr_last.png'/>" alt="마지막페이지보기버튼"></a>
			</div>
		</div>
	</section>