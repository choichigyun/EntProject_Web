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
th{
padding: 10px;
}
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
	<img src="imgs/review_new.png" style="width: 18%; top: -26.5px; left: 1.5%; position: absolute;">
	<h3 style="font-weight: bold; font-stretch: normal; font-style: normal; line-height: normal;margin-left:20.5%; letter-spacing: -2.5px; text-align: left; font-size: 23px;">전체 리뷰 조회</h3>
<form id="contact_detail" method="post" action="list.re">
	<input type="hidden" name="id">
	<input type='hidden' name='curPage' value='1'/>
	<input type="text" name="keyword" value="${page.keyword }" class="Searchbar" style="position: absolute; top:-34%; right:6%"/>
	<img onclick='$("#review_detail").submit();' src="imgs/btn-search.png" style="width: 5%; position: absolute; right: 0%; top:-63%;">
</form>
</div>
<div style="background-color: #e5e5e5; height: 12px; margin-top: 2.5%; margin-bottom: 2.5%"></div>
<div>
	<table style="width:100%; border-collapse: collapse;" id="review_table">
		<tr style="background-color: #ffd23e;">
			<th class="wpx60">번호</th>
			<th class="wpx80">유저유형</th>
			<th class="wpx100">이름</th>
			<th>제목</th>
			<th class="wpx200">작성일자</th>
			<th class="wpx60">평점</th>
		</tr>
		<c:forEach var="vo" items="${page.list }">
			<tr>
				<td class="center">${vo.no }</td>
				<td class="center">${vo.type }</td>
				<td class="center">${vo.writer}</td>
				<td class="left"><a href="detail.re?id=${vo.id}">${vo.title}</a></td>
				<td class="center">${vo.writedate }</td>
				<td class="center">${vo.rating }</td>
			</tr>
		</c:forEach>
		
	</table>
	<div style="position: absolute; height: 56px; width: 117.9px; margin-left: 1200px;">
		<a href="new.re"><img src="imgs/btnWrite.png" style="width: 100%; position: absolute; bottom: 1%;"></a>
	</div>
	<div class='btnSet' style="margin-top: 22px; padding-left: 15px;">
	<jsp:include page="/WEB-INF/views/include/page.jsp"/>
	</div>
</div>
</div>
</body>
</html>