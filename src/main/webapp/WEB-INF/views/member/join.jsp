<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="/resources/css/join.css">
<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>
	<%--  <%@include file="../includes/header.jsp"%>  --%>
<div class="main-container">
<form id="join_form" method="post">
		<div class="main-wrap">
		<header>
			<div class="logo-wrap">
				<img src="/resources/images/loginlogo.png">
			</div>
		</header>
		<section class="join-input-section-wrap">
			<div class="join-input-wrap">	
				<input placeholder="아이디" type="text" name="userId"></input>
			</div>
			<div class="join-input-wrap password-wrap">	
				<input placeholder="비밀번호" type="password" name="userPwd"></input>
			</div>
			<div class="join-input-wrap passwordcheck-wrap">
				<input placeholder="비밀번호 확인" type="password" ></input>
			</div>
			<div class="join-input-wrap username-wrap">	
				<input placeholder="이름" type="text" name="userName"></input>
			</div>
			<div class="gender-wrap">
			<label>남<input type="radio" name="userSex" value="남"></label>
			<label>여<input type="radio" name="userSex" value="여"></label>
			</div>
			<div class="join-input-wrap birth-wrap">	
				<input placeholder="생년월일" type="date" name="userBirth"></input>
			</div>
			<div class="join-input-wrap email-wrap">	
				<input placeholder="이메일" type="email" name="userEmail"></input>
			</div>
			<div class="join-button-wrap">
				<input type="button" class="join_button" value="가입하기">
			</div>
		</section>
		<footer>
			<div class="copyright-wrap">
			<span>Color Custom </span>
			<p>©2022 All Rights Reserved.</p>
			</div>
		</footer>
		</div>
		</form>
	</div>
<script>

$(document).ready(function(){
	//회원가입 버튼(회원가입 기능 작동)
	$(".join_button").click(function(){
		$("#join_form").attr("action", "/member/join");
		$("#join_form").submit();
	});
});

</script>
</body>
</html>