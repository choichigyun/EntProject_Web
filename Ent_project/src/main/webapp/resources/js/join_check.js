/**
 * 회원가입시 항목에 대한 유효성 확인처리
 */
var join = { 
	tag_status: function(tag){
		var data = tag.val();
		tag = tag.attr('name');
		if( tag == 'id' ) data = this.id_status(data);
		else if ( tag == 'pw' ) data = this.pw_status(data);
		else if ( tag == 'pw_check' ) data = this.pw_check_status(data);
		else if ( tag == 'email' ) data = this.email_status(data);
		return data;
	},
	
	email_status: function(email){
		var reg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		if( email=='' ) return this.common.empty;
		else if( email.match(space) ) return this.common.space;
		else if( !reg.test(email) ) return this.email.invalid;
		else return this.email.valid;
	},
	
	email: {
		valid: { code:'valid', desc:'유효한 이메일입니다.' },
		invalid: { code:'invalid', desc:'이메일형식이 유효하지 않습니다.' },
	},
	
	pw_check_status: function(pw_check){
		if( pw_check=='' ) return this.common.empty;
		else if( pw_check == $('[name=pw]').val() ) return this.pw.equal;
		else return this.pw.notEqual;
	},
	
	pw_status: function(pw){
		var reg = /[^0-9a-zA-Z]/g;
		var upper = /[A-Z]/g, lower = /[a-z]/g, digit = /[0-9]/g;
		if( pw=='' ) return this.common.empty;
		else if( pw.match(space) ) return this.common.space;
		else if( reg.test(pw) ) return this.pw.invalid;
		else if( pw.length < 5 ) return this.common.min;
		else if( pw.length > 10 ) return this.common.max;
		else if( !upper.test(pw) || !lower.test(pw) 
					|| !digit.test(pw) ) return this.pw.lack;
		else return this.pw.valid;
	},
	pw: {
		equal: { code:'valid', desc:'비밀번호가 일치합니다' },
		notEqual: { code:'invalid', desc:'비밀번호가 일치하지 않습니다' },
		lack: { code:'invalid', desc:'영문 대/소문자,숫자를 모두 포함해야 합니다' },
		invalid: { code:'invalid', desc:'비밀번호는 영문대/소문자,숫자만 입력가능' },
		valid: { code:'valid', desc:'사용가능한 비밀번호입니다' }
	},
	
	common: {
		empty: { code:'invalid', desc:'입력하세요' },
		space: { code:'invalid', desc:'공백없이 입력하세요' },
		min: { code:'invalid', desc:'최소 5자이상 입력하세요' },
		max: { code:'invalid', desc:'최대 10자이하 입력하세요' },
	},
	
	id: {
		usable: { code:'valid', desc:'사용가능한 아이디입니다' },
		unUsable: { code:'invalid', desc:'이미 사용중인 아이디입니다' },
		valid: { code:'valid', desc:'아이디 중복확인하세요' },
		invalid: { code:'invalid', desc:'아이디는 영문소문자,숫자만 입력가능' }
	},
	
	id_status: function( id ){
		var reg = /[^0-9a-z]/g;
		if( id=='' ) return this.common.empty;
		else if ( id.match(space) ) return this.common.space;
		else if ( reg.test(id) ) return this.id.invalid;
		else if ( id.length < 5 ) return this.common.min; 
		else if ( id.length > 10 ) return this.common.max; 
		else return this.id.valid; 
	}
	
	
};

var space = /\s/g;

 
 