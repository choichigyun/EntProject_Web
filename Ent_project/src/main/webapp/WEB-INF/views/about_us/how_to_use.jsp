<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="width:1903px;margin: 0 auto; margin-top: 150px; position: relative;">
		<div style="background-color: #efefef; width: 350px; height: 2105px; ">
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
		<div style="width: 443px; height: 23px; position: absolute; left: 442px; top: 113px; background-color: #ffd23e;"></div>
		<div style="position: absolute; top: 50px; left: 460px; font-size: 68px;"><span style="font-family: Montserrat, sans-serif; font-weight: 800;">How to use</span></div>
		<span style="font-family: 'Noto Sans KR', sans-serif;font-weight: bold; position: absolute;top: 91px;left: 897px;font-size: 28px;">사용방법</span>
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
				주변의 가게를 확인해보세요<br>가게가 없다면
				<span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900"> 버튼을 눌러<br>점포리스트</span>를 볼 수 있습니다<br>
				<div style="font-family: 'Noto Sans KR', sans-serif; position: absolute;top: 322px;left: 0px; font-size: 22px;">
				<span style="font-weight: 900; color: #feca50;">TIP</span><br>
				<span style="font-weight: 500;">카테고리 버튼을 클릭하면 해당 카테고리의<br>
				점포리스트로 빠른 이동이 가능합니다</span>
			</div>
			</div>
			<img src="imgs/yellowcircle-htu.png" style="position: absolute;top: 200px; left: 100px; width: 600px;">
			<img src="imgs/htu-line.png" style="position: absolute;top:338px; left: 0px; width: 559px;" >
			<img src="imgs/dotcircle.png" style="position: absolute;top:595px; left: 550px; width: 250px;">
			<img src="imgs/htu-usermain.png" style="position: absolute;top:143px; left: -72px;width: 823px;">
		</div>
		<div style="height: 2100px; position: relative;">
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
				<img src="imgs/htu-shoplist.png" style="position: absolute;top:133px; left: 781px;width: 775px;">
				<div style="font-family: 'Noto Sans KR', sans-serif; position: absolute;top: 600px;left: 130px; font-size: 22px;">
				<span style="font-weight: 900; color: #feca50;">TIP</span><br>
				<span style="font-weight: 500;">더 정확한 결과를 얻고 싶다면<br>
				검색창을 놓치지마세요!</span>
			</div>
			</div>
					<div style="position: absolute; width: 1553px; height: 955px; left:350px; top:955px;">
						<div style="background-color: #ffd23e; position: absolute; left: 823px; top: 173px; width: 79px; height: 62px;"></div>
			<span style="font-family: 'Montserrat', sans-serif; font-weight: bold; font-size: 100px; position: absolute; top: 135px;left:856px;">04</span>
			<div style="font-family: 'Noto Sans KR', sans-serif; font-weight: 500; position: absolute; top: 334px; left: 938px; font-size: 41px">
				점포리스트 상단의<br>
				<span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900">카테고리를 선택한 후 원하는 가게</span>를<br>
				찾아볼 수 있습니다.
				<div style="font-family: 'Noto Sans KR', sans-serif; position: absolute;top: 322px;left: 0px; font-size: 22px;">
				<span style="font-weight: 900; color: #feca50;">TIP</span><br>
				<span style="font-weight: 500;">가게가 마음에 들었다면 하트를 눌러<br>
				나만의 찜목록에 넣을 수 있습니다</span>
			</div>
			</div>
			<img src="imgs/yellowcircle-htu.png" style="position: absolute;top: 200px; left: 100px; width: 600px;">
			<img src="imgs/dotcircle.png" style="position: absolute;top:595px; left: 550px; width: 250px;">
			<img src="imgs/htu-shopdetail-2.png" style="position: absolute;top:353px; left: 55px;width: 377px;">
			<img src="imgs/htu-shopdetail.png" style="position: absolute;top:108px; left: 177px;width: 646px;">
		</div>
		</div>
	</div>
</body>
</html>