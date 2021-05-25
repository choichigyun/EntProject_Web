<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<body>

<div style="margin: 0 auto; width: 1700px; padding: 195px; box-sizing: border-box;">
<div style="position: relative;">
	<img src="imgs/notice_title.png" style="width: 20%; top:-97.5%; left: 0%; position: absolute;" onclick="location.href='list.ab'">
	<h3 style="font-weight: bold; font-stretch: normal; font-style: normal; line-height: normal;margin-left:20.5%; letter-spacing: -2.5px; text-align: left; font-size: 23px;">공지사항 조회하기</h3>
</div>
<div style="background-color: #e5e5e5; height: 12px; margin-top: 2.5%; margin-bottom: 2.5%"></div>
	<form id="about_detail" method="post" action="modify.ab">
	<input type="hidden" name="id" value="${vo.id }" />
		<table style="width:100%; border-collapse: collapse;" id="aboutus_table">
			<tr style="background-color: #ffd23e; font-size: 20px;">
				<th class="wpx150 center">이름</th>
				<th class="center">제목</th>
				<th class="wpx150 center">작성일자</th>
			</tr>
			<tr style="font-size:20px;">
				<td class="center">${vo.writer }</td>
				<td class="center">${vo.title }</td>
				<td class="center">${vo.writedate }</td>
			</tr>
			<tr style="background-color: #ffd23e; font-size: 20px;">
				<th colspan="3">내용</th>
			</tr>
			<tr>
				<td colspan="3" style="font-size:20px; padding: 66px;" class="left">
					<div style="overflow: auto; height: 400px;">
						${fn:replace(vo.content, crlf, '<br>') }
					</div>
				</td>
			</tr>
			<tr>
				<th style="text-align: center; background-color: #ffd23e; border:3px solid #ffd23e; border-left: 0px; font-size: 20px;">사진</th>
				<td colspan="2" style="border-bottom: 3px solid #ffd23e; border-top: 3px solid #ffd23e;" class="left">
					<c:if test="${!empty vo.filename}">
						<span id='preview'></span>
					</c:if>
				</td>
			</tr>
			<tr style="border-bottom: 3px solid #ffd23e;">
			</tr>
		</table>
	</form>
	<div style="position: relative; width: 1310px; height:60px; margin: 40px 0px 40px 0px;" class="center" >
			<a href="list.ab"><img src="imgs/btnlistback.png" style="width: 200px;cursor:pointer; position: absolute; left:550px;"></a>
		<c:if test="${!empty admin }">
			<a onclick="$('#about_detail').attr('action', 'modify.ab');  $('#about_detail').submit()"><img src="imgs/btn-edit.png" style="width:200px; cursor:pointer; position: absolute; right:200px;"></a>
			<a onclick="go_delete()"><img src="imgs/btndelete.png" style="width:200px; cursor:pointer; float: inherit; position: absolute; right:0px;"></a>
		</c:if>
	</div>
</div>
<form method="post" action="list.ab" id="aboutlist">
	<input type='hidden' name='id' value='${vo.id}' />
	<input type='hidden' name='curPage' value='${page.curPage}' />
	<input type='hidden' name='search' value='${page.search}' />
	<input type='hidden' name='keyword' value='${page.keyword}' />
	<input type='hidden' name='pageList' value='${page.pageList}' />
	<input type='hidden' name='viewType' value='${page.viewType}' />
</form>
<script type="text/javascript" 
		src="js/file_attach.js?v=<%=new java.util.Date().getTime()%>"></script>
<script type="text/javascript">
if( ${!empty vo.filename} ){
	//첨부된 파일이 있고 이미지파일인 경우 미리보기
	if( isImage('${vo.filename}') ){
		var img = "<img id='preview-img' class='file-img' src='${vo.filepath}' style='padding: 30px 0px 30px 50px; width: 520px;' />";
		$('#preview').html(img);
	}
}

function go_delete(){
	if(confirm("삭제하시겠습니까?")){
		$('#about_detail').attr('action', 'delete.ab');  $('#about_detail').submit();
	}
}
</script>
</body>
</html>