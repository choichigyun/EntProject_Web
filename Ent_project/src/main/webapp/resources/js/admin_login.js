/**
 * 
 */
function admin_login_show(){
	$("#admin-popup-background").css("display", "block");
	$("#admin_login_screen").css("display", "block");
}
function admin_enterPress(event){
	if(event.keyCode == 13){
		admin_login();
	}	
}
var num = 0;
function admin_login(){
	var admin_idCheck = $("#admin_idCheck").val();
	var admin_pwCheck = $("#admin_pwCheck").val();
	/*if(necessary()){
		alert("아이디 비밀번호를 3회이상 틀렸습니다.")
		$(admin_idCheck).val("");
		$(admin_pwCheck).val("");
		return false;
	}else */
	if(admin_idCheck == "admin" && admin_pwCheck == "admin"){
		$("#admin_login").submit();
	}else{
		alert("아이디나 비밀번호가 틀렸습니다.")
	}
	num++;
}
function necessary(){
	var need = true; 
	$('.need').each(function(){
		if( $(this).val()=='' ){
			alert($(this).attr('title') + '을(를) 입력해주세요');
			$(this).focus();
			need = false;
			return need;
		}
	});
	return need;
} 