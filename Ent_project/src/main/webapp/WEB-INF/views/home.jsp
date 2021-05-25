<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html class="Main_AboutEattta">
<head>
</head>
<body>
<div style="width: 1900px; position: relative; margin: 0 auto; text-align: center;">
	<img src="imgs/mainvisual.png" style="width: 1903px; position: absolute;left:-3px;"/>
	<img src="imgs/eattta.png" style="width: 1709px; position: absolute; margin-top: 23%; transform: translate(-50%);"/>
	<img src="imgs/mainhand.png" style="width: 761.19px; position: fixed; margin-top: 6.4%; transform: translate(-50%);"/>
</div>
<div style="width: 1903px; margin: 0 auto; height: 1269px; position: relative;">
</div>
<div style="width:1903px; margin:0 auto; position: relative; background: #fff; height: 1600px;">
	<span style="font-weight: 900; position:absolute; font-size: 36px; left:9%; top: 250px;">ABOUT EATTA</span>
	<div style="position:absolute; left:6%; top:500px;border-left:4px solid #000000; height: 650px;"></div>
	<span style="font-family: 'Noto Sans KR', sans-serif; font-weight:900; text-align:left; position:absolute; font-size: 41.7px; left:21.2%; top: 843px; width: 30%;">푸드트럭 소상공인과<br>고객을 다이렉트로<br>이어주는 가장 쉬운 방법</span>
	<img style="position: absolute; top: 412px; left: 50%; width:34%;" src="imgs/circle-01.png">
	<img style="position: absolute; top: 1000px; left: 42%; width:15%;" src="imgs/graycircle-01.png">
	<img style="position: absolute; top: 1100px; left: 75%; width:16%;" src="imgs/dot-01.png">
	<span style="font-family: BMDoHyeon; font-size: 18.8rem; position: absolute; left: 75%; top: 412px;">01</span>
	<span style="position:absolute; font-family: 'Montserrat', sans-serif; font-weight: 500; text-align: left; font-size: 16.7px; top: 1217px; left: 6%;">THE EASIEST WAY TO<br>DIRECTLY CONNECT<br>FOOD TRUCKERS AND FOODIES</span>
	<img style="position: absolute; top: 350px; left: 48%; width:37%;" src="imgs/about-eattta-01.png">
	<img src="imgs/uppointer.png" style="position: absolute; top: 86%; right: 4%; width: 2.5%">
	<img src="imgs/downpointer.png" style="position: absolute; top: 91%; right: 4%; width: 2.5%">
</div>
<div style="width:1903px; margin:0 auto; position: relative; background: #EFF0F0; height: 1600px;">
	<div style="position:absolute; right:6%; top:500px;border-left:4px solid #000000; height: 650px;"></div>
	<span style="font-family: 'Noto Sans KR', sans-serif; font-weight:900; text-align:right; position:absolute; font-size: 41.7px; left:51.2%; top: 738px; width: 30%;">푸드트럭의 실시간 위치와<br>메뉴를 한 번에 보는<br>가장 효과적인 앱</span>
	<img style="position: absolute; top: 878px; left: 9%; width:15%;" src="imgs/graycircle-01.png">
	<img style="position: absolute; top: 412px; left: 14%; width:34%;" src="imgs/circle-01.png">
	<img style="position: absolute; top: 1231px; left: 50%; width:16%; transform: translate(-50%);" src="imgs/dot-02.png">
	<span style="font-family: BMDoHyeon; font-size: 18.8rem; position: absolute; left: 12%; top: 302px;">02</span>
	<span style="position:absolute; font-family: 'Montserrat', sans-serif; font-weight: 500; text-align: right; font-size: 16.7px; top: 1277px; right: 6.3%;">THE MOST EFFECTIVE APP<br>TO KNOW THE REAL-TIME LOCATION<br>AND MENU OF FOOD-TRUCK AT ONCE</span>
	<img style="position: absolute; top: 466px; left: 1.3%; width:63%;" src="imgs/about-eattta-02@3x.png">
</div>
<div style="width:1903px; margin:0 auto; position: relative; background: #fff; height: 100px;">
</div>
<div style="width:1903px; margin:0 auto; position: relative; background: #FFD420; height: 1400px;">
	<span style="font-weight: 900; position:absolute; font-size: 36px; left:9%; top: 100px;">SHOP STORY</span>
	<img src="imgs/dot-03.png" style="position:absolute; left:-3%; top:359px; height: 412px;"/>
	<img onclick="imgSlide_left();" src="imgs/leftpointer-back.png" style="position:absolute; right:13.5%; top:95px; height: 45px; cursor: pointer;"/>
	<img onclick="imgSlide_right();" src="imgs/rightpointer-back.png" style="position:absolute; right:9%; top:95px; height: 45px; cursor: pointer;"/>
	<img src="imgs/dot-04.png" style="position:absolute; right:0%; bottom:-113px; height: 244.5px;"/>
	<div style="width: 100%; position: absolute; top: 417px; height: 700px; overflow: hidden;">
	<%/* transform: translate3d(-1881px, 0px, 0px);  */ %>
	<div style="height: 700px; width: 3000px;">
	<img id="img1"  src="imgs/Shop_story_1.png" style="height:700px; transform: translateX(180px); transition-duration: 3s;">
	<img id="img2"  src="imgs/Shop_story_2.png" style="height:700px; transform: translateX(270px); transition-duration: 3s;">
	<img id="img3"  src="imgs/Shop_story_3.png" style="height:700px; transform: translateX(360px); transition-duration: 3s;">
	<img id="img4"  src="imgs/Shop_story_4.png" style="height:700px; transform: translateX(450px); transition-duration: 3s;">
	<div style="display: none;">
		<span id="img1_location">180</span>
		<span id="img2_location">270</span>
		<span id="img3_location">360</span>
		<span id="img4_location">450</span>
	</div>
	</div>
	</div>
</div>
<div style="width:1903px; margin:0 auto; position: relative; background: #fff; height: 100px;">
</div>
</body>
<script type="text/javascript" 
	src="js/slick.js?v=<%=new java.util.Date().getTime()%>"></script>
<script type="text/javascript">
$(function(){
})
	function imgSlide_right(){
		if($("#img4_location").html() > -550){
		var img1_location = $("#img1_location").html()-500;
		$("#img1_location").html(img1_location);
		var img2_location = $("#img2_location").html()-500;
		$("#img2_location").html(img2_location);
		var img3_location = $("#img3_location").html()-500;
		$("#img3_location").html(img3_location);
		var img4_location = $("#img4_location").html()-500;
		$("#img4_location").html(img4_location);
		$("#img1").css("transform", "translateX("+img1_location+"px)");
		$("#img2").css("transform", "translateX("+img2_location+"px)");
		$("#img3").css("transform", "translateX("+img3_location+"px)");
		$("#img4").css("transform", "translateX("+img4_location+"px)");
		}
	}
	function imgSlide_left(){
		if($("#img4_location").html() < 450){
		var img1_location = $("#img1_location").html()*1+500;
		$("#img1_location").html(img1_location);
		var img2_location = $("#img2_location").html()*1+500;
		$("#img2_location").html(img2_location);
		var img3_location = $("#img3_location").html()*1+500;
		$("#img3_location").html(img3_location);
		var img4_location = $("#img4_location").html()*1+500;
		$("#img4_location").html(img4_location);
		$("#img1").css("transform", "translateX("+img1_location+"px)");
		$("#img2").css("transform", "translateX("+img2_location+"px)");
		$("#img3").css("transform", "translateX("+img3_location+"px)");
		$("#img4").css("transform", "translateX("+img4_location+"px)");
		}
	}
	
</script>
</html>
