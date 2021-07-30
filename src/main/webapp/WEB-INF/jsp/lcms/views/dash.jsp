	<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="ROBOTS" content="NOINDEX,NOFOLLOW" />
	<title>손해보험협회</title>
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/lcms/common.css'/>">
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/lcms/member.css'/>">
	<script src="/js/lcms/common.js"></script>
			<section id="contents">

			<div class="dash_wrap">
			<h2>대시보드</h2>

			<div class="dash_box">
				- 대출모집인관련 신청 업무는 개인, 법인소속개인, 법인으로 분류되어 신청됩니다. <br>
				- 심사 업무는 09:00 ~ 18:00만 가능합니다. 심사관련 문의는 손해보험협회 담당자에게 연락바랍니다. <br>
				<span class="point">* 업무 현황 중 기한 임박 심사는 2주내 심사완료가 되어야 하는 건 입니다.  </span>
			</div>
			<div class="dash_one">
				<span class="icon" > <img src="/images/lcms/dash_icon.png"></span>
				<p class="member" >TODAY 업무현황 </p>
				<p class="today">&middot; 신청전 <span class="today_total">30건</span></p>
				<p class="today">&middot; 심사중 <span class="today_total">30건</span></p>
				<p class="today">&middot; 기한임박 <span class="today_total">30건</span></p>
				<p class="today">&middot; 심사완료 <span class="today_total">30건</span></p>

			</div>
			<div class="dash_three">
				<p class="dash_title_color1">대출모집 개인 현황</p>
				<div class="state_wrap">
					<p class="state_title"><i class="fas fa-tasks"></i>신규</p>
					<ul class="state">
						<li>
							신청전 <a href="#">3</a>
						</li>
						<li>
							심사중 <a href="#">11</a>
						</li>
						<li>
							기한임박 심사 <a href="#" class="point">4</a>
						</li>
						<li>
							심사완료 <a href="#">94</a>
						</li>
					</ul>
				</div>
				<div class="state_wrap">
					<p class="state_title"><i class="fas fa-pencil-ruler"></i>변경</p>
					<ul class="state">
						<li>
							신청전 <a href="#">2</a>
						</li>
						<li>
							심사중 <a href="#">11</a>
						</li>
						<li>
							기한임박 심사 <a href="#" class="point">1</a>
						</li>
						<li>
							심사완료 <a href="#">17</a>
						</li>
					</ul>
				</div>
				<div class="state_wrap">
					<p class="state_title"><i class="fas fa-eraser"></i>말소</p>
					<ul class="state">
						<li>
							신청전 <a href="#">2</a>
						</li>
						<li>
							심사중 <a href="#">1</a>
						</li>
						<li>
							기한임박 심사 <a href="#" class="point">-</a>
						</li>
						<li>
							심사완료 <a href="#">-</a>
						</li>
					</ul>
				</div>

			</div><!--dash_quarter-->

			<div class="dash_half h300">
				<p class="dash_title_color2">대출모집법인 현황</p>
				<div class="state_wrap">
					<p class="state_title"><i class="fas fa-stamp"></i>계약체결</p>
					<ul class="state">
						<li>
							신청전 <a href="#">4</a>
						</li>
						<li>
							심사중 <a href="#">4</a>
						</li>
						<li>
							기한임박 심사 <a href="#" class="point">4</a>
						</li>
						<li>
							심사완료 <a href="#">4</a>
						</li>
					</ul>
				</div>
				<div class="state_wrap">
					<p class="state_title"><i class="fas fa-tasks"></i>신규신청</p>
					<ul class="state">
						<li>
							신청전 <a href="#">4</a>
						</li>
						<li>
							심사중 <a href="#">4</a>
						</li>
						<li>
							기한임박 심사 <a href="#" class="point">4</a>
						</li>
						<li>
							심사완료 <a href="#">4</a>
						</li>
					</ul>
				</div>
				<div class="state_wrap">
					<p class="state_title"><i class="fas fa-exchange-alt"></i>변경</p>
					<ul class="state">
						<li>
							신청전 <a href="#">4</a>
						</li>
						<li>
							심사중 <a href="#">4</a>
						</li>
						<li>
							기한임박 심사 <a href="#" class="point">4</a>
						</li>
						<li>
							심사완료 <a href="#">4</a>
						</li>
					</ul>
				</div>

				<div class="state_wrap">
					<p class="state_title"><i class="fas fa-ban"></i>계약해지/폐지</p>
					<ul class="state">
						<li>
							신청전 <a href="#">4 / 4</a>
						</li>
						<li>
							심사중 <a href="#">4 /6</a>
						</li>
						<li>
							기한임박 심사 <a href="#" class="point">12 / 94</a>
						</li>
						<li>
							심사완료 <a href="#">11 / 40 </a>
						</li>
					</ul>
				</div>
			</div><!--dash_quarter-->
			
			<div class="dash_half h558">
				<p class="dash_title">최근신청목록</p>
				<div class="data_tbl">
					<table>
						<caption> 최근신청 목록</caption>
						<colgroup>
							<col style="width:13%">
							<col style="width:15%">
							<col style="width:15%">
							<col style="width:18%">
							<col style="width:18%">	
							<col style="*">
						</colgroup>
						<thead>
							<tr>
								<th>분류 <button type="button" class="sortup">정렬</button></th><th>회원사<button type="button" class="sortdown">정렬</button></th><th>신청인<button type="button" class="sortup">정렬</button></th><th>신청일자<button type="button" class="sortup">정렬</button></th><th>마감일자<button type="button" class="sortup">정렬</button></th><th>진행상태<button type="button" class="sortup">정렬</button></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>개인신청</td><td>신동아</td><td><a href="#a" class="linkcolor">박길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td><span class="color_2">자격 미요건</span></td>
							</tr>
							<tr>
								<td>개인변경</td><td>KB</td><td><a href="#a" class="linkcolor">홍길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td><span class="color_1">반려</span></td>
							</tr>
							<tr>
								<td>법인신규</td><td>신동아</td><td><a href="#a" class="linkcolor">이길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td><span class="color_3">가등록 완료</span></td>
							</tr>
							<tr>
								<td>법인말소</td><td>메리츠</td><td><a href="#a" class="linkcolor">최길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td><span class="color_1">보완요청</span></td>
							</tr>
							<tr>
								<td>법인변경</td><td>DB</td><td><a href="#a" class="linkcolor">우길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td>등록완료</td>
							</tr>
							<tr>
								<td>개인말소</td><td>신동아</td><td><a href="#a" class="linkcolor">이길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td><span class="color_3">가등록 완료</span></td>
							</tr>
							<tr>
								<td>법인해지</td><td>메리츠</td><td><a href="#a" class="linkcolor">최길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td>-</td>
							</tr>
							<tr>
								<td>법인해지</td><td>DB</td><td><a href="#a" class="linkcolor">우길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td>등록완료</td>
							</tr>
							<tr>
								<td>개인신청</td><td>신동아</td><td><a href="#a" class="linkcolor">박길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td>-</td>
							</tr>
							<tr>
								<td>개인신청</td><td>신동아</td><td><a href="#a" class="linkcolor">박길동</a></td><td>2021.08.30</td><td>2021.10.29</td><td>-</td>
							</tr>
						
							
						</tbody>
					</table>
				</div>
			</div><!-- dash half-->
			<div class="dash_quarter">
				<p class="dash_title">회원사별 오늘신청건</p>
				<div>
					<ul class="board">
						<li>
							<a href="">메리츠화재 <span class="board_date">5</span></a>
						</li>
						<li>
							<a href="">한화손보 <span class="board_date">2</span></a>
						</li>
						<li>
							<a href="">제일화재 <span class="board_date">5</span></a>
						</li>
						<li>
							<a href="">MG손보 <span class="board_date">2</span></a>
						</li>
						<li>
							<a href="">흥국화재 <span class="board_date">7</span></a>
						</li>
						<li>
							<a href="">삼성화재 <span class="board_date">55</span></a>
						</li>
					

					</ul>
				</div>
			</div><!--dash_quarter-->
			<div class="dash_quarter">
				<p class="dash_title">공지사항</p>
				<div>
					<ul class="board">
						<li>
							<a href=""><div class="board_title">손해보험협회 전산시스템 정기점검 안내 </div><span class="board_date">2021-06-22</span></a>
						</li>
						<li>
							<a href=""><div class="board_title">[입찰공고] 클라우드 서비슷 시범 도입</div> <span class="board_date">2021-06-22</span></a>
						</li>
						<li>
							<a href=""><div class="board_title">[안내]코로나19 피해 중소기업 및 소상공인 </div><span class="board_date">2021-06-22</span></a>
						</li>
						<li>
							<a href=""><div class="board_title">[안내]금리인하요구권 법제화 </div><span class="board_date">2021-06-22</span></a>
						</li>
						<li>
							<a href=""><div class="board_title">[안내] 유병력자 실손의료보험 출시</div> <span class="board_date">2021-06-22</span></a>
						</li>
						<li>
							<a href=""><div class="board_title">[안내] 2016년도 하반기 의료자문현황 </div><span class="board_date">2021-06-22</span></a>
						</li>

					</ul>
				</div>
			
			</div><!--dash_quarter-->
			<div class="dash_bann" dash_bann>
<span class="txt"></span>
			</div>
			</div>
		</section>