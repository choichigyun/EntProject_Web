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

</style>
</head>
<body>
<div style="width:1903px;margin: 0 auto; margin-top: 150px; position: relative; height: 2000px;">
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
			<a href=""><span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900; position: absolute;top: 303px; left:68px; font-size: 27px;">Notice</span></a>
			<a href="about_us_howtouse"><span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900; position: absolute;top: 407px; left:68px; font-size: 27px;">How to use</span></a>
		</div>
<div style="margin: 0 auto; width: 1400px; box-sizing: border-box; position: absolute; top: 100px; left: 400px;">
<div style="position: relative;">
	<img src="imgs/notice_title.png" style="width: 19%; top: -26.5px; left: 0%; position: absolute;">
	<h3 style="font-weight: bold; font-stretch: normal; font-style: normal; line-height: normal;margin-left:20.5%; letter-spacing: -2.5px; text-align: left; font-size: 23px;">공지사항 전체 조회</h3>
<form id="contact_detail" method="post" action="list.ab">
	<input type="hidden" name="id">
	<input type='hidden' name='curPage' value='1'/>
	<input type="text" name="keyword" value="${page.keyword }" class="Searchbar" style="position: absolute; top:-34%; right:6%"/>
	<img onclick='$("#contact_detail").submit();' src="imgs/btn-search.png" style="width: 5%; position: absolute; right: 0%; top:-63%;">
</form>
</div>
<div style="background-color: #e5e5e5; height: 12px; margin-top: 2.5%; margin-bottom: 2.5%"></div>
<div style="position: absolute; width: 1500px; height: 1130px; top: 180px; left: 0px;">
	<table style="width:1400px; border-collapse: collapse;" id="about_table">
		<tr style="background-color: #ffd23e; height: 70px;">
			<th class="center" style="font-size: 23px; width: 140px;">번호</th>
			<th class="wpx80" style="font-size: 23px;">이름</th>
			<th style="font-size: 23px;">제목</th>
			<th class="wpx200" style="font-size: 23px;">작성일자</th>
		</tr>
		<c:forEach var="vo" items="${page.list }">
			<tr>
				<td class="center" style="font-size: 23px;">${vo.no }</td>
				<td class="center" style="font-size: 23px;">${vo.writer}</td>
				<td class="left" style="font-size: 23px; padding: 10px;"><a href="detail.ab?id=${vo.id}">${vo.title}</a></td>
				<td class="center" style="font-size: 23px;">${vo.writedate }</td>
				
			</tr>
		</c:forEach>
	
	</table>
	<img style="width: 1500px; height: 5px; " src="imgs/yellowsilsun2.png">
	<div style="position: absolute; height: 56px; width: 117.9px; margin-left: 1200px;">
		<a href="new.ab"><img src="imgs/btnWrite.png" style="width: 200px; position: absolute; right:-87px; top: 25px;"></a>
	</div>
	<div class='btnSet' style="margin-top: 31px; margin-left:58px; font-size: 25px;">
	<jsp:include page="/WEB-INF/views/include/page.jsp"/>
	</div>
</div>
</div>
</div>
</body>
</html>