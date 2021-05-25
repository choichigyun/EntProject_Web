<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="story-box">
<img id="yellowsun" src="imgs/contactus-yellow.png">
<h3 class="title2">Shop Story<a id="go">&nbsp;&nbsp;&nbsp;&nbsp;가맹점 스토리</a></h3>
<h3 id="memo">잇따가 이어준 인연을 확인해보세요</h3>
</div>

<img id="silsun1" src="imgs/contactus-grayline.png">
<div id="imagebox1">
<img id="prangs" src="imgs/story-1.png" onclick="location.href='shop_inside01'">
<p id="in1">SHOP INSIDE</p>
<h3 id="input1">"<br/>제 2의 고향 한국에<br/>고향의 맛을<br/>알려주고 싶었어요</h3>
<span id="sp1">라 타블 드 폴 - 폴 고티에 님</span>
<img id="sujin" src="imgs/story-2.png" onclick="location.href='shop_inside02'">
<p id="in2">SHOP INSIDE</p>
<h3 id="input2">"<br/>제가 어렸을때부터<br/>떡볶이 하나만은<br/>기가막혔었어요</h3>
<span id="sp2">수진이 또자 분식 - 강수진 님</span>
<img id="halmae" src="imgs/story-3.png" onclick="location.href='shop_inside03'">
<p id="in3">SHOP INSIDE</p>
<h3 id="input3">"<br/>이혼했을 때는 막막했는데<br/>무엇부터 해볼까 하다<br/>부침개가 생각났어요</h3>
<span id="sp3">창신 부침개 - 최옥순 님</span>
<img id="halbae" src="imgs/story-4.png" onclick="location.href='shop_inside04'">
<p id="in4">SHOP INSIDE</p>
<h3 id="input4">"<br/>힘든 것도 사실이에요<br/>하지만 보람이라는 걸<br/>무시못하거든요</h3>
<span id="sp4">남열이의 이시스 딜꼬치 - 박남열님</span>
</div>
<img id="silsun2" src="imgs/contactus-grayline.png">
<div id="promo-box">
<img id="promo" src="imgs/partners_promo.png">
<img id="btnyellow" src="imgs/btn-partners.png" onclick="location.href='partners_main'" >
</div>

</body>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700;900&display=swap');
#story-box{
width: 1900px;
height: 200px;
margin-left: 200px;
position: relative;
}

.title2{
	font-family: 'Montserrat', sans-serif;
	font-size: 48px;
	position: absolute;
}
#memo{
	font-size: 30px;
	top: 120px;
	font-family: 'Noto Sans KR', sans-serif;
	position: absolute;
}
#go{
	font-size: 25px;
	font-family: 'Noto Sans KR', sans-serif;
}
#yellowsun{
width: 300px;
height: 25px;
top: 80px;
left: -8px;
position: absolute;
}

#silsun1{
width: 1500px;
height: 10px;
margin-left: 200px;

}
#silsun2{
width: 1500px;
height: 5px;
margin-left: 200px;
margin-top: 50px;

}
#content{
	width: 1900px;
	margin: 0px auto;
	margin-top: 150px;
	font-family: 'Montserrat', sans-serif;
	font-size: 30px;
}
#imagebox1{
position: relative;
width: 1900px;
height: 1650px;
top: 90px;
}
#prangs{
width: 700px;
height: 700px;
left: 200px;
position: absolute;
cursor: pointer;
}
#sujin{
width: 700px;
height: 700px;
left: 975px;
top:0px;
position: absolute;
cursor: pointer;
}
#halmae{
width: 700px;
height: 700px;
left: 200px;
top: 760px;
position: absolute;
cursor: pointer;
}
#halbae{
width: 700px;
height: 700px;
top: 760px;
left: 975px;
position: absolute;
cursor: pointer;
}
#in1{
left: 250px;
top: 20px;
position: absolute;
}
#in2{
left: 1025px;
top: 20px;
position: absolute;
}
#in3{
left: 250px;
top: 785px;
position: absolute;
}
#in4{
left: 1025px;
top: 785px;
position: absolute;
}
p{
font-family: 'Montserrat', sans-serif;
color: #ffffff;
font-weight: bold;
font-size: 25px;
}

#input1{
top: 340px;
left: 270px;
font-size: 42px;
color: #ffffff;
position: absolute;
line-height: 1.2;
font-family: 'Noto Sans KR', sans-serif;
}
#input2{
top: 340px;
left: 1040px;
font-size: 42px;
color: #ffffff;
position: absolute;
font-family: 'Noto Sans KR', sans-serif;
line-height: 1.2;
}
#input3{
top: 1100px;
left: 270px;
font-size: 42px;
color: #ffffff;
position: absolute;
font-family: 'Noto Sans KR', sans-serif;
line-height: 1.2;
}
#input4{
top: 1100px;
left: 1040px;
font-size: 42px;
color: #ffffff;
position: absolute;
font-family: 'Noto Sans KR', sans-serif;
line-height: 1.2;
}
span{
font-size:30px;
color: #ffd23e;
position: absolute;
font-family: 'Noto Sans KR', sans-serif;
font-weight: bolder;

font-size: 35px;
}
#sp1{
top: 600px;
left: 270px;
}
#sp2{
top: 600px;
left: 1040px;
}
#sp3{
top: 1360px;
left: 270px;
}
#sp4{
top: 1360px;
left: 1040px;
}
#promo-box{
width: 1500px;
height: 900px;
margin-left: 200px;
margin-top: 150px;
position: relative;
}
#btnyellow{
width: 450px;
height: 165px;
top: 490px;
position: absolute;
cursor: pointer;
}
#promo{
width: 1500px;
position: absolute;

}

</style>
</html>