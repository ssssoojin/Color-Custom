<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="/resources/css/join.css">
<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
</head>
<body>
	<%--  <%@include file="../includes/header.jsp"%>  --%>
<div class="main-container">
		<div class="main-wrap">
		<header>
			<div class="logo-wrap">
				<img src="/resources/images/loginlogo.png">
			</div>
		</header>
		<section class="join-input-section-wrap">
			<div class="join-input-wrap">	
				<input placeholder="아이디" type="text"></input>
			</div>
			<div class="join-input-wrap password-wrap">	
				<input placeholder="비밀번호" type="password"></input>
			</div>
			<div class="join-input-wrap passwordcheck-wrap">
				<input placeholder="비밀번호 확인" type="password"></input>
			</div>
			<div class="join-input-wrap username-wrap">	
				<input placeholder="이름" type="text"></input>
			</div>
			<div class="gender-wrap">
			<label>남<input type="radio" name="gender" value="남"></label>
			<label>여<input type="radio" name="gender" value="여"></label>
			</div>
			<div class="join-input-wrap birth-wrap">	
				<input placeholder="생년월일" type="text"></input>
			</div>
			<div class="join-input-wrap email-wrap">	
				<input placeholder="이메일" type="email"></input>
			</div>
			<div class="join-button-wrap">
				<button>가입하기</button>
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