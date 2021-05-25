<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:if test="${vo.ent_lat ne null }"></c:if>

	
  <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBkx4VJNjv1vVBXLApfjptAtJNg2ArJYQw"></script>
  <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
        <script type="text/javascript">
        var map,watchId;
        var locations = [
            ['ent1',{ lat: 35.1543, lng: 126.8862 }],
            ['ent2',{ lat: 35.1519, lng: 126.8862 }],
            ['ent3',{ lat: 35.1516, lng: 126.8862 }]
//             ['ent2',lat: 35.1543,lng: 126.8862],
//             ['ent3',lat: 35.1519,lng: 126.8865],
//             ['ent4',lat: 35.1516,lng: 126.8881],
//             ['ent5',lat: 35.1526,lng: 126.8897],
//             ['ent6',lat: 35.1545,lng: 126.8898],
//             ['ent7',lat: 35.1531,lng: 126.8871]
          ];
        console.log('1')
        function startWatchPosition() {
	        watchID = navigator.geolocation.watchPosition(success, error, options);
	        console.log('2')
        }
        function success(position){
           	var marker, i;
           	console.log('3')
        	console.log(position.coords.latitude, position.coords.longitude)
// 	        35.1535627,126.8858017
	        var mapCenter = { lat: position.coords.latitude, lng: position.coords.longitude };
// 	        var mapCenter = { lat: position.coords.latitude, lng: position.coords.longitude };
// 	        var mapCenter = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
        	console.log('map', map)
            if (!map) {
            	
                map = new google.maps.Map(document.getElementById("map"), {
                    center : mapCenter,
                    mapTypeId : google.maps.MapTypeId.ROADMAP,
                    zoom : 15
                    
                });
            }
        	console.log('4')
            var time = new Date();
            time.setTime(position.timestamp);
           	var title = time.getHours() + ":" + time.getMinutes() + ":" + time.getSeconds(); //이름
           	console.log('5')
            var marker = new google.maps.Marker({ //찍히는 좌표
                position : mapCenter,
                title : title,
                map : map
            });
           	console.log('6')
            map.setCenter(mapCenter);
           	<c:forEach var="vo" items="${list }">
           	<c:if test="${vo.ent_lat ne null }">
       		i = 1;
           	marker = new google.maps.Marker({
       			position: {lat: ${vo.ent_lat} , lng: ${vo.ent_long}},
       			map: map
       		});	
           	console.log('7')
       		var infowindow = new google.maps.InfoWindow();
       		google.maps.event.addListener(marker, 'click', (function(marker, i){
       			return function(){
       				infowindow.setContent("가게이름 : ${vo.ent_shop}<br>카테고리 : ${vo.ent_category}");
       				infowindow.open(map,marker);
       			}
       		})(marker, i));
       		console.log('8')
       		i++;
           	</c:if>
       		</c:forEach>

			
//             var infowindow = new google.map.Infowindow({content : });
           	

//            	for(i = 0; i< locations.length; i++){
//            		marker = new google.maps.Marker({
//            			position: locations[i][1],
//            			map: map
//            	});
           		
        
            
        }
        var options = {
       		  enableHighAccuracy: true,
       		  maximumAge: 30000,
       		  timeout: 27000
   		};
        

       	function error(error) {
       		alert("위치정보수집에러:" + error.message);
       	}
       	
       	
        
        
            
       </script>
</head>
<body onload="startWatchPosition()">

<h3>Shop List<a id="go">&nbsp;&nbsp;&nbsp;&nbsp;가맹점 안내</a></h3>
<h3 id="memo">현재 위치 주변의 잇따 가맹 푸드트럭을 찾아보세요</h3>

 <div id="map" style="width:1900px; height:700px">
 </div>
 <div id="gray">
 <h3 id="sub">※가맹점 사정에 따라 오차가 발생할 수 있습니다.</h3>
 </div>
 
 <div id="imagebox1" > 
 <img  id="image3" src="imgs/everywhere-img.png">
 <img  id="image5" src="imgs/userstory-yellow.png">
 <img  id="image6" src="imgs/u-ser-story3x.png">
 <img  id="image4" src="imgs/everywhere-dot.png"> 
 <img  id="image2" src="imgs/everywhere-yellow.png">
 <img  id="image1" src="imgs/eattta-is-everywhere.png">
 </div>
 <div id="imagebox2">
 <img  id="image7" src="imgs/userstory-gray.png">
 <img  id="image8" src="imgs/line-02.png">
 <img  id="image9" src="imgs/EtEt.png">
 <img  id="image10" src="imgs/Ettari.png">
 <img  id="image11" src="imgs/Ettasyung.png">
 <img  id="image12" src="imgs/the-bogi.png">
 <img  id="image13"  src="imgs/rightpointer.png" onclick="location.href='shop_story'" style="cursor: pointer;">

 
 </div>
</body>

<style type="text/css">

@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@800&family=Noto+Sans+KR:wght@700&display=swap');
#content{
	width: 1900px;
	margin: 0px auto;
	margin-top: 150px;
	font-family: 'Montserrat', sans-serif;
	font-size: 30px;
}
#memo{
	font-size: 20px;
	margin-top: -15px;
	font-family: 'Noto Sans KR', sans-serif;
}
#go{
	font-size: 18px;
	font-family: 'Noto Sans KR', sans-serif;
}
h3{
margin-left: 200px;
}
#gray{
width:1500px;
height:100px;
background-color: #e5e5e5;
margin: 0 auto;
margin-top: -10px;
}
#sub{
font-size: 10px;
color: #929292;
text-align: right;
margin-right: 100px;
padding-top: 10px;
}
#imagebox1{
box-sizing:border-box;
margin-top: 150px;
text-align: right;
position: relative;
width: 1900px;
height: 1200px;
}
#imagebox2{
box-sizing:border-box;
position: relative;
width: 1900px;
height: 1900px;
}
#image1{
width: 1400px;
height: 80px;
right: 0px;
top: -30px;
position: absolute;
}

#image2{
width: 1700px;
right:0px;
top:0px;
height: 150px;
position: absolute;
}

#image3{
width: 1500px;
height: 800px;
left: 0px;
top: 67px;
position: absolute;
}
#image4{
width: 650px;
height: 650px;
right: 0px;
top: 510px;
position: absolute;
}
#image5{
width: 1900px;
height: 100px;
top: 1100px;
left: 0px;
position: absolute;
}
#image6{
width: 300px;
height: 38px;
top: 1130px;
left: 250px;
position: absolute;
}
#image7{
width: 1900px;
height: 40px;
top: 0px;
left: 0px;
position: absolute;
}
#image8{
width: 5px;
height: 2060px;
top: 40px;
left: 947.5px;
position: absolute;
}
#image9{
width: 1000px;
height: 400px;
top: 200px;
left: 660px;
position: absolute;
}
#image10{
width: 1000px;
height: 400px;
top: 1060px;
left: 660px;
position: absolute;
}
#image11{
width: 1000px;
height: 400px;
top: 637px;
left: 250px;
position: absolute;
} 

#image12{
width: 80px;
height: 30px;
top: 1611px;
left: 1600px;
position: absolute;
}
#image13{
width: 90px;
height: 90px;
top: 1587px;
left: 1691px;
position: absolute;
}


</style>
</html>