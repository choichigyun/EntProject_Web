<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.rating_select .rate_radio {
    position: relative;
    display: inline-block;
    z-index: 20;
    opacity: 0.001;
    width: 60px;
    height: 60px;
    background-color: #fff;
    cursor: pointer;
    vertical-align: top;
    display: none;
}
.rating_select .rate_radio + label {
    position: relative;
    display: inline-block;
    margin-top: 1px;
    margin-left: 4px;
    z-index: 10;
    width: 60px;
    height: 60px;
    background-image: url('./imgs/blankstar.png');
    background-repeat: no-repeat;
    background-size: 60px 60px;
    cursor: pointer;
    background-color: white;
}
.rating_select .rate_radio:checked + label {
    background-image: url('./imgs/star.png');
}

</style>
</head>
<body>
<div style="margin: 0 auto; width: 1700px; padding: 195px; box-sizing: border-box;">
<div style="position: relative;">
	<img src="imgs/contactus-yellow.png" style="width: 20%; top:19.5%; left: 0%; position: absolute;">
	<img src="imgs/review_new.png" style="width: 18%; top: -33.5px; left: 1%; position: absolute;" onclick="location.href='list.re'">
	<h3 style="font-weight: bold; font-stretch: normal; font-style: normal; line-height: normal;margin-left:20.5%; letter-spacing: -2.5px; text-align: left; font-size: 23px;">리뷰 작성하기</h3>
</div>
<div style="background-color: #e5e5e5; height: 12px; margin-top: 2.5%; margin-bottom: 2.5%"></div>
	<div style="position: relative; width: 100%;">
	<img style="width: 100%; position: relative;" src="imgs/rectangle-1.png">
	<img style="width: 1%" src="imgs/rectangle-3.png">
		<form id="review_insert" action="insert.re" method="post" enctype="multipart/form-data">
		    <select id="userType" name="type" style="position: absolute; left: 19%; top: 5.6%; border: 0px; width: 11%; height: 4%; font-size: 21px; font-weight: bold; text-align-last: center;">
	            <option value="일반" selected="selected">일반</option>
	            <option value="소셜">소셜</option>
	        </select>
	        
	        <img src="imgs/rectangle-3.png" style="position: absolute; left: 6%; top: 8%; width: 9%;">
	        <img src="imgs/rectangle-3.png" style="position: absolute; left: 6%; top: 15%; width: 9%;">
	        <img src="imgs/rectangle-3.png" style="position: absolute; left: 6%; top: 23%; width: 9%;">
	        <img src="imgs/rectangle-3.png" style="position: absolute; left: 6%; top: 31%; width: 9%;">
	        <img src="imgs/rectangle-3.png" style="position: absolute; left: 6%; top: 78%; width: 9%;">
	        <img src="imgs/rectangle-3.png" style="position: absolute; left: 6%; top: 88%; width: 9%;">
	        <img src="imgs/user_type.png" style="position: absolute; left: 7%; top: 6.3%; width: 7%;">
	        <img src="imgs/name.png" style="position: absolute; left: 8.5%; top: 13.4%; width: 3.524%;">
	        <img src="imgs/title.png" style="position: absolute; left: 8.5%; top: 21.3%; width: 3.648%;">
	        <img src="imgs/contact_content.png" style="position: absolute; left: 7%; top: 29.3%; width: 7.123%;">
	        <img src="imgs/contact_pic.png" style="position: absolute; left: 7%; top: 66.3%; width: 7.232%;">
	        <img src="imgs/rating.png" style="position: absolute; left: 8.5%; top: 76%; width: 3.648%;">
	        <img src="imgs/contact_pw.png" style="position: absolute; left: 7%; top: 86.5%; width: 7.14%;">
	        
	        <input type="text" name="writer" class="need" title="이름" style="padding-left: 10px;position: absolute; top: 12.5%; left: 19%; border: 0px; width:16%; height: 3.802%; font-size: 21px; border-radius: 10px;" />
	        <input type="text" name="title" class="need" title="제목" style="padding-left: 10px;position: absolute; top: 20.5%; left: 19%; border: 0px; width:74%; height: 3.802%; font-size: 21px; border-radius: 10px;" />
	        
	        <textarea name="content" class="need" title="내용" style="padding-left: 10px;position: absolute; top: 28.5%; left: 19%; border: 0px; width:74%; height: 31.802%; font-size: 21px; border-radius: 10px;"></textarea>
	        
	        <label>
	        	<input type="file" name="file" id='attach-file' accept="image/gif, image/jpeg, image/png" style="position: absolute; top: 65%; left: 19%; width:74%; display:none; cursor:pointer;" />
	        	<img src='imgs/btnfile.png' class='file-img' style="position: absolute; top: 65%; left: 19%; width:11.5%; cursor: pointer;" />
	        </label>
	        <div style="position: absolute; top: 64.5%; left: 30%;">
	        	<input type="hidden" id="file-name">
				<span id='preview' style="width:40px;"></span>
				<span id='delete-file' style='color:red; display: none;'><i class='fas fa-times'></i></span>
	        </div>
	        
			<div class="review_rating" style="position: absolute; top: 75%; left: 19%; border: 0px; width:26.2%; height: 7%; font-size: 21px; background-color: white; border-radius: 10px;">
	           <div class="rating_select">
				<input type="checkbox" name="star" id="rating1" value="1" 
					class="rate_radio" title="1점"/>
				<label for="rating1"></label>
				<input type="checkbox" name="star" id="rating2" value="2" 
					class="rate_radio" title="2점"/>
				<label for="rating2"></label>
				<input type="checkbox" name="star" id="rating3" value="3" 
					class="rate_radio" title="3점"/>
				<label for="rating3"></label>
				<input type="checkbox" name="star" id="rating4" value="4" 
					class="rate_radio" title="4점"/>
				<label for="rating4"></label>
				<input type="checkbox" name="star" id="rating5" value="5" 
					class="rate_radio" title="5점"/>
				<label for="rating5"></label>
				<input type='hidden' name="rating">
			</div>
        	</div>
	        <input type="text" name="password" title="비밀번호" class="need" style="padding-left: 10px; position: absolute; top: 86%; left: 19%; border: 0px; width:16%; height: 3.802%; font-size: 21px; border-radius: 10px;" />
		</form>
	</div>
	<div style="position: relative; width: 100%;">
		<a onclick="if( necessary() ) { $('#review_insert').submit()}"><img src="imgs/btnsubmit.png" style="position: absolute; left: 38%; top: 94.3%; width: 12%; cursor:pointer;"></a>
		<a href="list.re"><img src="imgs/btncancel.png" style="position: absolute; left: 53%; top: 94.3%; width: 12%;"></a>
	</div>
</div>	

	
<script type="text/javascript" src="js/empty_check.js"></script>
<script type="text/javascript" src="js/file_attach.js?v="<%=new java.util.Date().getTime() %>></script>
<script type="text/javascript">
$(function() {
	function Rating(){};
	Rating.prototype.rate = 0;
	Rating.prototype.setRate = function(newrate){
	    //별점 마킹 - 클릭한 별 이하 모든 별 체크 처리
	    this.rate = newrate;
	    let items = document.querySelectorAll('.rate_radio');
	    items.forEach(function(item, idx){
	        if(idx < newrate){
	            item.checked = true;
	        }else{
	            item.checked = false;
	        }
	    });
	}
	var rating = new Rating();//별점 인스턴스 생성
	
	document.querySelector('.rating_select').addEventListener('click',function(e){
	     var elem = e.target;
	     if(elem.classList.contains('rate_radio')){
	         rating.setRate(parseInt(elem.value));
	         $('.rating').html(parseInt(elem.value));
	         $('[name=rating]').val(parseInt(elem.value));
     }
 })
})
</script>
</body>
</html>