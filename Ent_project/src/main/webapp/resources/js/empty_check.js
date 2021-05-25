/**
 * 필수입력항목에 입력되어 있는지의 여부를 확인
 */
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
