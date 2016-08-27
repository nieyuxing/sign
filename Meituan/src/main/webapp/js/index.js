$(function(){
	menuA();
});

function menuA(){
	$('#b_body_left>ul>li').hover(function(){
		$(this).toggleClass('sel');
		$('#b_body_center').show();
	});
	$('#b_body_center').mouseout(function(){
		$('#b_body_center').hide();
	});
}
$(function() {
	$("#box2").click(function() {
		$("html,body").animate({
			scrollTop : 0
		}, 500);//回到顶部
	});

	$("#a1").click(function() {
		$("html,body").animate({
			scrollTop : $("#meishi").offset().top
		}, 1000);//定位到该位置	
	});

	$("#a2").click(function() {
		$("html,body").animate({
			scrollTop : $("#xiuxian").offset().top
		}, 1000);//定位到该位置

	});
	
	$("#a3").click(function() {
		$("html,body").animate({
			scrollTop : $("#dianying").offset().top
		}, 1000);//定位到该位置

	});
	
	$("#a4").click(function() {
		$("html,body").animate({
			scrollTop : $("#jiudian").offset().top
		}, 1000);//定位到该位置

	});
	
	$("#a5").click(function() {
		$("html,body").animate({
			scrollTop : $("#shenghuo").offset().top
		}, 1000);//定位到该位置

	});
	
	$("#a6").click(function() {
		$("html,body").animate({
			scrollTop : $("#gouwu").offset().top
		}, 1000);//定位到该位置

	});
	
	$("#a7").click(function() {
		$("html,body").animate({
			scrollTop : $("#liren").offset().top
		}, 1000);//定位到该位置

	});
	
	$("#a8").click(function() {
		$("html,body").animate({
			scrollTop : $("#lvyou").offset().top
		}, 1000);//定位到该位置

	});
});