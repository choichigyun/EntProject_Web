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
<div style="margin: 0 auto; width: 1900px; height:2110px; position: relative; margin-top: 100px;">
      <div style="background-color: #efefef; width: 350px; height: 2105px; position: absolute; ">
         <c:if test="${Aboutus eq 'About_us' }">
         <span style="position: absolute;top: 202px; left:32px; font-size: 23px;">▶</span>
         </c:if>
         <c:if test="${Aboutus eq 'Notice' }">
         <span style="position: absolute;top: 307px; left:32px; font-size: 23px;">▶</span>
         </c:if>
         <c:if test="${Aboutus eq 'How_to_use' }">
         <span style="position: absolute;top: 412px; left:32px; font-size: 23px;">▶</span>
         </c:if>
         <a href=""><span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900; position: absolute;top: 199px; left:68px; font-size: 27px; cursor: pointer;">About us</span></a>
         <a href="list.ab"><span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900; position: absolute;top: 303px; left:68px; font-size: 27px;">Notice</span></a>
         <a href="about_us_howtouse"><span style="font-family: 'Noto Sans KR', sans-serif; font-weight: 900; position: absolute;top: 407px; left:68px; font-size: 27px;">How to use</span></a>
      </div>
    <form action="update.ab" id="about_update" method="post" enctype="multipart/form-data">  
	    <input type="hidden" name="id" value="${vo.id }">
	    <input type="hidden" name="writer" value="${vo.writer }">
	    <div style=" width: 1540px; height:2110px; margin-left: 355px; ">
			<img src="imgs/notice_title.png" style="width: 200px; top: 80px; left: 402px; position: absolute;" onclick="location.href='list.ab'">
			<h3 style="width: 200px; height: 100px; position: absolute; margin-top: 98px; margin-left: 265px; font-size: 23px;">공지사항 작성</h3>
			<img style="width: 1500px; height: 15px; position: absolute; top: 160px; left: 400px; " src="imgs/graysilsun4.png">
			<img style="width: 1500px; height: 15px; position: absolute; top: 200px; left: 400px; " src="imgs/yellowsilsun2.png">
			<img style="width: 200px; height: 1000px; position: absolute; top: 215px; left: 400px; " src="imgs/yellowsilsun2.png">
			<img style="width: 1500px; height: 5px; position: absolute; top: 290px; left: 400px; " src="imgs/graysilsun4.png">
			<img style="width: 1500px; height: 5px; position: absolute; top: 1070px; left: 400px; " src="imgs/graysilsun4.png">
			<img style="width: 1500px; height: 15px; position: absolute; top: 1200px; left: 400px; " src="imgs/yellowsilsun2.png">
			<h3 style="position: absolute; margin-left: 120px; top: 200px; font-size: 25px;">제목</h3>
			<h3 style="position: absolute; margin-left: 120px; top: 650px; font-size: 25px;">내용</h3>
			<h3 style="position: absolute; margin-left: 102px; top: 1105px; font-size: 25px;">파일첨부</h3>
			<input type="text" name="title" style="position: absolute; top: 215px; left: 600px; font-size: 25px; padding: 20px; border: none;" value="${vo.title }">
			<textarea name="content" rows="32" cols="115" style="position: absolute; top: 295px; left: 600px; border: none; padding: 20px; font-size: 20px;">${vo.content }</textarea>
			<label>
	        	<input type="file" name="file" id='attach-file' accept="image/gif, image/jpeg, image/png" style="position: absolute; top: 1125px; left: 640px; cursor: pointer; display:none;" />
	        	<img src='imgs/btnfile.png' class='file-img' style="position: absolute; top: 1110px; left: 630px; width: 200px; cursor: pointer;" />
	        </label>
	        <div style="position: absolute; top: 1130px; left: 830px;">
	        	<input type="hidden" id="file-name">
				<span id='preview' style="width:100px;">${vo.filename }</span>
				<span id='delete-file' style='color:red; margin-left:20px; display: none;'><i class='fas fa-times'></i></span>
	        </div>
		</div>
	</form>
	<a onclick="go_update()"><img src="imgs/btn-edit.png" style="position: absolute; top: 1250px; left: 840px; width: 250px; cursor: pointer;"></a>
	<a href="list.ab"><img src="imgs/btncancel.png" style="position: absolute; top: 1250px; right: 340px; width: 250px;"></a>
</div> 
<script type="text/javascript" src="js/empty_check.js"></script>
<script type="text/javascript" src="js/file_attach.js?v="<%=new java.util.Date().getTime() %>></script>
<script type="text/javascript">
if( ${!empty vo.filename} ){
	$('#delete-file').css('display', 'inline');
	if( isImage('${vo.filename}') ){
		var img = "<img id='preview-img' class='file-img' src='${vo.filepath}' style='padding: 10px; width: 65px;' />";
		$('#preview').html(img);
	}
}

function go_update(){
	if(confirm("수정하시겠습니까?")){
		$('#about_update').attr('action', 'update.ab');  $('#about_update').submit();
	}
}
</script>
</body>
</html>