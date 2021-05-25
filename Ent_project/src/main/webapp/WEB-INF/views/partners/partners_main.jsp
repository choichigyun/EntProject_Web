<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.box{ width:1903px; margin:0 auto; position: relative;}
.subject{
  width: 800px;
  height: 200px;
  top: 250px;
  left:200px;
  font-family: 'Noto Sans KR', sans-serif;
  font-size: 108px;
  font-weight: 900;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: -4px;
  text-align: justify;
  color: var(--black);
  margin-bottom:-806px;
  position: absolute;
}
.upper-case{
  width: auto;
  height: 45px;
  margin-left: 200px;
  font-family: 'Noto Sans KR', sans-serif;
  font-size: 32px;
  font-weight: 900;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: -2.9px;
  text-align: left;
  color: var(--black);
  z-index: 3;
}
.yellow{
color:#fed755;
font-weight: 900;
}

.big-text-subject{
  width: 1569px;
  height: 304px;
  margin: 434px 523px 142px 188px;
  font-family: 'Noto Sans KR', sans-serif;
  font-size: 142.5px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: -7.13px;
  text-align: justify;
  color: var(--black);
}
#testbox{
width: 1900px;
height: 2000px;
margin: 0 auto;
}
#testbox2{
width: 1900px;
height: 3000px;
margin: 0 auto;
}
#box2{
width: 1900px;
height: 3000px;
position: relative;
}
#box3{
width: 1900px;
height: 2000px;
position: relative;
}
#dal{
width: 150px;
height: 150px;
position: absolute;
top:750px; 
left:200px; 
}
#text1{
position: absolute;
font-family: 'Noto Sans KR', sans-serif;
top: 750px;
left: 275px;
font-size: 50px;
}
#text2{
font-size: 70px;
position: absolute;
top: 1150px;
left: 800px;
}
#text3{
font-size: 30px;
position: absolute;
top: 1450px;
left: 800px;
}
#text4{
font-size: 30px;
position: absolute;
top: 1450px;
left: 1245px;
}
#yellowtext{
color: #fed755;
}
#dot{
    width: 350px;
    position: absolute;
    left: 1400px;
    top: 1550px;
    height: 350px;
}
#middium{
  width: 1199px;
  height: 197px;
  font-family:'Noto Sans KR', sans-serif;
  font-size: 36px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: -4.6px;
  text-align: left;
  color: var(--black);
  position: absolute;
  top: 550px;
  left:1000px;
}
.phone{
    position: absolute;
    width: 330px;
    height: 330px;
}
.whitebox{
	width:660px;
	height:660px;
	position: absolute;
}
</style>
<meta charset="UTF-8">
<link href="resources\css\common.css" rel="stylesheet" type="text/css"/>
<title>Insert title here</title>
</head>
<body>
	<div class="box" style="height: 1400px;">
	<img style="background-color: #fed755; width:1500px; height:800px; position: absolute; right: 0px; top: 200px;"/>
	<img src="imgs/icecream-hand.png" style="width:1800px;height: 1120px; margin-top: 100px; position: absolute;" />
	<h3 class="subject">Eattta<br/>Partners</h3>
	</div>
	<div id="testbox">
	<div id="box2">
	<span class="upper-case" style="position: absolute;">EATTA PARTNERS</span>
	<img src="imgs/partnerssubhand2.png" style="width: 1900px; height:530px; margin-top: 100px;  "/>
	<img id="dal" src="imgs/partners-ellipse.png" />
	<p id="text1" style="font-family: 'Noto Sans KR', sans-serif; font-weight: bold;">오픈부터 마감까지<br/>유동인구가 많은 핫플레이스를 찾아<br/><b>이리저리 돌아다니기만 하셨나요?</b></p>
	<p id="text2" style="font-family: 'Noto Sans KR', sans-serif; font-weight: bold;">그런 당신에게<br/><span id="yellowtext">잇따 파트너스</span>를 추천합니다</p>
		<p id="text3" style="font-family: 'Noto Sans KR', sans-serif; font-weight: 500;"> 푸드트럭이나 노점을 통한 요식업<br/> 종사자라면 누구나 한 번쯤 해봤을<br/> 고충들입니다. 일반적인 가게라면<br/> 하지 않았을 고민들이지요. 그리고<br/> 이 고민들은 소상공인들의 근본적<br/> 인 고민이기도 합니다 잇따는 그런<br/> 소상공인들의 고충을 덜어주고자<br/> 만들어졌습니다.
		</p>
		<img id="dot" src="imgs/partners-dot.png"/>
		<p id="text4" style="font-family: font-family: 'Noto Sans KR', sans-serif;font-weight: 500;">스마트폰에 잇따 어플을 다운로드<br/>한 후, 개폐점 관리부터 메뉴관리<br/> 까지 단 하나의 어플로 손쉽게 해<br/> 결할 수 있답니다. 또한, 그동안<br/> 알기 힘들었던 손님들의 반응도<br/> 바로 알 수 있으니 이처럼 간편한<br/> 일이 또 어디있을까요?</p>
	</div>
	</div>
	<div id="testbox2">
	<div id="box3" style="background-color:#f7f7f7; ">
	<span class="upper-case" style="position: absolute; top:45px;">쉽고 간편한 조작</span>
	<p class="subject" style="font-weight: bolder;">필요한 기능만 <br>다 담겨 <span style="background-color: #fed755;">잇따!</span></p>
	<p id="middium"><span style="background-color: #fed755;">소상공인과 고객을 이어주는</span><br/>가장 쉽고 빠른 방법을 만나보세요</p>
	<img src="imgs/white-box.png" width="660px" height="660px" class="whitebox" style="top:1000px; left:280px;"/>
	<img src="imgs/partner-open.png" class="phone" style="top:1220px; left:440px;"/>
	<p style="position: absolute; top:1050px; left:440px; text-align: center;   font-family:'Noto Sans KR', sans-serif; font-size: 32px;">터치 몇번으로 간편하게<br /><span style="font-weight: 900; font-size: larger;">빠른 개폐점 관리</span></p>
	<img src="imgs/white-box.png" width="660px" height="660px" class="whitebox" style="top:1000px; left:960px;"/>
	<img src="imgs/partner-menu.png" class="phone" style="top:1220px; left:1120px"/>
	<p style="position: absolute; top:1050px; left:1085px; text-align: center;   font-family:'Noto Sans KR', sans-serif; font-size: 32px;">누구보다 쉽게 홍보가 가능한<br /><span style="font-weight: 900; font-size: larger;">손쉬운 메뉴 관리</span></p>
	<span class="upper-case" style="color: #fed755; position: absolute; margin-left:200px; top:2100px;">HOW TO USE</span>
	<div style="position: absolute; top:2400px; left:260px;">
	<p style="font-size: 32px; line-height: 30%">잇따 파트너스 어렵지 않아요! 이것만 알면 준비완료!</p>
	<p style="font-size: 72px;font-weight: bold;"><span style="background-color: #fed755; font-weight: 900;">3분만에</span> 파트너스 배우기</p>
	<p style="font-size: 24px;">잇따가 제공하는 가이드를 따라해보세요</p>
	</div>
	<a href="open_store" style="position: absolute; top:2550px;width:450px; height: 50px; left:1200px" ><img src="imgs/btn-partners.png" /></a>
	</div>
	</div>
	
	<div style="width:1900px; margin:0 auto; position: relative; background: #FFD420; height: 1400px;">
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
	
</body>
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