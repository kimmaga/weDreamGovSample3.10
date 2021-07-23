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
			<h2>회원가입 화면- 회원사</h2>
	
			<div class="enroll_tbl">
			<table>
				<caption> 개인대출모집인 등록 중 신청인 정보 등록 테이블입니다.  </caption>
				<colgroup>
					<col style="width:15%">
					<col style="width:35%">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">
							<label for="member_id">아이디</label>
						</th>
						<td>
							<input type="text" id="member_id" name="member_id" class="input_100p" >
						</td>
					</tr>
					<tr>
						<th scope="row">
							<label for="member_password">비밀번호</label>
						</th>
						<td>
							<input type="password" id="member_password" class="input_100p" name="member_password">
						</td>
					</tr>
					<tr>
						<th scope="row">
							<label for="member_password_confirm">비밀번호 확인</label>
						</th>
						<td>
							<input type="password" id="member_password_confirm" class="input_100p" name="member_password_confirm">
						</td>
					</tr>
					<tr>
						<th scope="row">
							<label for="member_name">성명</label>
						</th>
						<td>
							<input type="text" id="member_name" name="member_name" class="input_100p">
						</td>
					</tr>
					<tr>
						<th scope="row">
							<label for="member_birth">생년월일</label>
						</th>
						<td>
							<input type="text" id="member_birth" name="member_birth" class="input_100p">
						</td>
					</tr>
					<tr>
						<th scope="row">
							<label for="member_company">소속</label>
						</th>
						<td>
							<select name="member_company" id="member_company">
								<option value="">소속선택</option>
								<option value="J01">JLogos보험</option>
							</select>
						</td>
					</tr>
					<tr>
						<th scope="row">
							<label for="member_dept">부서</label>
						</th>
						<td>
							<input type="text" id="member_dept" name="member_dept" class="input_100p">
						</td>
					</tr>
					<tr>
						<th scope="row">
							<label for="member_rank">직급</label>
						</th>
						<td>
							<input type="text" id="member_rank" name="member_rank" class="input_100p">
						</td>
					</tr>
					<tr>
						<th scope="row">
							<label for="member_phone">휴대폰</label>
						</th>
						<td>
							<input type="text" id="member_phone" name="member_phone" class="input_100p">
						</td>
					</tr>
					<tr>
						<th scope="row">
							<label for="member_email">이메일</label>
						</th>
						<td>
							<input type="email" id="member_email" name="member_email" class="input_100p">
						</td>
					</tr>
				</tbody>
			</table>
			</div>



		</section>

</html>
