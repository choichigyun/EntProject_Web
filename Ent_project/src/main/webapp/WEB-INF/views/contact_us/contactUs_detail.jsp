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
	<img src="imgs/contactus-yellow.png" style="width: 20%; top:19.5%; left: 0%; position: absolute;">
	<img src="imgs/contact-us.png" style="width: 18%; top: -11.5px; left: 1%; position: absolute;">
	<h3 style="font-weight: bold; font-stretch: normal; font-style: normal; line-height: normal;margin-left:20.5%; letter-spacing: -2.5px; text-align: left; font-size: 23px;">1:1 문의 조회</h3>
</div>
<div style="background-color: #e5e5e5; height: 12px; margin-top: 2.5%; margin-bottom: 2.5%"></div>
<div>
	<table style="width:100%; border-collapse: collapse;" id="contactus_table">
		<tr style="background-color: #ffd23e; font-size: 20px;">
			<th class="wpx150 center">유저유형</th>
			<th class="wpx150 center">이름</th>
			<th class="center">제목</th>
			<th class="wpx150 center">작성일자</th>
		</tr>
		<tr style="font-size:20px;">
			<td class="center">${vo.type }</td>
			<td class="center">${vo.web_name }</td>
			<td>${vo.web_title }</td>
			<td class="center">${vo.web_date }</td>
		</tr>
		<tr style="background-color: #ffd23e; font-size: 20px;">
			<th colspan="4">문의내용</th>
		</tr>
		<tr>
			<td colspan="4" style="font-size:20px; padding: 66px;" class="left">
				<div style="overflow: auto; height: 400px;">
					${fn:replace(vo.web_content, crlf, '<br>') }
				</div>
			</td>
		</tr>
		<tr>
			<th style="text-align: center; background-color: #ffd23e; border:3px solid #ffd23e; border-left: 0px; font-size: 20px;">사진</th>
			<td colspan="3" style="border-bottom: 3px solid #ffd23e; border-top: 3px solid #ffd23e;" class="left">
				<c:if test="${!empty vo.filename}">
					<span id='preview'></span>
				</c:if>
			</td>
		</tr>
		<tr style="border-bottom: 3px solid #ffd23e;">
			<td colspan="4">
				<div style="position: relative; width: 1310px; height:60px; margin: 40px 0px 40px 0px;" class="center" >
					<a onclick="$('form').attr('action', 'contact_modify');  $('#form').submit()"><img src="imgs/btn-edit.png" style="width:12%;cursor:pointer; position: absolute; left:478px;"></a>
					<a onclick="if( confirm('정말 삭제하시겠습니까?') ) { $('#form').attr('action', 'contact_delete');  $('#form').submit() }"><img src="imgs/btndelete.png" style="width:12%;cursor:pointer;float: inherit;position: absolute; right:478px;"></a>
					<c:if test="${empty vo.admin_content }">
					<c:if test="${!empty admin }">
					<a onclick="admin_reply_show();"><img src="imgs/btnreply.png" style="width:12%;cursor:pointer;float: right;"></a>
					</c:if>
					</c:if>
				</div>
			</td>
		</tr>
		
	</table>
</div>
</div>
<form action="admin_reply_insert" method="post" id="admin_reply_insert">
	<input type='hidden' name='id' value='${vo.id}' />
<div  id="admin_reply" style="position: relative; width: 1310px; box-sizing: border-box; margin: 0px auto; display: none; text-align: center;">
	<img src="imgs/reply-icon.png" style="position: absolute; width: 2.8%; left: 10%; top: -3%;">
	<div style="font-size: 30px; position: absolute; left: 16%;"><span style="font-weight: bold;">잇따 매니저</span><span>님의 답변</span></div>
	<textarea id="admin_content" name="admin_content" style="background-color: #efefef; border: 0px; border-radius: 7px; height: 240px; width: 65.45%; padding:30px; margin-top:4%; font-size:20px;"></textarea>
	<div style="width: 72%; margin:20px 0px 20px 500px;">
	<a onclick="admin_reply_insert()"><img src="imgs/btnsubmit.png" style="width:16.66%; cursor: pointer;"></a>
	<a onclick="admin_reply_hidden()"><img src="imgs/btncancel.png" style="cursor:pointer;width:16.66%;"></a>
	</div>
</div>
</form>
	<c:if test="${!empty vo.admin_content}">
<div id="admin_reply_show" style="position: relative; width: 1310px; box-sizing: border-box; margin: 0 auto; text-align: center;">
	<img src="imgs/reply-icon.png" style="position: absolute; width: 2.8%; left: 10%; top: -3%;">
	<div style="font-size: 30px; position: absolute; left: 16%;"><span style="font-weight: bold;">잇따 매니저</span><span>님의 답변</span></div>
	<span style="overflow: auto;display:inline-block; box-sizing:border-box; text-align:left; background-color: #efefef; border: 0px; border-radius: 7px; height: 300px; width: 70%; padding:60px; margin-top:4%; font-size:20px;">
	${fn:replace(vo.admin_content, crlf, '<br/>') }
<%-- 	${vo.admin_content } --%>
	</span>
	<div style="width: 72%; margin:20px 0px 20px 500px;">
	<c:if test="${!empty admin }">
	<a onclick="admin_reply_update()"><img src="imgs/btn-edit.png" style="width:16.66%; cursor: pointer;"></a>
	<a onclick="admin_reply_delete()"><img src="imgs/btndelete.png" style="cursor:pointer;width:16.66%;"></a>
	</c:if>
	</div>
</div>
	</c:if>
<form method="post" action="contact_us" id="form">
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
		var img = "<img id='preview-img' class='file-img' src='${vo.filepath}' style='padding: 30px 0px 30px 50px; width:400px;' />";
		$('#preview').html(img);
	}
}
function admin_reply_show(){
	$("#admin_reply").css('display', "block");
}
function admin_reply_hidden(){
	$("#admin_reply").css('display', 'none');
	$("#admin_reply_show").css("display", "block");
}
function admin_reply_insert(){
	$("#admin_reply_insert").submit();
}
function admin_reply_update(){
 	$("#admin_reply_show").css("display", "none");
 	$("#admin_reply").css('display', 'block');
 	$("#admin_content").val( $.trim($('#admin_reply_show').children('span').html()).replace(/<br>/g, '\n') );
}
function admin_reply_delete(){
	if(confirm("삭제하시겠습니까?")){
	$("#form").attr("action", "admin_reply_delete");
	$("#form").submit();
	}
}

</script>

</body>
</html>