$(document).ready(function(){
 	new WOW().init();
 });

// preloading
// window.addEventListener("load", function(){
// 	var load_screen = document.getElementById("load_screen");
// 	document.body.removeChild(load_screen);
// });

// parallax.js and stellar.js
$(document).ready(function(){
 	var scene = document.getElementById('scene');
 	var parallax = new Parallax(scene);
 	$.stellar();
 });

// custom-parallax
// $(document).ready(function(){
//  	$('#intro').mousemove(function(e){
//     	var amountMovedX = (e.pageX * -0.1 / 6);
//     	var amountMovedY = (e.pageY * -0.2 / 6);
//     	$(this).css('background-position', amountMovedX + 'px ' + amountMovedY + 'px');
// 	});
//  });