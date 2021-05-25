<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
tr{
padding:10px;
font-size: 19px;
}
td {
padding: 10px;
font-size:19px;
}
</style>
</head>
<body>

<div style="margin: 0 auto; width: 1700px; padding: 195px; box-sizing: border-box;">
<div style="position: relative;">
	<img src="imgs/contactus-yellow.png" style="width: 20%; top:19.5%; left: 0%; position: absolute;">
	<img src="imgs/contact-us.png" style="width: 18%; top: -11.5px; left: 1%; position: absolute;">
	<h3 style="font-weight: bold; font-stretch: normal; font-style: normal; line-height: normal;margin-left:20.5%; letter-spacing: -2.5px; text-align: left; font-size: 23px;">전체 문의 조회</h3>
<form id="contact_detail" method="post" action="contact_us">
	<input type="hidden" name="id">
	<input type='hidden' name='curPage' value='1'/>
	<input type="text" name="keyword" value="${page.keyword }" class="Searchbar" style="position: absolute; top:-34%; right:6%"/>
	<img onclick='$("#contact_detail").submit();' src="imgs/btn-search.png" style="width: 5%; position: absolute; right: 0%; top:-63%;">
</form>
</div>
<div style="background-color: #e5e5e5; height: 12px; margin-top: 2.5%; margin-bottom: 2.5%"></div>
<div>
	<table style="width:100%; border-collapse: collapse;" id="contactus_table">
		<tr style="background-color: #ffd23e;">
			<th class="wpx60">번호</th>
			<th class="wpx80">유저유형</th>
			<th class="wpx40">이름</th>
			<th>제목</th>
			<th class="wpx80">작성일자</th>
		</tr>
		<c:forEach var="vo" items="${page.list }">
			<tr>
				<td class="center">${vo.no }</td>
				<td class="center">${vo.type }</td>
				<td class="center">${fn:substring(vo.web_name, 0, 1)}**</td>
				<td class="left"><a onclick="go_pw('${vo.id}', '${vo.web_pw }')">${vo.web_title }</a></td>
				<td class="center">${vo.web_date }</td>
			</tr>
		</c:forEach>
		
	</table>
	<div style="position: absolute; height: 56px; width: 117.9px; margin-left: 1200px;">
		<a href="write"><img src="imgs/btnWrite.png" style="width: 100%; position: absolute; bottom: 1%;"></a>
	</div>
	<div class='btnSet' style="margin-top: 22px; padding-left: 45px;">
	<jsp:include page="/WEB-INF/views/include/page.jsp"/>
	</div>
</div>
</div>
<div id="popup-background" onclick="$('#pwCheck_screen, #popup-background').css('display', 'none')"></div>
<div style="width: 300px; display: none;" id="pwCheck_screen">
		<div style="width:300px;position: fixed; top: 50%; left: 50%; transform:translate(-50%, -50%);">
		<img src="imgs/popup-bg.png" style="width: 300px;position: fixed; top: 50%; left: 50%; transform:translate(-50%, -50%);">
		<img src="imgs/padlock.png" style="width: 30px;position: fixed; top: -89px; left: 50%; transform:translate(-50%, -50%);">
		<div style="position: fixed;width:56%; top: -46px; left: 50%; transform:translate(-50%, -50%);"><span style="font-family: 'Noto Sans KR', sans-serif; font-weight:900;">비밀번호</span><span style="font-family: 'Noto Sans KR', sans-serif;">를 입력해주세요</span></div>
		<input onkeypress="enterPress(event);" id="pwCheck" type="password" style="font-family:'Noto Sans KR', sans-serif;border-radius:15px; background-color: #ffdf74;border: 1px solid #272727; width:185px; position: fixed; top:-2px; left: 50%; transform:translate(-50%, -50%); padding-left: 10px;">
		<input id="pwCheck_button" type="button" onclick="go_detail();" value="확인" style="font-family: 'Noto Sans KR', sans-serif;position: fixed; top: 73px; left: 50%; transform:translate(-50%, -50%); background-color: #272727; color: white; padding:4px 30px 4px 30px;box-shadow: 8px 8px 12px 0 rgba(15, 41, 107, 0.3); border-radius: 5px; border: 0px; cursor:pointer;">
		<img src="imgs/popup-logo.png" style="width:44px;position: fixed; top: 128px; left: 50%; transform:translate(-50%, -50%);">
		</div>
</div>
<script type="text/javascript">
var pw_input = "";
var board_id = "";
function go_pw(id, pw){
	if(${!empty admin}){
		$('[name=id]').val(id);
		$('#contact_detail').attr('action', 'contact_detail');
		$('#contact_detail').submit();
	}else{
	$("#popup-background").css("display", "block");
	$("#pwCheck_screen").css("display", "block");
	pw_input = pw;
	board_id = id;
	}
}
function enterPress(event){
	if(event.keyCode == 13){
		go_detail();
	}	
}
function go_detail(){
	var pwCheck = $("#pwCheck").val();
	if(pwCheck != ""){
		if(pwCheck == pw_input){
				$('[name=id]').val(board_id);
				$("#pwCheck").val("");
				$('#contact_detail').attr('action', 'contact_detail');
				$('#contact_detail').submit();
		}else{
			$("#pwCheck").val("");
			alert("비밀번호가 틀렸습니다.")
			return false;
		}
	}else{
		$("#pwCheck").val("");
		alert("비밀번호를 입력해주세요")
	}
}
function search(){
	$('#contact_detail').submit();
}
</script>
</body>
</html>