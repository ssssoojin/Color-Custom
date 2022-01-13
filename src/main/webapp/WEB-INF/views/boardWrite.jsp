<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../resources/css/slick.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/slick-theme.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<style type="text/css">
html, body {
	margin: 0;
	padding: 0;
}

* {
	box-sizing: border-box;
}

.slider {
	width: 100%;
	margin: 30px auto;
}

.slick-slide {
	margin: 0px 20px;
}

.slick-slide img {
	width: 100%;
}

.slick-prev:before, .slick-next:before {
	color: black;
}

.slick-slide {
	transition: all ease-in-out .3s;
	opacity: .2;
}

.slick-active {
	opacity: .5;
}

.slick-current {
	opacity: 1;
}
</style>
</head>
<body>
	<script src="https://code.jquery.com/jquery-2.2.0.min.js"
		type="text/javascript"></script>
	<script src="../resources/js/slick.js" type="text/javascript"
		charset="utf-8"></script>
	<jsp:include page="includes/header.jsp" />
	<div class="container">
		<div class="row align-items-center">
			<div class="col-sm-6" style="display: flex;align-items: center;height: 342px;align-content: flex-start;justify-content: space-evenly;">
				<img src="http://placehold.it/180x300?text=1">
				<img src="http://placehold.it/180x300?text=2">
				<div class="col" style="display: flex;flex-direction: column;align-items: center;justify-content: space-around;height: 100%;flex-grow: 0">
					<img src="http://placehold.it/130x130?text=3">
					<img src="http://placehold.it/130x130?text=4">
				</div>
			</div>
			<div class="col-sm-6">
				<section class="regular slider">
					<div>
						<img src="http://placehold.it/350x300?text=1">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=2">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=3">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=4">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=5">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=6">
					</div>
				</section>
				<section class="regular slider">
					<div>
						<img src="http://placehold.it/350x300?text=1">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=2">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=3">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=4">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=5">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=6">
					</div>
				</section>
				<section class="regular slider">
					<div>
						<img src="http://placehold.it/350x300?text=1">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=2">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=3">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=4">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=5">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=6">
					</div>
				</section>
				<section class="regular slider">
					<div>
						<img src="http://placehold.it/350x300?text=1">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=2">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=3">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=4">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=5">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=6">
					</div>
				</section>
			</div>
		</div>
	</div>

	<jsp:include page="includes/footer.jsp" />
	<script type="text/javascript">
		$(document).on('ready', function() {
			$(".vertical-center-4").slick({
				dots : true,
				vertical : true,
				centerMode : true,
				slidesToShow : 4,
				slidesToScroll : 2
			});
			$(".vertical-center-3").slick({
				dots : true,
				vertical : true,
				centerMode : true,
				slidesToShow : 3,
				slidesToScroll : 3
			});
			$(".vertical-center-2").slick({
				dots : true,
				vertical : true,
				centerMode : true,
				slidesToShow : 2,
				slidesToScroll : 2
			});
			$(".vertical-center").slick({
				dots : true,
				vertical : true,
				centerMode : true,
			});
			$(".vertical").slick({
				dots : true,
				vertical : true,
				slidesToShow : 3,
				slidesToScroll : 3
			});
			$(".regular").slick({
				dots : true,
				infinite : true,
				slidesToShow : 3,
				slidesToScroll : 3
			});
			$(".center").slick({
				dots : true,
				infinite : true,
				centerMode : true,
				slidesToShow : 5,
				slidesToScroll : 3
			});
			$(".variable").slick({
				dots : true,
				infinite : true,
				variableWidth : true
			});
			$(".lazy").slick({
				lazyLoad : 'ondemand', // ondemand progressive anticipated
				infinite : true
			});
		});
	</script>
</body>
</html>