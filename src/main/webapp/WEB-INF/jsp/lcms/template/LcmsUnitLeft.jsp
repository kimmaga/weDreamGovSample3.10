<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<script>

document.addEventListener('DOMContentLoaded', function(){
	open();
})

function open(){
	
	var mainMenu=document.querySelectorAll('#mainmenu_list>li>a')
	var subMenu=document.querySelectorAll('.submenu_list')
	
	var selectedMenu=null;

	for(var i=0; i<mainMenu.length; i++){
		mainMenu[i].addEventListener('click', show)
	}

	function show(){

		for (var j = 0 ; j<mainMenu.length; j++){
			mainMenu[j].classList.remove("main_selected");
			if (this!==mainMenu[j]) {
				 mainMenu[j].nextElementSibling.style.display = 'none';
			 }
		}

		this.classList.toggle("main_selected");
		var panel=this.nextElementSibling;
		if(panel.style.display === "block"){
			this.classList.remove("main_selected");
			panel.style.display='none'
		}else{
			panel.style.display='block'
		}
	}
}

		function file_change(file, filename_id){
			var str=file.lastIndexOf("\\")+1;	
			file = file.substring(str, file.length);
			document.getElementById(filename_id).value = file;
		}

		document.addEventListener('DOMContentLoaded', function(){
            popup();
        })

        function popup(){
            let layerBtn = document.querySelector('#btn');
            layerBtn.addEventListener('click',layerFn);
        
            closeBtn = document.querySelector('.close');
            closeBtn.addEventListener('click',layerFn);
        
        function layerFn(){
            let popup = document.querySelector('.layer_popup_wrap');
            
            let type = (popup.style.display == 'none') ?  'block' :  'none';
            popup.style.display = type;

            }
        }

</script>
	
	<section id="snb">
		<nav id="mainmenu">
			<ul id="mainmenu_list">
				<li>
					<a href="#">대시보드</a>
					<ul class="submenu_list"></ul>
				</li>
				<li>
					<a href="#">대출모집인 현황</a>
					<ul class="submenu_list">
						<a href="#" class="dep2">개인 대출모집인</a>
						<li><a href="#">등록 신청 현황</a></li>
						<li><a href="/LcmsIndividualEnrollmentApply.do">등록 신청하기</a></li>
						<li><a href="#">말소 신청하기</a></li>
						<a href="#" class="dep2">대출모집 법인</a>
						<li><a href="#">등록 신청현황</a></li>
						<li><a href="#">등록 신청하기</a></li>
						<li><a href="#">계약체결 등록하기</a></li>
						<li><a href="#">폐지 신청하기</a></li>
						<li><a href="#">계약해지 신청하기</a></li>
						<a href="#" class="dep2">법인 소속 개인 대출모집인</a>
						<li><a href="#">등록 신청 현황</a></li>
						<li><a href="#">등록 신청하기</a></li>
						<li><a href="#">말소 신청하기</a></li>
					</ul>
				</li>
				<li>
					<a href="#">심사 관리</a>
					<ul class="submenu_list">
						<a href="#" class="dep2">개인 대출모집인</a>
						<li><a href="#">등록 심사 현황</a></li>
						<li><a href="#">말소 심사 현황</a></li>
						<li><a href="#">변경 심사 현황</a></li>
						<a href="#" class="dep2">대출모집 법인</a>
						<li><a href="#">등록 심사 현황</a></li>
						<li><a href="#">폐지 심사 현황</a></li>
						<li><a href="#">변경 심사 현황</a></li>
						<li><a href="#">계약체결 심사 현황</a></li>
						<li><a href="#">계약해지 심사 현황</a></li>
						<a href="#" class="dep2">법인 소속 개인 대출모집인</a>
						<li><a href="#">등록 심사 현황</a></li>
						<li><a href="#">말소 심사 현황</a></li>
						<li><a href="#">변경 심사 현황</a></li>
					</ul>
				</li>
				<li>
					<a href="#">사고자/실태조사</a>
					<ul class="submenu_list">
						<a href="#" class="dep2">사고자</a>
						<li><a href="#">위반자 현황</a></li>
						<li><a href="#">위반사항 등록하기</a></li>
						<a href="#" class="dep2">사고자 심사</a>
						<li><a href="#">위반이력 등재 심사 현황</a></li>
						<a href="#" class="dep2">실태조사</a>
						<li><a href="#">실태조사 현황</a></li>
						<li><a href="#">실태조사 결과 등록</a></li>
					</ul>
				</li>
				<li>
					<a href="#">수수료/통계</a>
					<ul class="submenu_list">
						<a href="#" class="dep2">수수료</a>
						<li><a href="#">수수료 납부 현황</a></li>
						<a href="#" class="dep2">영수증</a>
						<li><a href="#">영수증 발급 내역</a></li>
						<a href="#" class="dep2">통계</a>
						<li><a href="#">대출모집인 통계 조회</a></li>
						<li><a href="#">기타 통계</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</section>