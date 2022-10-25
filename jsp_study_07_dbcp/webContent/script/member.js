// 로그인 폼 제어

function loginCheck(){
	if(document.frm.userid.value.length == 0){
		alert("아이디를 입력해 주세요");
		frm.userid.focus();
		return false;
	}
	
	if(document.frm.pwd.value.length == ""){
		alert("암호를 입력해 주세요");
		frm.pwd.focus();
		return false;
	}
	
	return true;
}

//아이디 중복체크

function idCheck(){
	
	if(document.frm.userid.value ==""){
		alert("아이디를 입력해 주세요");
		document.frm.userid.focus();
		return;
	}
	
	//중복체크를 위한 창 띄우기 스크립트 작성,
	//데이터베이스에 존재하는 아이디인지 체크하여 사용여부 판단.
	var url = "idCheck.do?userid="+document.frm.userid.value;
	window.open(url,"blank1","width=500, height=300 roolbar=no,menubar=no, resizable=no, scrollbars=yes");
		
}

//아이디 중복 체크 완료 처리를 위한 자바스크립트 함수

function idok(userid){
	opener.frm.userid.value = document.frm.userid.value;
	opener.frm.reid.value = document.frm.userid.value;
	self.close();

}

//필수항목 회원정보 유효성 체크를 위한 자바스크립트 함수

function joinCheck(){
	
	if(document.frm.name.value.length == 0){
		alert("이름을 입력하세요.");
		frm.name.focus();
		return false;
	} 
	
	if(document.frm.userid.value.length == 0){
		alert("아이디를 입력하세요.");
		frm.userid.focus();
		return false;
	} 
	
	if(document.frm.pwd.value.length == ""){
		alert("암호를 입력하세요.");
		frm.pwd.focus();
		return false;
	} 
	
	if(document.frm.pwd.value != document.frm.pwd_check.value){
		alert("암호가 일치하지 않습니다.");
		frm.pwd.focus();
		return false;
	} 
	
	if(document.frm.reid.value.length == 0){
		alert("중복체크를 하지않았습니다.");
		frm.userid.focus();
		return false;
	}
	return true;
}























