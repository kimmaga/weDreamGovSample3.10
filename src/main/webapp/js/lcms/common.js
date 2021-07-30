document.addEventListener('DOMContentLoaded', function () {
	menuEffect();
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
			contentsWrap.style.width = 'calc( 100% - 19.8rem )'
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

document.addEventListener('DOMContentLoaded', function () {
	popup();
})

function popup() {
	let layerBtn = document.querySelector('#btn');
	layerBtn.addEventListener('click', layerFn);

	closeBtn = document.querySelector('.close');
	closeBtn.addEventListener('click', layerFn);

	function layerFn() {
		let popup = document.querySelector('.layer_popup_wrap');

		let type = (popup.style.display == 'none') ? 'block' : 'none';
		popup.style.display = type;

	}
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