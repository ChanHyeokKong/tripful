/**
 * 
 */

function chkSignUp() {
	if ($(".sign-up-htm").children().find("label").hasClass("error")) {
		console.log("에러 클래스 있음");
		return false;
	}
	else {
		console.log("에러 클래스 못찾음");
		return true;
	}
}

$("#pw").keyup(function() {
	if ($(this).val() == "") {
		$(this).siblings(".label").text("비밀번호");
		$(this).siblings(".label").removeClass("error");
	}
	else if ($(this).val().includes('!') || $(this).val().includes('@') || $(this).val().includes('#') || $(this).val().includes('$') ||
		$(this).val().includes('!') || $(this).val().includes('%') || $(this).val().includes('^') || $(this).val().includes('&')) {
		if ($(this).val().length >= 8 && $(this).val().length <= 16) {
			$(this).siblings(".label").text("비밀번호");
			$(this).siblings(".label").removeClass("error");
		}
		else {
			$(this).siblings(".label").text("비밀번호      8자리 이상 16자리 이하여야 합니다.");
			$(this).siblings(".label").addClass("error");
		}
	}
	else {
		$(this).siblings(".label").text("비밀번호      특수문자를 입력해주세요");
		$(this).siblings(".label").addClass("error");
	}
})
$("#birth").keyup(function() {
	// 추후 error 클래스 추가하는 방안으로 수정
	if ($(this).val().endsWith(0) || $(this).val().endsWith(1) || $(this).val().endsWith(2) || $(this).val().endsWith(3) || $(this).val().endsWith(4) || $(this).val().endsWith(5) ||
		$(this).val().endsWith(6) || $(this).val().endsWith(7) || $(this).val().endsWith(8) || $(this).val().endsWith(9)) {
	}
	else {
		$(this).val(($(this).val().slice(0, -1)));
		console.log(($(this).val().slice(0, -1)));
	}
})