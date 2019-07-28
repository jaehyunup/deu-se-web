$(document).ready(function() {
	var result = "${msg}";
	if (result == "regSuccess") {
		alert("게시글 등록이 완료되었습니다.");
	} else if (result == "modSuccess") {
		alert("게시글 수정이 완료되었습니다.");
	} else if (result == "delSuccess") {
		alert("게시글 삭제가 완료되었습니다.");
	}
	
})

function removeCheck() {

		 if (confirm("정말 삭제하시겠습니까??") == true){    //확인

		     document.form.submit();

		 }else{   //취소

		     return false;

		 }

};