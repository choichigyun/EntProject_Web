<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
	<div style="width:1903px;margin: 0 auto; margin-top: 150px; position: relative;">
		<div style="background-color: #efefef; width: 350px; height: 2105px; ">
			<c:if test="${partners eq 'menu' }">
			<span style="position: absolute;top: 202px; left:32px; font-size: 23px;">▶</span>
			</c:if>
			<c:if test="${partners eq 'open_store' }">
			<span style="position: absolute;top: 307px; left:32px; font-size: 23px;">▶</span>
			</c:if>
			<a href="menu"><span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900; position: absolute;top: 199px; left:68px; font-size: 27px; cursor: pointer;">메뉴 등록하기</span></a>
			<a href="open_store"><span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900; position: absolute;top: 303px; left:68px; font-size: 27px;">잇따와 개점하기</span></a>
		</div>
		<div style="width: 507px; height: 23px; position: absolute; left: 409px; top: 113px; background-color: #ffd23e;"></div>
		<div style="position: absolute; top: 74px; left: 432px; font-size: 46px;"><span style="font-family: Montserrat, sans-serif; font-weight: 800;">How to use</span><span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900;">/ 메뉴 등록하기</span></div>
		<div style="position: absolute; width: 1553px; height: 955px; left:350px; top:195px;background-color: #efefef;">
			<div style="background-color: #ffd23e; position: absolute; left: 52px; top: 173px; width: 79px; height: 62px;"></div>
			<span style="font-family: 'Montserrat', sans-serif; font-weight: bold; font-size: 100px; position: absolute; top: 135px;left:86px;">01</span>
			<div style="font-family: 'Noto Sans KR', sans-serif; font-weight: 500; position: absolute; top: 334px; left: 135px; font-size: 41px">
				잇따 어플에 접속 후<br>
				<span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900">회원가입 및 로그인</span>을 합니다
			</div>
			<div style="font-family: 'Noto Sans KR', sans-serif; position: absolute;top: 600px;left: 130px; font-size: 22px;">
				<span style="font-weight: 900; color: #feca50;">TIP</span><br>
				<span style="font-weight: 500;">카카오 계정 사용자라면 소셜로그인을 통해<br>
				로그인이 가능합니다</span>
			</div>
			<img src="imgs/lines.png" style="position: absolute;top:561px; left: 700px; width: 259px;" >
			<img src="imgs/yellowcircle-htu.png" style="position: absolute;top: 100px; left: 800px; width: 600px;">
			<img src="imgs/htu-signup-b.png" style="position: absolute;top:256px; left: 908px;width: 611px;">
			<img src="imgs/htu-login.png" style="position: absolute;top:95px; left: 650px; width: 700px;">
		</div>
		<div style="position: absolute; width: 1553px; height: 955px; left:350px; top:1150px;">
						<div style="background-color: #ffd23e; position: absolute; left: 823px; top: 173px; width: 79px; height: 62px;"></div>
			<span style="font-family: 'Montserrat', sans-serif; font-weight: bold; font-size: 100px; position: absolute; top: 135px;left:856px;">02</span>
			<div style="font-family: 'Noto Sans KR', sans-serif; font-weight: 500; position: absolute; top: 334px; left: 938px; font-size: 41px">
				메인 화면
				<span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900"> 세 번째</span>에 있는<br>
				<span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900"> 점포 관리</span>를 누릅니다
			</div>
			<img src="imgs/yellowcircle-htu.png" style="position: absolute;top: 200px; left: 100px; width: 600px;">
			<img src="imgs/htu-line.png" style="position: absolute;top:338px; left: 0px; width: 559px;" >
			<img src="imgs/dotcircle.png" style="position: absolute;top:595px; left: 550px; width: 250px;">
			<img src="imgs/htu-b-main.png" style="position: absolute;top:125px; left: 45px;width: 751px;">
		</div>
		<div style="height: 2865px; position: relative;">
			<div style="position: absolute; width: 1553px; height: 955px; left:350px;background-color: #efefef;">
				<div style="background-color: #ffd23e; position: absolute; left: 52px; top: 173px; width: 79px; height: 62px;"></div>
				<span style="font-family: 'Montserrat', sans-serif; font-weight: bold; font-size: 100px; position: absolute; top: 135px;left:86px;">03</span>
				<div style="font-family: 'Noto Sans KR', sans-serif; font-weight: 500; position: absolute; top: 334px; left: 135px; font-size: 41px">
					점포 관리 메인 화면의<br>
					<span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900">첫번째</span>에 있는<br>
					<span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900">메뉴관리 버튼</span>을 누릅니다<br>
				</div>
				<img src="imgs/yellowcircle-htu.png" style="position: absolute;top: 100px; left: 800px; width: 600px;">
				<img src="imgs/htu-line-2.png" style="position: absolute;top:261px; left: 659px; width: 867px;" >
				<img src="imgs/htu-menu-m.png" style="position: absolute;top:140px; left: 855px;width: 511px;">
			</div>
					<div style="position: absolute; width: 1553px; height: 955px; left:350px; top:955px;">
						<div style="background-color: #ffd23e; position: absolute; left: 823px; top: 173px; width: 79px; height: 62px;"></div>
			<span style="font-family: 'Montserrat', sans-serif; font-weight: bold; font-size: 100px; position: absolute; top: 135px;left:856px;">04</span>
			<div style="font-family: 'Noto Sans KR', sans-serif; font-weight: 500; position: absolute; top: 334px; left: 938px; font-size: 41px">
				하단에 위치한한
				<span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900">+버튼</span>을 눌러<br>
				<span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900">메뉴 추가</span>를 할 수 있습니다
				<div style="font-family: 'Noto Sans KR', sans-serif; position: absolute;top: 322px;left: 0px; font-size: 22px;">
				<span style="font-weight: 900; color: #feca50;">TIP</span><br>
				<span style="font-weight: 500;">이미 있던 메뉴의 수정을 하려면<br>
				메뉴 칸의 수정 버튼을 누르면 됩니다</span>
			</div>
			</div>
			<img src="imgs/yellowcircle-htu.png" style="position: absolute;top: 200px; left: 100px; width: 600px;">
			<img src="imgs/htu-line.png" style="position: absolute;top:338px; left: 0px; width: 559px;" >
			<img src="imgs/dotcircle.png" style="position: absolute;top:595px; left: 550px; width: 250px;">
			<img src="imgs/htu-b-main.png" style="position: absolute;top:125px; left: 45px;width: 751px;">
		</div>
		<div style="position: absolute; width: 1553px; height: 955px; left:350px; top:1910px;background-color: #efefef;">
			<div style="background-color: #ffd23e; position: absolute; left: 52px; top: 173px; width: 79px; height: 62px;"></div>
			<span style="font-family: 'Montserrat', sans-serif; font-weight: bold; font-size: 100px; position: absolute; top: 135px;left:86px;">05</span>
			<div style="font-family: 'Noto Sans KR', sans-serif; font-weight: 500; position: absolute; top: 334px; left: 135px; font-size: 41px">
				메뉴의<br>
				<span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900">설명과 사진을 넣고<br>추가 버튼</span>을 누릅니다
			</div>
			<div style="font-family: 'Noto Sans KR', sans-serif; position: absolute;top: 600px;left: 130px; font-size: 22px;">
				<span style="font-weight: 900; color: #feca50;">TIP</span><br>
				<span style="font-weight: 500;">너무 긴 설명보다는<br>
				이해가 쉬운 간결한 문장이 더 효과적이에요</span>
			</div>
			<img src="imgs/yellowcircle-htu.png" style="position: absolute;top: 100px; left: 800px; width: 600px;">
			<img src="imgs/dot-tri.png" style="position: absolute;top:568px; left: 702px; width: 259px;" >
			<img src="imgs/htu-menuadd.png" style="position: absolute;top:120px; left: 902px;width: 470px;">
		</div>
		</div>
	</div>
</body>
</html>