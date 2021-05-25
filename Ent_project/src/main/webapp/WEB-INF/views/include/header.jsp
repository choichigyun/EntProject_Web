<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String category = "";
if(session.getAttribute("category") != null){
	category = session.getAttribute("category").toString();
}
%>    
<header style='text-align:left; padding-top:15px; border-bottom:1px solid #ccc; margin: 0 auto; width: 1903px;'>
	
	<div class='category' style='margin-left:200px; position: relative;'>
		<c:if test="${!empty admin }">
		<div id="admin_logout">
			<span style="position:absolute;font-family:'Noto Sans KR', sans-serif; font-weight: 500; right: 110px; top: -9px; font-size: 18px; ">admin</span>
			<a href="admin_logout" style="position:absolute; right: 5px; top: -12px; width: 102px; height: 26px;"><img src="imgs/btn-logout.png" style="width:110px; transform: translateY(-6px);"></a>
		</div>
		</c:if>
		<ul>
			<li class='HeaderLogo' ><a href='<c:url value="/"/>'><img src='imgs/header-logo.png' style="width: 8%; height: 1%; margin-bottom: 10px;" alt='홈으로'/></a></li>
		</ul>
		<div style="position: absolute; right: 200px; top: 7px;">
			<ul>
				<li class="ABOUT-US" style="cursor:pointer;"><a  class='${category eq "cu" ? "active" : ""} ABOUT-US'><img class="ABOUT-US" src='imgs/about-us.png' alt='ABOUT-US'/></a></li> 
				<li class='SHOP' style="cursor:pointer;"><a  class='${category eq "no" ? "active" : ""} SHOP'><img src='imgs/shop.png' class="SHOP" alt='SHOP'/></a></li> 
				<li class='PARTNERS' style="cursor:pointer;"><a  class='${category eq "bo" ? "active" : ""} PARTNERS'><img class="PARTNERS" src='imgs/partners.png' alt='PARTNERS'/></a></li> 
				<li class='REVIEW' style="cursor:pointer;"><a href="list.re"  class='${category eq "da" ? "active" : ""}'><img src='imgs/review.png' alt='REVIEW'/></a></li>
			</ul>
		</div>
		<div style="position: absolute; right: 325px; top: 51px;" id="header-black">
			<ul>
				<li>
					<img id="about_us" style="visibility: hidden; " src="imgs/header-black.png"><img id="shop" style="visibility: hidden;" src="imgs/header-black.png"><img id="partners" style="visibility: hidden;" src="imgs/header-black.png">
				</li>
			</ul>
		</div>
	</div>
		<div id="header-yellow" style="width: 1903px; background-color: #ffd23e; height: 85px; display: none; position: relative;">
			<a href="about_us" class="aboutus-icon" id="aboutus-icon" style="position: absolute; top: 11px; left: 64.7%; display: none;"><img src="imgs/header-aboutus-icon.png" style="width: 72px;"></a>
       		<a href="list.ab" class="aboutus-icon" id="notice-icon" style="position: absolute; top: 11px; left: 71.7%; display: none; "><img src="imgs/header-notice-icon.png" style="width: 46px;"></a>
			<a href="about_us_howtouse" class="aboutus-icon" id="htu-user-icon" style="position: absolute; top: 11px; left: 77.7%; display: none; "><img src="imgs/header-htu-user-icon.png" style="width: 78px; cursor: pointer;"></a>
			<a href="shop_main" class="shop-icon" style="position: absolute; top: 11px; left: 71.4%; display: none; "><img src="imgs/header-shop-list-icon.png" style="width: 65px;"></a>
			<a href="shop_story" class="shop-icon" style="position: absolute; top: 11px; left: 77.7%; display: none; "><img src="imgs/header-shop-story-icon.png" style="width: 75px;"></a>
			<a href="partners_main" class="partners-icon" style="position: absolute; top: 11px; left: 70.4%; display: none; "><img src="imgs/header-about-partners-icon.png" style="width: 102px;"></a>
			<a href="menu" class="partners-icon" style="position: absolute; top: 11px; left: 77.7%; display: none; cursor: pointer; "><img src="imgs/header-htu-partners-icon.png" style="width: 76px;"></a>
		</div>
	<%if(category.equals("contact_us")){ %>
		<div class="jb-box">
      <video muted autoplay loop>
         <source src="video/contactus_vc.mp4" type="video/mp4">
         <strong>Your browser does not support the video tag.</strong>
      </video>
      <div class="jb-text1">
         <p>1:1문의</p>
      </div>
      <div class="jb-text2">
         <p>당신의 소리를<br/>
            잇따에게 들려주세요</p>
      </div>
   </div>
	<%} %>
	<%if(category.equals("partners")){ %>
		<div class="jb-box">
      <video muted autoplay loop>
         <source src="video/Partners_vc.mp4" type="video/mp4">
         <strong>Your browser does not support the video tag.</strong>
      </video>
      <div class="jb-text1">
         <p>잇따 파트너스</p>
      </div>
      <div class="jb-text2">
         <p>잇따가 있으면<br/>
            하루가 달라지니까</p>
      </div>
   </div>
	<%} %>
	<%if(category.equals("About_us")){ %>
		<div class="jb-box">
      <video muted autoplay loop>
         <source src="video/Aboutus_vc.mp4" type="video/mp4">
         <strong>Your browser does not support the video tag.</strong>
      </video>
      <div class="jb-text1">
         <p>서비스 소개</p>
      </div>
      <div class="jb-text2">
         <p>잇따가 없으면<br/>
            섭섭하니까 여기잇따</p>
      </div>
   </div>
	<%} %>
   <%
   if (category.equals("shop")) {
   %>
   <div class="jb-box">
      <video muted autoplay loop>
         <source src="video/shop_vc.mp4" type="video/mp4">
         <strong>Your browser does not support the video tag.</strong>
      </video>
      <div class="jb-text1">
         <p>가맹점 소개</p>
      </div>
      <div class="jb-text2">
         <p>잇따가 소상공인과</p>
         <h3>지역주민을 잇따</h3>
      </div>
   </div>
   <%
   }
   %>
   <%if(category.equals("ab")){ %>
		<div class="jb-box">
	<video muted autoplay loop>
	   <source src="video/aboutus_vc.mp4" type="video/mp4">
	   <strong>Your browser does not support the video tag.</strong>
	</video>
	<div class="jb-text1">
	   <p>서비스 소개</p>
	</div>
	<div class="jb-text2">
	   <p>잇따가 없으면<br/>
	      섭섭하니까 여기잇따</p>
	</div>
</div>
	<%} %>
	<%if(category.equals("re")){ %>
	<div class="jb-box">
	<video muted autoplay loop>
	   <source src="video/review_vc.mp4" type="video/mp4">
	   <strong>Your browser does not support the video tag.</strong>
	</video>
	<div class="jb-text1">
	   <p>서비스 리뷰</p>
	</div>
	<div class="jb-text2">
	   <p>당신의 경험을<br/>
	      잇따와 공유해주세요</p>
	</div>
</div>
	<%} %>
</header> 
<style>
header ul, header ul li { margin:0; padding:0; display:inline; }
header .category { font-size:18px; }
header .category li:not(:first-child) { padding-left:30px }
header .category li a:hover, header .category li a.active 
{ font-weight:bold; color:#0000cd; }
header ul li img {
	height: 17px;
}
#header-black ul li img {
	width: 124px;
	height: 9px;
}
.jb-box {
   width: 100%;
   height: 631px;
   overflow: hidden;
   margin: 0px auto;
   position: relative;
}

.jb-text1 {
   position: absolute;
   top: 55%;
   width: 100%;
}

.jb-text2 {
   position: absolute;
   top: 55%;
   width: 100%;
}

.jb-text1 p {
   margin-top: 20px;
   text-align: left;
   font-size: 30px;
   color: #ffd23e;
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 900;
   margin-left: 200px;
}

.jb-text2 p {
   margin-top: 65px;
   text-align: left;
   font-size: 48px;
   letter-spacing: -3.0px;
   color: #ffffff;
   margin-left: 200px;
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 900;
   
}
.jb-text2 h3 {
   margin-top: 65px;
   text-align: left;
   font-size: 48px;
   letter-spacing: -3.0px;
   color: #ffffff;
   margin-left: 200px;
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 900;
   margin-top: -60px;
}
video {
   width: 100%;
   
}
</style>   
<script>
$(".ABOUT-US").click(function(){
	$("#about_us").css("visibility", "visible");
	$("#header-yellow").css("display", "block");
	$(".aboutus-icon").css("display", "block");
})
$(".SHOP").click(function(){
	$("#shop").css("visibility", "visible");
	$("#header-yellow").css("display", "block");
	$(".shop-icon").css("display", "block");
})
$(".PARTNERS").click(function(){
	$("#partners").css("visibility", "visible");
	$("#header-yellow").css("display", "block");
	$(".partners-icon").css("display", "block");
})

$("html").click(function(e){
	if(!$(e.target).hasClass("ABOUT-US")) {
		$("#about_us").css("visibility", "hidden");
		$(".aboutus-icon").css("display", "none");
	}
	if(!$(e.target).hasClass("SHOP")){
		$("#shop").css("visibility", "hidden");
		$(".shop-icon").css("display", "none");
	}
	if(!$(e.target).hasClass("PARTNERS")){
		$("#partners").css("visibility", "hidden");
		$(".partners-icon").css("display", "none");
	}
	if(!$(e.target).hasClass("ABOUT-US") && !$(e.target).hasClass("SHOP") && !$(e.target).hasClass("PARTNERS"))
		$("#header-yellow").css("display", "none");
})

</script>


