<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources\css\style.css" rel="stylesheet" type="text/css"/>
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body>
<div id="box">
      <div style="background-color: #efefef; width: 350px; height: 2105px; position: absolute; top: 150px;">
			<c:if test="${Aboutus eq 'About_us' }">
			<span style="position: absolute;top: 202px; left:32px; font-size: 23px;">▶</span>
			</c:if>
			<c:if test="${Aboutus eq 'Notice' }">
			<span style="position: absolute;top: 307px; left:32px; font-size: 23px;">▶</span>
			</c:if>
			<c:if test="${Aboutus eq 'How_to_use' }">
			<span style="position: absolute;top: 412px; left:32px; font-size: 23px;">▶</span>
			</c:if>
         <a href="about_us"><span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900; position: absolute;top: 199px; left:68px; font-size: 27px; cursor: pointer;">About us</span></a>
         <a href="list.ab"><span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900; position: absolute;top: 303px; left:68px; font-size: 27px;">Notice</span></a>
         <a href="about_us_howtouse"><span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900; position: absolute;top: 407px; left:68px; font-size: 27px;">How to use</span></a>
      </div>
      <div id="side_box">
      <img id="yellowsun" src="imgs/contactus-yellow.png">
	  <h3 class="title2">About&nbsp;&nbsp;us<a id="go">&nbsp;&nbsp;&nbsp;&nbsp;소개</a></h3>
	  <img id="image1" src="imgs/aboutus-why-img.png">
	  <img id="image2" src="imgs/whyimage1.png">
	  <img id="image3" src="imgs/whyimage2.png">
	  <img id="image4" src="imgs/whyimage3.png">
	  <img id="image5" src="imgs/whyimage4.png">
	  <img id="image6" src="imgs/whyimage5.png">
      </div>
      <div id="side_box2">
      <img id="yellowimage" src="imgs/yellowimage.png">    
      </div>
      <div id="side_box3">
      <img id="teamimage" src="imgs/about_us_team.png">
      </div>
</div>
</body>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700;900&display=swap');
#go{
	font-size: 25px;
	font-family: 'Noto Sans KR', sans-serif;
}
.title2{
	font-family: 'Montserrat', sans-serif;
	font-size: 48px;
	left:50px;
	top:40px;
	position: absolute;
}

#yellowsun{
width: 280px;
height: 25px;
top: 120px;
left: 30px;
position: absolute;
}


#box{
width: 1900px;
height: 6100px;
margin: 0 auto;
position: relative;
}
#side_box{
	width: 1540px;
	height:2100px;
	right: 0px;
	position: absolute;
	top: 150px;
}
#side_box2{
	width: 1540px;
	height:2300px;
	right: 0px;
	position:absolute;
	top: 2300px;
}
#side_box3{
	width: 1540px;
	height:1500px;
	right: 0px;
	position:absolute;
	top: 4500px;
}
#image1{
	width: 1540px;
	height: 650px;
	margin-top: 210px;
	position: absolute;
}
#image2{
	width: 660px;
	height: 250px;
	margin-left:100px;
	margin-top: 530px;
	position: absolute;
}
#image3{
	width: 900px;
	height: 150px;
	margin-left:120px;
	margin-top: 1020px;
	position: absolute;
}
#image4{
	width: 430px;
	height: 450px;
	margin-left:590px;
	margin-top: 1360px;
	position: absolute;
}
#image5{
	width: 430px;
	height: 350px;
	margin-left:1110px;
	margin-top: 1360px;
	position: absolute;
}
#image6{
	width: 730px;
	height: 100px;
	margin-left:810px;
	margin-top: 1920px;
	position: absolute;
}
#yellowimage{
	width: 1540px;
	height: 2150px;
	margin-top: 40px;
}
#teamimage{
	width: 1540px;
	height: 1340px;
	margin-top: 140px;
}
</style>
</html>