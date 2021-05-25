<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<footer style='margin:0 auto; width: 1903px; font-size:14px;border-top:1px solid #ccc; background-color: #1C1C1C; position: relative; text-align: center; '>
	<div>
		<img style="width: 100%" src="imgs/footer-banner.png">
		<a href='https://play.google.com/store/?pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'>
			<img style="width: 17%; margin-top: -17%; margin-left: -53%;" alt='다운로드하기 Google Play' src='https://play.google.com/intl/ko/badges/static/images/badges/ko_badge_web_generic.png'/><!-- <img style="width: 17%; margin-top: -17%; margin-left: -53%;" src="imgs/google-play-badge.png"> -->
		</a>
		<a onclick="$('html').animate({scrollTop : 0}, 400);"><img src="imgs/btn-top.png" style="position: absolute; top: 392px; right: 34px;  width: 122px; cursor:pointer;"></a>
	</div>
	<div style="width: 100%; padding: 10% 0;" id="footer">
		<img style="width:12%; left: 14.5%; bottom:18%; position:absolute;" src="imgs/footer-logo.png">
		<img style="width:7%; left: 34%; bottom:26%; position:absolute;" src="imgs/about-us_white.png">
		<img style="width:6.7%; left: 34%; top:78%; position:absolute;" src="imgs/about-us-notice-how-to-use.png" usemap="#image-map">
			<map name="image-map">
			    <area target="_self" alt="about_us" title="about_us" href="about_us" coords="0,0,201,26.5"  >
			    <area target="_self" alt="notice" title="notice" href="list.ab" coords="2,27.5,147,53" >
			    <area target="_self" alt="about_us_howtouse" title="about_us_howtouse" href="about_us_howtouse" coords="2,54,201,79.5" >
			</map>
		<img style="width:3.873%; left: 45%; bottom:26%; position:absolute;" src="imgs/shop-white.png">
		<img style="width:6.2%; left: 44%; top:78%; position:absolute;" src="imgs/shop-list-shop-story.png" usemap="#shop">
      	<map name="shop">
             <area target="_self" alt="샵 리스트" title="샵리스트" href="shop_main" coords="0,0,117.98,26.59" shape="rect" >
             <area target="_self" alt="샵 스토리" title="샵스토리" href="shop_story" coords="0,27.59,117.98,53.18" shape="rect">
         </map>
		<img style="width:7.07%; left: 54%; bottom:26%; position:absolute;" src="imgs/partners-white.png">
		<img style="width:9%; left: 54%; top:78%; position:absolute;" src="imgs/about-partners-how-to-use.png" usemap="#partners">
		<map name="partners">
			    <area target="_self" alt="partners_main" title="partners_main" href="partners_main" coords="0, 0, 171.25, 24.28" shape="rect" >
			    <area target="_self" alt="menu" title="menu" href="menu" coords="0,25.28, 171.25, 48.56" shape="rect">
			</map>
		<a href="list.re"><img style="width:5.66%; left: 66%; bottom:26%; position:absolute;" src="imgs/review-white.png"></a>
		<a href="contact_us" style="cursor: pointer;"><img style="width: 8.51%; position:absolute; bottom:26%; left: 77%;" src="imgs/contact-us-white.png"></a>
		<c:if test="${empty admin }">
		<a onclick="admin_login_show();"><img style="width:7%; left: 77%; top:79%; position:absolute; cursor: pointer;" src="imgs/admin_login.png"></a>
		</c:if>
		<form action="admin_login" id="admin_login" method="post">
		<div id="admin-popup-background" style="top:-6162px;" onclick="$('#admin_login_screen, #admin-popup-background').css('display', 'none')"></div>
		<div style="width: 300px; display:none;" id="admin_login_screen">
		<div style="width:300px;position: fixed; top: 50%; left: 50%; transform:translate(-50%, -50%);">
		<img src="imgs/popup-bg.png" style="width: 300px;position: fixed; top: 50%; left: 50%; transform:translate(-50%, -50%);">
		<span style="font-size:18px;font-family: 'Montserrat', sans-serif;font-weight:700; position: fixed; top:-100px; left: 50%; transform:translate(-50%, -50%);">Admin</span>
		<div style="position: fixed;width:56%; top: -76px; left: 50%; transform:translate(-50%, -50%);"><span style="font-family: 'Montserrat', sans-serif;font-size:40px; font-weight:bold;">LogIn</span></div>
		<input onkeypress="admin_enterPress(event);" title="아이디" class="" id="admin_idCheck" type="text" style="border-radius:15px; background-color: #ffdf74;border: 1px solid #272727; width:185px; position: fixed; top:-16px; left: 50%; transform:translate(-50%, -50%); padding-left: 10px;font-family:'Noto Sans KR', sans-serif;" placeholder="ID">
		<input onkeypress="admin_enterPress(event);" title="비밀번호" class="" id="admin_pwCheck" type="password" style="font-family:'Noto Sans KR', sans-serif;border-radius:15px; background-color: #ffdf74;border: 1px solid #272727; width:185px; position: fixed; top:21px; left: 50%; transform:translate(-50%, -50%); padding-left: 10px;" placeholder="PW">
		<input id="admin_login_button" type="button" onclick="admin_login();" value="Login" style="font-family: 'Montserrat', sans-serif;;position: fixed; top: 73px; left: 50%; transform:translate(-50%, -50%); background-color: #272727; color: white; padding:4px 30px 4px 30px;box-shadow: 8px 8px 12px 0 rgba(15, 41, 107, 0.3); border-radius: 5px; border: 0px; cursor:pointer;">
		<img src="imgs/popup-logo.png" style="width:44px;position: fixed; top: 128px; left: 50%; transform:translate(-50%, -50%);">
		</div>
		</div>
		</form>
	</div>
</footer>
<script type="text/javascript" 
	src="js/admin_login.js?v=<%=new java.util.Date().getTime()%>"></script>