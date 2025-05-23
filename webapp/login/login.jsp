<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Nanum+Brush+Script&family=Nanum+Myeongjo&family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<link href="./loginStyle.css" rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

<title>Insert title here</title>

</head>
<script>
	$(function(){
		
	})
</script>
<body>
	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
				for="tab-1" class="tab">Sign In</label> <input id="tab-2"
				type="radio" name="tab" class="sign-up"><label for="tab-2"
				class="tab">Sign Up</label>
			<div class="login-form">
				<div class="sign-in-htm">
					<div class="group">
						<label for="user" class="label">아이디</label> <input id="user"
							type="text" class="input">
					</div>
					<div class="group">
						<label for="pass" class="label">비밀번호</label> <input id="pass"
							type="password" class="input" data-type="password">
					</div>
					<div class="group">
						<input id="check" type="checkbox" class="check"> <label
							for="check"><span class="icon"></span> 아이디 기억</label>
					</div>
					<div class="group">
						<input type="submit" class="button" value="Sign In">
					</div>
					<div class="hr"></div>
					<div class="foot-lnk">
						<a href="#forgot">Forgot Password?</a>
					</div>
				</div>
				<div class="sign-up-htm">
					<form action="./signupAction.jsp" method="post" onsubmit="return chkSignUp()">
						<div class="group">
							<label for="user" class="label">이름</label> <input name="name"
								type="text" class="input" required="required">
						</div>
						<div class="group">
							<label for="user" class="label">아이디</label> <input name="id"
								type="text" class="input" required="required" id="id">
						</div>
						
						<div class="group">
							<label for="pass" class="label">비밀번호</label> <input name="pw"
								type="password" class="input" data-type="password" required="required" id="pw">
						</div>
						<div class="group">
							<label for="pass" class="label">이메일</label> <input
								name="email" type="email" class="input" required="required">
						</div>
						<div class="group">
							<label for="pass" class="label">생년월일</label> <input
								name="birth" type="text" class="input" required="required" id="birth">
						</div>
						<br>
						<div class="group">
							<input type="submit" class="button" value="Sign Up">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="./signupJS.js"></script>
</html>