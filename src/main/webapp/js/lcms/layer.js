window.addEventListener('load', function () {
	showSlide(currSlide);
	showPSlide(PPSlide);	

})


let currSlide = 1;
// showSlide(currSlide);

function button_click(num){
  showSlide((currSlide += num));
}
function showSlide(num){
  const slides = document.querySelectorAll(".slide");
  if(num>slides.length){
    currSlide =1;
  }if(num<1){
    currSlide = slides.length;
  }
  for(let i=0; i<slides.length; i++){
    slides[i].style.display="none";
  }slides[currSlide -1].style.display="block";
}


let PPSlide = 1;
// showPSlide(PPSlide);	
	
function button_click1(num){
	showPSlide((PPSlide += num));
}
function showPSlide(num){
  const Pslides = document.querySelectorAll(".Pslide");
  if(num>Pslides.length){
    PPSlide =1;
  }if(num<1){
    PPSlide = Pslides.length;
  }
  for(let i=0; i<Pslides.length; i++){
    Pslides[i].style.display="none";
  }Pslides[PPSlide -1].style.display="block";
}