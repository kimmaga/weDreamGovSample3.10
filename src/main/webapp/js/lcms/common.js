document.addEventListener('DOMContentLoaded', function () {
	menuEffect();
	evaluateEffect();
})

function menuEffect() {

	var mainMenu = document.querySelectorAll('#mainmenu_list>li>a')
	var subMenu = document.querySelectorAll('.submenu_list')

	var foldIcon = document.querySelector('#fold_icon')
	var foldIconImg = document.querySelector('#fold_icon>img')
	var menuWrap = document.querySelector('#snb')
	var menu = document.querySelector('#mainmenu')
	var contentsWrap = document.querySelector('#contents')



	for (var i = 0; i < mainMenu.length; i++) {
		mainMenu[i].addEventListener('click', show)
	}
	foldIcon.addEventListener('click', hideMenu)

	function show() {

		for (var j = 0; j < mainMenu.length; j++) {
			mainMenu[j].classList.remove("main_selected");
			if (this !== mainMenu[j]) {
				mainMenu[j].nextElementSibling.style.display = 'none';
			}
		}

		this.classList.toggle("main_selected");
		var panel = this.nextElementSibling;
		if (panel.style.display === "block") {
			this.classList.remove("main_selected");
			panel.style.display = 'none'
		} else {
			panel.style.display = 'block'
		}
	}

	function hideMenu() {
		if (menu.style.display === 'none') {
			menu.style.display = 'block'
			menuWrap.style.width = 198 + 'px'
			foldIconImg.src = "../img/close_icon.png"
			contentsWrap.style.width = 'calc( 100% - 198px )'
		} else {
			menu.style.display = 'none'
			menuWrap.style.width = 15 + 'px'
			foldIconImg.src = "../img/open_icon.png"
			contentsWrap.style.width = 'calc( 100% - 15px )'
		}
	}
}


function file_change(file, filename_id) {
	var str = file.lastIndexOf("\\") + 1;
	file = file.substring(str, file.length);
	document.getElementById(filename_id).value = file;
}


var tabs = document.querySelectorAll(".tabs ul li");
var tab_wraps = document.querySelectorAll(".tab_wrap");

tabs.forEach(function (tab, tab_index) {
  tab.addEventListener("click", function () {
	tabs.forEach(function (tab) {
	  tab.classList.remove("active");
	});
	tab.classList.add("active");

	tab_wraps.forEach(function (content, content_index) {
	  if (content_index == tab_index) {
		content.style.display = "block";
	  } else {
		content.style.display = "none";
	  }
	});
  });
});


	

/* 레이어팝업*/ 

function dEI(elementID){
	return document.getElementById(elementID);
}

function openLayer(IdName){
	var pop = dEI(IdName);
	pop.style.display = "block";

	var wrap = dEI("wrap");
	var reservation = document.createElement("div");
	reservation.setAttribute("id", "deemed");
	wrap.appendChild(reservation);
}
function openLayer(IdName){	
	var pop = dEI(IdName);
	pop.style.display = "block";

	var wrap = dEI("wrap");
	var reservation = document.createElement("div");
	reservation.setAttribute("id", "deemed");
	wrap.appendChild(reservation);
}

function closeLayer( IdName ){
	var pop = dEI(IdName);
	pop.style.display = "none";
	var clearEl=parent.dEI("deemed");
	var momEl = parent.dEI("wrap");
	momEl.removeChild(clearEl);
}

 
function resultShow(){
	var resultWrap=document.querySelectorAll('.result_wrap')

	for (var i = 0; i < resultWrap.length; i++) {
		resultWrap[i].style.display='block'
	}
}

/*심사페이지 레이아웃*/ 
function evaluateEffect(){
	var div1=document.querySelector('#div01');
	var div2=document.querySelector('#div02');
	var div3=document.querySelector('#div03');
	var btnName=document.querySelectorAll('.linkcolor');
	var btn2=document.querySelector('#btn02');
	var btn3=document.querySelector('#btn03')
	
	for(i=0; i<btnName.length; i++){
		btnName[i].addEventListener('click', show23)
	}

	btn2.addEventListener('click', show12)
	btn3.addEventListener('click', div2Full)

	function show23(){
		div1.style.left=-9999 + 'px'
		div2.style.left=0
		div2.style.width=60+'%'
		div3.style.left=60+'%'
	}
	function show12(){
		div1.style.width=40+'%'
		div1.style.left=0
		div2.style.width=60+'%'
		div2.style.left=40+'%'
		div3.style.left=9999 + 'px'
	}
	function div2Full(){
		div1.style.left=-9999 + 'px'
		div2.style.width=100+'%'
		div2.style.left=0
		div3.style.left=9999 + 'px'
	}
   
}

