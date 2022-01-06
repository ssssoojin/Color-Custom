<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="/resources/css/login.css">
<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
</head>
<body>
<div class="main-container">
		<div class="main-wrap">
		<header>
			<div class="sel-lang-wrap">
				<select class="lang-select">
					<option>한국어</option>
					<option>English</option>
				</select>
			</div>
			<div class="logo-wrap">
				<img src="/resources/images/loginlogo.png">
			</div>
		</header>
		<section class="login-input-section-wrap">
			<div class="login-input-wrap">	
				<input placeholder="아이디" type="text"></input>
			</div>
			<div class="login-input-wrap password-wrap">	
				<input placeholder="비밀번호" type="password"></input>
			</div>
			<div class="login-stay-sign-in">
				<i class="far fa-check-circle"></i>
				<span>로그인 유지</span>
			</div>
			<div class="login-button-wrap">
				<button>로그인</button>
			</div>
			<div class="join-button-wrap">
				<button>회원가입</button>
			</div>
		</section>
		<footer>
			<div class="copyright-wrap">
			<span>Color Custom </span>
			<p>©2022 All Rights Reserved.</p>
			</div>
		</footer>
		</div>
	</div>
</body>
</html>