$(function(){
	menuA();
});

function menuA(){
	$('#b_head_left').hover(function(){
		$('#b_body_left').show();
	});
	$('#b_body_left>ul>li').hover(function(){
		$(this).toggleClass('sel');
		$('#b_body_center').show();
	});
	$('#b_body_center').mouseout(function(){
		$('#b_body_center').hide();
		$('#b_body_left').hide();
	});
}