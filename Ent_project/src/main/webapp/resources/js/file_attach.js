/**
 * 파일첨부 관련된 함수
 */
 
$('#attach-file').on('change', function(){
	//선택한 파일명을 file-name 태그에 보이게한다
	if( this.files[0] ) $('#file-name').text( this.files[0].name );
	$('#delete-file').css('display', 'inline');
});
$('#delete-file').on('click', function(){
	$('#file-name').text(''); 
	$('#delete-file').css('display', 'none');
	$('#attach-file').val(''); //실제 선택한 파일정보 없애기
	
}); 
function isImage(filename){
	//0004914318.jpg, png, gif, bmp, jpeg, PNG, JPG
	var ext = filename.substring( filename.lastIndexOf('.')+1 ).toLowerCase();
	var imgs = [ 'jpg', 'png', 'gif', 'bmp', 'jpeg' ];
	if( imgs.indexOf(ext) > -1 ) return true;
	else return false;
}
$('#delete-file').on('click', function(){
	$('#preview').html('');
});
$('#attach-file').on('change', function(){
	var attach = this.files[0];
	if( attach ){
		if( isImage(attach.name)  ){
			var img = '<img id="preview-img" src="" class="file-img" style="width:100px;" />'
			$('#preview').html(img);
			
			var reader = new FileReader();
			reader.onload = function(e){
				$('#preview-img').attr('src', e.target.result);
			}
			reader.readAsDataURL(attach);
		}else
			$('#preview').html('');
	}
});