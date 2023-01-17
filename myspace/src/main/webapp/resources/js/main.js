$(document).ready(function($){
	$(".profile").hover(function(){
		$(this).addClass('profileSel');
	}, function(){
		$(this).removeClass('profileSel');
	});	
});