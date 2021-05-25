<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="margin: 0 auto; width: 1700px; padding: 195px; box-sizing: border-box;">
<div style="position: relative;">
	<img src="imgs/contactus-yellow.png" style="width: 20%; top:19.5%; left: 0%; position: absolute;">
	<img src="imgs/contact-us.png" style="width: 18%; top: -11.5px; left: 1%; position: absolute;">
	<h3 style="font-weight: bold; font-stretch: normal; font-style: normal; line-height: normal;margin-left:20.5%; letter-spacing: -2.5px; text-align: left; font-size: 23px;">1:1 문의 등록하기</h3>
</div>
<div style="background-color: #e5e5e5; height: 12px; margin-top: 2.5%; margin-bottom: 2.5%"></div>
	<div style="position: relative; width: 100%;">
	<img style="width: 100%; position: relative;" src="imgs/rectangle-1.png">
	<img style="width: 1%" src="imgs/rectangle-3.png">
		<form id="contact_insert" action="contact_insert" method="post" enctype="multipart/form-data">
		    <select id="userType" name="type" style="position: absolute; left: 19%; top: 5.6%; border: 0px; width: 11%; height: 4%; font-size: 21px; font-weight: bold; text-align-last: center;">
	            <option value="일반" selected="selected">일반</option>
	            <option value="사업자">사업자</option>
	        </select>
	        
	        <img src="imgs/rectangle-3.png" style="position: absolute; left: 6%; top: 8%; width: 9%;">
	        <img src="imgs/rectangle-3.png" style="position: absolute; left: 6%; top: 15%; width: 9%;">
	        <img src="imgs/rectangle-3.png" style="position: absolute; left: 6%; top: 23%; width: 9%;">
	        <img src="imgs/rectangle-3.png" style="position: absolute; left: 6%; top: 31%; width: 9%;">
	        <img src="imgs/rectangle-3.png" style="position: absolute; left: 6%; top: 78%; width: 9%;">
	        <img src="imgs/user_type.png" style="position: absolute; left: 7%; top: 6.3%; width: 7%;">
	        <img src="imgs/name.png" style="position: absolute; left: 8.5%; top: 13.4%; width: 3.524%;">
	        <img src="imgs/title.png" style="position: absolute; left: 8.5%; top: 21.3%; width: 3.648%;">
	        <img src="imgs/contact_content.png" style="position: absolute; left: 7%; top: 29.3%; width: 7.123%;">
	        <img src="imgs/contact_pic.png" style="position: absolute; left: 7%; top: 66.3%; width: 7.232%;">
	        <img src="imgs/contact_pw.png" style="position: absolute; left: 7%; top: 76.3%; width: 7.14%;">
	        
	        <input type="text" name="web_name" class="need" title="이름" style="padding-left: 10px;position: absolute; top: 12.5%; left: 19%; border: 0px; width:16%; height: 3.802%; font-size: 21px; border-radius: 10px;" />
	        <input type="text" name="web_title" class="need" title="제목" style="padding-left: 10px;position: absolute; top: 20.5%; left: 19%; border: 0px; width:74%; height: 3.802%; font-size: 21px; border-radius: 10px;" />
	        
	        <textarea name="web_content" class="need" title="내용" style="padding-left: 10px;position: absolute; top: 28.5%; left: 19%; border: 0px; width:74%; height: 31.802%; font-size: 21px; border-radius: 10px;"></textarea>
	        
	        <label>
	        	<input type="file" name="file" id='attach-file' style="position: absolute; top: 65%; left: 19%; width:74%; display:none; cursor:pointer;" />
	        	<img src='imgs/btnfile.png' class='file-img' style="position: absolute; top: 65%; left: 19%; width:11.5%; cursor: pointer;" />
	        </label>
	        <div style="position: absolute;top: 66.5%; left: 30%;">
	        <span id='file-name'></span>
			<span id='preview' style="width:40px;"></span>
			<span id='delete-file' style='color:red; display: none;'><i class='fas fa-times'></i></span>
	        </div>
	        <input type="text" name="web_pw" title="비밀번호" class="need" style="padding-left: 10px;position: absolute; top: 75.5%; left: 19%; border: 0px; width:16%; height: 3.802%; font-size: 21px; border-radius: 10px;" />
		</form>
	</div>
	<div style="position: relative; width: 100%;">
		<a onclick="if( necessary() ) { $('#contact_insert').submit()}"><img src="imgs/btnsubmit.png" style="position: absolute; left: 38%; top: 76.3%; width: 12%; cursor:pointer;"></a>
		<a href="contact_us"><img src="imgs/btncancel.png" style="position: absolute; left: 53%; top: 76.3%; width: 12%;"></a>
	</div>
</div>	

	
<script type="text/javascript" src="js/empty_check.js"></script>
<script type="text/javascript" src="js/file_attach.js?v="<%=new java.util.Date().getTime() %>></script>
</body>
</html>