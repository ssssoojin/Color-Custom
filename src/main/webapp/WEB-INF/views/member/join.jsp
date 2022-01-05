<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="/resources/css/login.css" />
</head>
<body>
	<%@include file="../includes/header.jsp"%>

	<div class="container">

		<div class="intro">
			<div class="side side-left">
				<div class="intro-content">
					<div class="profile"></div>
					<h1>
						<span>Toby Blue </span><span>Web Designer</span>
					</h1>
				</div>
				<div class="overlay"></div>
			</div>
			<div class="side side-right">
				<div class="intro-content">
					<div class="profile"></div>
					<div class="login_wrap">
						<form action="loginProc.doaction" method="post">
							<ul class="login_frm">
								<li class="id"><input type="text" class="id" name="userid"
									placeholder="아이디"></li>
								<li class="pwd"><input type="password" class="pwd" name="userpwd"
									placeholder="비밀번호"></li>
								<li class="keep"><input type="checkbox" class="keep">로그인 상태 유지</li>
							
								<li class="login"><a href="#">로그인</a></li>
								<li class="join"><a href="#">회원가입</a></li>
							</ul>
						</form>
					</div>
				</div>
				<div class="overlay"></div>
			</div>
		</div>
		<!-- /intro -->
		<div class="page page-right page-large">
			<div class="page-inner">
				<section>
					<!-- content -->
				</section>
				<section>
					<!-- content -->
				</section>
				<!-- ... -->
			</div>
			<!-- /page-inner -->
		</div>
		<!-- /page-right -->
		<div class="page page-left page-fill">
			<div class="page-inner">
				<!-- ... -->
			</div>
			<!-- /page-inner -->
		</div>
		<!-- /page-left -->
		<a href="#" class="back back-right" title="back to intro">→</a> <a
			href="#" class="back back-left" title="back to intro">←</a>

	</div>
	<!-- /container -->
	<script type="text/javascript">
		var splitlayout = document.getElementById('splitlayout'), leftSide = splitlayout
				.querySelector('div.intro > div.side-left'), rightSide = splitlayout
				.querySelector('div.intro > div.side-right'), pageLeft = splitlayout
				.querySelector('div.page-left'), pageRight = splitlayout
				.querySelector('div.page-right');

		// back to intro
		// after transition ends:
		var onEndTransFn = function() {
			this.removeEventListener(transEndEventName, onEndTransFn);
			classie.add(splitlayout, 'reset-layout');
			document.body.scrollTop = document.documentElement.scrollTop = 0;
		}, backToIntro = function(ev) {
			ev.preventDefault();
			ev.stopPropagation();
			var dir = classie.has(ev.target, 'back-right') ? 'left' : 'right', page = dir === 'right' ? pageRight
					: pageLeft;
			classie.remove(splitlayout, 'open-' + dir);
			classie.add(splitlayout, 'close-' + dir);
			page.addEventListener(transEndEventName, onEndTransFn);
		};

		function reset() {
			classie.remove(splitlayout, 'close-right');
			classie.remove(splitlayout, 'close-left');
			classie.remove(splitlayout, 'reset-layout');
		}
	</script>
	<%@include file="../includes/footer.jsp"%>
</body>
</html>